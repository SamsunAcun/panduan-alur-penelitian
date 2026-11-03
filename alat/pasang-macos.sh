#!/usr/bin/env bash
# Pasang dependensi alur penelitian pada macOS. Jalankan setelah Homebrew tersedia.
set -euo pipefail
[[ "$(uname -s)" == "Darwin" ]] || { echo "Skrip ini khusus macOS." >&2; exit 1; }
command -v brew >/dev/null || { echo "Pasang Homebrew dari https://brew.sh lalu jalankan lagi." >&2; exit 1; }

for paket in git pandoc tectonic poppler tesseract tesseract-lang qpdf ocrmypdf pipx; do
  if brew list --versions "$paket" >/dev/null 2>&1; then
    echo "Sudah ada: $paket"
  else
    brew install "$paket"
  fi
done

if ! command -v docling >/dev/null 2>&1 && [[ ! -x "$HOME/.local/bin/docling" ]]; then
  pipx install docling
fi
pipx ensurepath

if [[ "${1:-}" == "--gui" ]]; then
  for aplikasi in zotero libreoffice; do
    if brew list --cask --versions "$aplikasi" >/dev/null 2>&1; then
      echo "Sudah ada: $aplikasi"
    else
      brew install --cask "$aplikasi"
    fi
  done
fi

echo "Pemasangan selesai. Buka Terminal baru lalu jalankan: bash alat/periksa.sh"
echo "Better BibTeX dipasang dari https://retorque.re/zotero-better-bibtex/ di Zotero."
