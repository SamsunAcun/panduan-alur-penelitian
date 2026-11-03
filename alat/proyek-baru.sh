#!/usr/bin/env bash
set -euo pipefail
[[ $# -eq 1 ]] || { echo "Pakai: bash alat/proyek-baru.sh /jalur/proyek-baru" >&2; exit 2; }
tujuan="$1"
[[ ! -e "$tujuan" ]] || { echo "Tujuan sudah ada: $tujuan" >&2; exit 1; }
command -v git >/dev/null || { echo "Git belum terpasang." >&2; exit 1; }
asal="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mkdir -p "$tujuan"
cp -R "$asal/contoh-proyek/." "$tujuan/"
cp "$asal/.gitignore" "$tujuan/.gitignore"
git -C "$tujuan" init -b main
echo "Proyek baru siap: $tujuan"
echo "Buka README.md, isi brief, lalu git add dan git commit setelah diperiksa."
