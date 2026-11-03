#!/usr/bin/env bash
set -euo pipefail
[[ $# -ge 1 && $# -le 3 ]] || { echo "Pakai: bash alat/build.sh naskah.md [docx|pdf|epub|html] [keluaran]" >&2; exit 2; }
masuk="$1"; format="${2:-docx}"; keluaran="${3:-${masuk%.md}.$format}"
[[ -f "$masuk" ]] || { echo "Berkas tidak ada: $masuk" >&2; exit 1; }
command -v pandoc >/dev/null || { echo "Pandoc belum terpasang." >&2; exit 1; }
[[ ! -e "$keluaran" ]] || { echo "Keluaran sudah ada: $keluaran (pilih nama lain)." >&2; exit 1; }
opsi=()
if [[ "$format" == "pdf" ]]; then
  command -v tectonic >/dev/null || { echo "Tectonic belum terpasang." >&2; exit 1; }
  opsi+=(--pdf-engine=tectonic)
fi
pandoc "$masuk" --from=markdown+footnotes+pipe_tables "${opsi[@]+"${opsi[@]}"}" -o "$keluaran"
echo "Selesai: $keluaran"
