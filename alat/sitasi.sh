#!/usr/bin/env bash
set -euo pipefail
[[ $# -ge 2 && $# -le 4 ]] || { echo "Pakai: bash alat/sitasi.sh naskah.md referensi.json [gaya.csl] [keluaran.docx]" >&2; exit 2; }
naskah="$1"; bib="$2"; csl="${3:-}"; keluaran="${4:-${naskah%.md}-sitasi.docx}"
if [[ $# -eq 3 && "$csl" != *.csl ]]; then
  keluaran="$csl"
  csl=""
fi
[[ -f "$naskah" && -f "$bib" ]] || { echo "Naskah atau bibliografi tidak ada." >&2; exit 1; }
[[ ! -e "$keluaran" ]] || { echo "Keluaran sudah ada: $keluaran" >&2; exit 1; }
command -v pandoc >/dev/null || { echo "Pandoc belum terpasang." >&2; exit 1; }
opsi=(--citeproc --bibliography="$bib")
if [[ -n "$csl" ]]; then
  [[ -f "$csl" ]] || { echo "Gaya CSL tidak ada: $csl" >&2; exit 1; }
  opsi+=(--csl="$csl")
fi
if [[ "$keluaran" == *.pdf ]]; then
  command -v tectonic >/dev/null || { echo "Tectonic belum terpasang." >&2; exit 1; }
  opsi+=(--pdf-engine=tectonic)
fi
pandoc "$naskah" --from=markdown+footnotes+pipe_tables "${opsi[@]+"${opsi[@]}"}" -o "$keluaran"
echo "Periksa sitasi dan daftar pustaka: $keluaran"
