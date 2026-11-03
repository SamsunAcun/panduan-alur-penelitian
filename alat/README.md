# Alat kerja

Jalankan contoh dari root repositori. Skrip menerima jalur berkas, sehingga dapat dipakai untuk proyek milik Anda di lokasi lain.

Buat folder proyek tersendiri tanpa isi penelitian orang lain:

```bash
bash alat/proyek-baru.sh "$HOME/riset-saya"
```

Perintah ini membuat folder baru, menyalin template kosong, dan menginisialisasi Git. Ia menolak menimpa folder yang sudah ada.

## Pasang dan periksa

```bash
bash alat/pasang-macos.sh --gui
bash alat/periksa.sh
```

Homebrew harus tersedia lebih dulu. Opsi `--gui` memasang Zotero dan LibreOffice. Better BibTeX dipasang melalui Zotero; lihat [daftar alat](../PERKAKAS.md). Docling dapat mengunduh model saat pertama kali memproses PDF.

## Markdown ke dokumen

```bash
bash alat/build.sh contoh-proyek/02-NASKAH.md docx
bash alat/build.sh contoh-proyek/02-NASKAH.md pdf
```

Hasil ditulis di samping naskah. Skrip tidak menimpa keluaran yang sudah ada. Untuk mengubah sumber non-PDF ke Markdown:

```bash
bash alat/ke-markdown.sh dokumen.docx
```

Hasilnya bernama `dokumen.baru.md`. Bandingkan dengan sumber asli sebelum dipakai.

## PDF ke Markdown

PDF pindaian:

```bash
bash alat/ocr.sh sumber.pdf --bahasa ind
```

PDF dengan lapisan teks yang benar:

```bash
bash alat/ocr.sh sumber.pdf --tanpa-ocr
```

Hasilnya `sumber.baru.md`. Pilih `--bahasa eng` untuk OCR bahasa Inggris. Periksa nomor halaman cetak, tabel, angka, kutipan, dan catatan kaki terhadap PDF asli. Urutan halaman PDF bisa berbeda dari nomor halaman cetak.

## Sitasi

Di Zotero, pasang Better BibTeX. Ekspor koleksi sebagai **Better CSL JSON** dengan pembaruan otomatis ke `referensi.json` di folder kerja Anda. Masukkan kunci sitasi yang benar dari Zotero ke naskah, misalnya `[@kunciDariZotero]`. Lalu:

```bash
bash alat/sitasi.sh naskah.md referensi.json
bash alat/sitasi.sh naskah.md referensi.json gaya.csl hasil.docx
```

Tanpa berkas CSL, Pandoc memakai gaya bawaannya. Untuk gaya jurnal tertentu, unduh berkas CSL yang sesuai dan berikan jalurnya sebagai argumen ketiga. Periksa hasil sitasi dan daftar pustaka, terutama sumber hukum dan nomor halaman.

`referensi.json` diabaikan oleh Git dalam tutorial ini karena dapat berisi metadata koleksi pribadi. Cadangkan pustaka Zotero secara terpisah.
