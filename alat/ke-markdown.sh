#!/usr/bin/env bash
set -euo pipefail
[[ $# -ge 1 && $# -le 2 ]] || { echo "Pakai: bash alat/ke-markdown.sh sumber.docx [keluaran.baru.md]" >&2; exit 2; }
masuk="$1"; keluaran="${2:-${masuk%.*}.baru.md}"
[[ -f "$masuk" ]] || { echo "Berkas tidak ada: $masuk" >&2; exit 1; }
[[ "$masuk" != *.pdf ]] || { echo "Untuk PDF pakai alat/ocr.sh." >&2; exit 1; }
[[ ! -e "$keluaran" ]] || { echo "Keluaran sudah ada: $keluaran" >&2; exit 1; }
command -v pandoc >/dev/null || { echo "Pandoc belum terpasang." >&2; exit 1; }
pandoc "$masuk" --to=markdown+footnotes+pipe_tables --wrap=none -o "$keluaran"
echo "Periksa hasil sebelum dipakai: $keluaran"
