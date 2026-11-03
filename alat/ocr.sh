#!/usr/bin/env bash
set -euo pipefail
[[ $# -ge 1 && $# -le 4 ]] || { echo "Pakai: bash alat/ocr.sh sumber.pdf [--tanpa-ocr|--bahasa ind|eng] [keluaran.baru.md]" >&2; exit 2; }
pdf="$1"; shift
[[ -f "$pdf" && "$pdf" == *.pdf ]] || { echo "Masukan harus PDF yang ada." >&2; exit 1; }
bahasa="ind"; tanpa=0; keluaran="${pdf%.pdf}.baru.md"
while [[ $# -gt 0 ]]; do
  case "$1" in
    --tanpa-ocr) tanpa=1; shift ;;
    --bahasa) [[ $# -ge 2 ]] || exit 2; bahasa="$2"; shift 2 ;;
    *) keluaran="$1"; shift; [[ $# -eq 0 ]] || exit 2 ;;
  esac
done
[[ ! -e "$keluaran" ]] || { echo "Keluaran sudah ada: $keluaran" >&2; exit 1; }
if command -v docling >/dev/null 2>&1; then
  docling_cmd="$(command -v docling)"
elif [[ -x "$HOME/.local/bin/docling" ]]; then
  docling_cmd="$HOME/.local/bin/docling"
else
  echo "Docling belum terpasang." >&2; exit 1
fi
if [[ "$tanpa" -eq 0 ]]; then
  command -v tesseract >/dev/null || { echo "Tesseract belum terpasang." >&2; exit 1; }
  tesseract --list-langs 2>/dev/null | grep -qx "$bahasa" || { echo "Bahasa OCR $bahasa belum terpasang." >&2; exit 1; }
fi
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
cmd=("$docling_cmd")
if "$docling_cmd" --help | grep -q 'convert'; then cmd+=(convert); fi
opsi=(--to md --output "$tmp")
if [[ "$tanpa" -eq 1 ]]; then
  opsi+=(--no-ocr)
else
  opsi+=(--ocr-engine tesseract --ocr-lang "$bahasa" --force-ocr)
fi
"${cmd[@]}" "$pdf" "${opsi[@]}"
hasil="$tmp/$(basename "${pdf%.pdf}").md"
[[ -s "$hasil" ]] || { echo "Docling tidak menghasilkan Markdown." >&2; exit 1; }
mv "$hasil" "$keluaran"
echo "Periksa teks dan nomor halaman terhadap PDF asli: $keluaran"
