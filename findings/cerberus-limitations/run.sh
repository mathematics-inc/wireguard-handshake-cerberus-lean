#!/bin/sh
# Run every reproducer natively and through Cerberus-Lean, one line per case.
#
#   ./run.sh PREFIX [CASE-FILE...]
#
# PREFIX is a Cerberus-Lean installation: PREFIX/bin/cerberus (the OCaml
# frontend, used to parse C to Cabs JSON) and PREFIX/bin/cerberus-lean.
# Each Cerberus-Lean step is limited to 300 seconds.
# Each case is compiled natively with clang-19 and gcc and run; then
# preprocessed with clang-19 (-D__cerb__), parsed, elaborated
# (cerberus-lean --pp-core) and executed (cerberus-lean --batch --first).
# A file with '#if UNIT == N' blocks is a program of several translation
# units: each unit is compiled (or parsed) separately and the units are
# linked. The output columns are: case, clang-19, gcc, Cerberus-Lean
# outcome, seconds spent in Cerberus-Lean, and the first line of its report.
# "pass" means main returned 0 (natively), or Defined with value
# Specified(0) and not blocked (Cerberus-Lean).
set -u
prefix=$(cd "$1" && pwd); shift
here=$(cd "$(dirname "$0")" && pwd)
[ $# -gt 0 ] || set -- "$here"/cases/*.c
switches=PNVI_ae_udi,permissive_pointer_arith
native="-std=gnu11 -O2 -fno-strict-aliasing -fno-strict-overflow -ftrivial-auto-var-init=zero -funsigned-char -fshort-wchar -w"
model="--target=x86_64-linux-gnu -std=gnu11 -O2 -fno-strict-aliasing -funsigned-char -fshort-wchar -nostdinc"
fuel=1000000
work=$(mktemp -d); trap 'rm -rf "$work"' EXIT
forward="$work/forward.sh"
printf '#!/bin/sh\nfor f; do :; done\ncat "$f"\n' > "$forward"; chmod +x "$forward"

first_line() { sed -e 's|/[^ ]*/||g' "$1" | grep -v '^Time spent' | grep -v '^ *$' | head -n 1 | cut -c1-160; }

for file in "$@"; do
	name=$(basename "$file" .c)
	cases=$(grep -o 'CASE == [0-9]*' "$file" | awk '{print $3}' | sort -nu)
	[ -n "$cases" ] || cases=1
	echo "$cases" | grep -qx 1 || cases="1 $cases"
	units=$(grep -o 'UNIT == [0-9]*' "$file" | awk '{print $3}' | sort -nu)
	[ -n "$units" ] || units=0
	for c in $cases; do
		d="$work/$name-$c"; mkdir -p "$d"
		row="$name case $c"
		for cc in clang-19 gcc; do
			objs=""; out=pass
			for u in $units; do
				$cc $native -DCASE=$c -DUNIT=$u -c "$file" -o "$d/$cc-$u.o" 2>/dev/null || { out=compile-error; break; }
				objs="$objs $d/$cc-$u.o"
			done
			if [ $out = pass ]; then
				if $cc $objs -o "$d/$cc" 2>/dev/null; then
					"$d/$cc" >/dev/null 2>&1 || out="exit-$?"
				else out=link-error; fi
			fi
			row="$row	$out"
		done
		jsons=""; lean=""
		for u in $units; do
			clang-19 $model -D__cerb__ -DCASE=$c -DUNIT=$u -E "$file" -o "$d/u$u.i" 2>"$d/err" || { lean=preprocess-error; break; }
			if ! "$prefix/bin/cerberus" --runtime="$prefix" --cpp="$forward" --cabs-json "$d/u$u.i" >"$d/u$u.json" 2>"$d/err" || [ -s "$d/err" ]; then
				lean="parse-error"; break
			fi
			jsons="$jsons $d/u$u.json"
		done
		start=$(date +%s.%N); detail=""
		if [ -z "$lean" ]; then
			if ! LEAN_ABORT_ON_PANIC=1 timeout 300 "$prefix/bin/cerberus-lean" --pp-core --switches $switches --runtime "$prefix" $jsons >"$d/out" 2>"$d/err" || [ -s "$d/err" ]; then
				lean=elaborate-error
			else
				LEAN_ABORT_ON_PANIC=1 timeout 300 "$prefix/bin/cerberus-lean" --batch --first --switches $switches --runtime "$prefix" --fuel $fuel $jsons >"$d/out" 2>"$d/err"
				if grep -q '^Defined {value: "Specified(0)"' "$d/out" && grep -q 'blocked: "false"' "$d/out"; then lean=pass
				elif grep -q '^Defined' "$d/out"; then lean=wrong-value
				elif grep -q '^Undefined' "$d/out"; then lean=undefined
				else lean=execute-error; fi
			fi
		fi
		end=$(date +%s.%N)
		[ "$lean" = pass ] || { if [ -s "$d/err" ]; then detail=$(first_line "$d/err"); else detail=$(first_line "$d/out"); fi; }
		printf '%s\t%s\t%.1f\t%s\n' "$row" "$lean" "$(echo "$end - $start" | bc)" "$detail"
	done
done
