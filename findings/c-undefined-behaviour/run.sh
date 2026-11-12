#!/bin/sh
# Build and run each reproducer natively (clang, gcc, with and without
# UBSan) and through Cerberus-Lean, and print one line per observation.
#
# Usage: sh run.sh CERBERUS_PREFIX [OUT]
#   CERBERUS_PREFIX contains bin/cerberus and bin/cerberus-lean.
#   OUT (default: a new temporary directory) keeps every output.
# Environment: CLANG (default clang-19), GCC (default gcc).
set -u
prefix=${1:?usage: sh run.sh CERBERUS_PREFIX [OUT]}
here=$(cd "$(dirname "$0")" && pwd)
out=${2:-$(mktemp -d)}
mkdir -p "$out"
CLANG=${CLANG:-clang-19}
GCC=${GCC:-gcc}
SWITCHES=PNVI_ae_udi,permissive_pointer_arith

# name | units (space-separated "file:flags" pairs, flags comma-separated)
# | optional extra native flag set, run in addition to the standard ones
cases='
tai64n-misaligned|tai64n-unaligned-store.c:-DOFFSET=1
tai64n-aligned|tai64n-unaligned-store.c:-DOFFSET=0
memneq-unaligned-word|memneq-unaligned-word.c:
memcmp-implicit-conversion|memcmp-implicit-conversion.c:
pointer-sign-argument|pointer-sign-argument.c:
ptr-err-conversion|ptr-err-conversion.c:
ptr-err-unsigned-form|ptr-err-conversion.c:-DUNSIGNED_ONLY
reserved-name-memcmp-one-unit|reserved-name-memcmp.c:|-ffreestanding
reserved-name-memcmp-two-units|reserved-name-memcmp.c:-DCALLER_ONLY reserved-name-memcmp.c:-DDEFINITION_ONLY|-ffreestanding
word-at-a-time-overread|word-at-a-time-overread.c:
'

expected_for() {
	case $1 in
	tai64n-*) echo tai64n-unaligned-store.expected ;;
	ptr-err-*) echo ptr-err-conversion.expected ;;
	reserved-name-memcmp-*) echo reserved-name-memcmp.expected ;;
	*) echo "$1.expected" ;;
	esac
}

native() { # name compiler extra-flags units...
	name=$1 cc=$2 extra=$3; shift 3
	exe="$out/$name.$cc$(echo "$extra" | tr -c 'a-z0-9\n' '_' | tr -d '\n')"
	set --
	for unit in $units; do
		file=${unit%%:*} flags=$(echo "${unit#*:}" | tr ',' ' ')
		set -- "$@" "$exe.$(basename "$file" .c)$(echo "$flags" | tr -c 'A-Za-z0-9' '_').o"
		$cc -std=c11 -O0 -g $extra $flags -c "$here/repro/$file" -o "$exe.$(basename "$file" .c)$(echo "$flags" | tr -c 'A-Za-z0-9' '_').o" 2>"$exe.cc.stderr" ||
			{ echo "  $cc $extra: compile error: $(head -1 "$exe.cc.stderr")"; return; }
		warn=$(grep -c 'warning:' "$exe.cc.stderr")
		[ "$warn" -gt 0 ] && echo "  $cc $extra: $(grep 'warning:' "$exe.cc.stderr" | head -1 | sed 's#^.*/repro/##')"
	done
	$cc $extra "$@" -o "$exe" 2>>"$exe.cc.stderr" || { echo "  $cc $extra: link error"; return; }
	"$exe" >"$exe.stdout" 2>"$exe.stderr"; code=$?
	if cmp -s "$exe.stdout" "$here/repro/$expected"; then same='stdout == expected'; else same='stdout DIFFERS'; fi
	report=$(grep -m1 -e 'runtime error' -e 'ERROR: AddressSanitizer' "$exe.stderr" | sed 's#^.*/repro/##; s#^==[0-9]*==##')
	echo "  $cc $extra: exit $code, $same${report:+, $report}"
}

echo "$cases" | while IFS='|' read -r name units extra_native; do
	[ -n "$name" ] || continue
	expected=$(expected_for "$name")
	echo "$name"
	for cc in "$CLANG" "$GCC"; do
		native "$name" "$cc" "-Wall"
		native "$name" "$cc" "-fsanitize=undefined -fno-sanitize-recover=all"
	done
	if [ "$CLANG" != none ]; then
		native "$name" "$CLANG" "-fsanitize=alignment -fsanitize=pointer-overflow -fno-sanitize-recover=all"
		native "$name" "$CLANG" "-fsanitize=address"
	fi
	if [ -n "$extra_native" ]; then
		native "$name" "$CLANG" "-Wall $extra_native"
		native "$name" "$GCC" "-Wall $extra_native"
	fi
	jsons=
	i=0
	failed=
	for unit in $units; do
		file=${unit%%:*} flags=$(echo "${unit#*:}" | tr ',' ' ')
		json="$out/$name.$i.cabs.json"
		# shellcheck disable=SC2086
		"$prefix/bin/cerberus" --runtime="$prefix" $flags --cabs-json "$here/repro/$file" >"$json" 2>"$json.stderr"
		if [ $? -ne 0 ] || [ -s "$json.stderr" ]; then
			echo "  cerberus parse: $(head -c 400 "$json.stderr" | tr '\n' ' ' | sed 's#[^ ]*/repro/##g')"
			failed=1
		fi
		jsons="$jsons $json"
		i=$((i + 1))
	done
	[ -n "$failed" ] && continue
	# shellcheck disable=SC2086
	LEAN_ABORT_ON_PANIC=1 timeout 600 "$prefix/bin/cerberus-lean" --batch --first \
		--switches "$SWITCHES" --fuel 10000000 --runtime "$prefix" $jsons \
		>"$out/$name.lean.stdout" 2>"$out/$name.lean.stderr"
	code=$?
	verdict=$(head -c 600 "$out/$name.lean.stdout" | tr '\n' ' ')
	[ -n "$verdict" ] || verdict="(no verdict) $(head -c 400 "$out/$name.lean.stderr" | tr '\n' ' ')"
	echo "  cerberus-lean: exit $code: $verdict"
done
echo "outputs: $out"
