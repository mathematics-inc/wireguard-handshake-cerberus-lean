#!/bin/sh
# Compare a Cerberus-Lean verdict with the expected run.
#
# Usage: test/compare.sh VERDICT [STDERR]
#   VERDICT  the verdict printed by the run (a file, or - for stdin)
#   STDERR   the run's standard error, which must be empty (optional)
#
# The expected verdict is that the program returns 0, prints exactly
# expected/handshake.stdout and writes nothing to standard error:
#   Defined {value: "Specified(0)", stdout: "...", stderr: "", blocked: "false"}
# with the expected output written as a C string literal (\\, \" and \n
# escaped; the expected output is printable ASCII).
set -eu
root=$(cd "$(dirname "$0")/.." && pwd)
expected=$root/expected/handshake.stdout
verdict=$1

fail() {
	echo "FAIL $*" >&2
	exit 1
}

[ -s "$expected" ] || fail "missing $expected"
[ "$(tail -c 1 "$expected" | od -An -c | tr -d ' ')" = '\n' ] || fail "$expected must end with a newline"
! LC_ALL=C grep -q '[^ -~]' "$expected" || fail "$expected must be printable ASCII"

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
{
	printf 'Defined {value: "Specified(0)", stdout: "'
	sed -e 's/\\/\\\\/g' -e 's/"/\\"/g' "$expected" | awk '{ printf "%s\\n", $0 }'
	printf '", stderr: "", blocked: "false"}\n'
} >"$tmp/expected.verdict"
if [ "$verdict" = - ]; then cat >"$tmp/actual.verdict"; else cp "$verdict" "$tmp/actual.verdict"; fi

if [ $# -gt 1 ] && [ -s "$2" ]; then
	head -c 2000 "$2" >&2
	fail "the run wrote to standard error ($2)"
fi
if cmp -s "$tmp/expected.verdict" "$tmp/actual.verdict"; then
	echo "PASS Defined, exit 0, output equals expected/handshake.stdout ($(wc -l <"$expected") lines)"
else
	head -c 2000 "$tmp/actual.verdict" >&2
	echo >&2
	fail "the verdict differs from the expected one"
fi
