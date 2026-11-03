#!/usr/bin/env bash
set -euo pipefail
gagal=0
for nama in git pandoc tectonic pdftotext pdfinfo tesseract qpdf ocrmypdf pipx; do
  if command -v "$nama" >/dev/null 2>&1; then
    printf 'OK     %s\n' "$nama"
  else
    printf 'BELUM  %s\n' "$nama"
    gagal=1
  fi
done
if command -v docling >/dev/null 2>&1 || [[ -x "$HOME/.local/bin/docling" ]]; then
  echo "OK     docling"
else
  echo "BELUM  docling"
  gagal=1
fi
if command -v tesseract >/dev/null 2>&1; then
  if tesseract --list-langs 2>/dev/null | grep -q '^ind$'; then
    echo "OK     bahasa OCR Indonesia (ind)"
  else
    echo "BELUM  bahasa OCR Indonesia (ind)"
    gagal=1
  fi
fi
exit "$gagal"
