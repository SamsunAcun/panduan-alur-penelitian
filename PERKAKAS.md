# Alat yang dibutuhkan

Pasang alat sesuai tahap yang akan dipakai. Semua alat di bawah dapat diganti dengan aplikasi yang setara jika fungsi dan hasilnya Anda periksa.

| Tingkat | Alat | Fungsi |
|---|---|---|
| Wajib untuk tutorial | Git | Riwayat perubahan dan berbagi repositori |
| Wajib untuk tutorial | Terminal atau aplikasi Git | Menjalankan perintah Git dan melihat perubahan |
| Wajib untuk menulis | Editor Markdown atau editor teks | Menyunting naskah `.md` |
| Saat membuat DOCX, HTML, atau EPUB | Pandoc | Mengubah Markdown ke format keluaran |
| Saat membuat PDF langsung | Tectonic bersama Pandoc, atau LibreOffice dari DOCX | Membuat PDF dan memeriksa tata letak |
| Saat mengelola sitasi | Zotero dan Better BibTeX | Mengelola metadata dan kunci sitasi |
| Saat membaca PDF berlapis teks | Poppler (`pdftotext`, `pdfinfo`) | Mengambil teks dan memeriksa halaman |
| Saat membaca PDF pindaian | Tesseract, Docling, Python 3 | OCR dan ekstraksi struktur; hasil tetap harus diperiksa |
| Sesuai kebutuhan | qpdf, ocrmypdf | Memecah atau memberi lapisan teks pada PDF |

## Pasang otomatis pada macOS

```bash
bash alat/pasang-macos.sh --gui
```

Skrip memasang Git, Pandoc, Tectonic, Poppler, Tesseract serta data bahasa Indonesia, qpdf, ocrmypdf, pipx, dan Docling. Opsi `--gui` juga memasang Zotero dan LibreOffice. [Homebrew](https://brew.sh/) harus tersedia lebih dulu. Buka Terminal baru setelah pemasangan.

**Better BibTeX** dipasang dari [situs resminya](https://retorque.re/zotero-better-bibtex/) melalui Zotero. Ekspor koleksi sebagai Better CSL JSON dengan pembaruan otomatis. Editor Markdown dapat dipilih sendiri. Skrip pemasangan ini khusus macOS; pada sistem lain pasang alat menurut dokumentasi resminya dan jalankan `bash alat/periksa.sh`.

## Periksa pemasangan

```bash
git --version
pandoc --version
python3 --version
pdftotext -v
tesseract --version
```

Jika sebuah perintah belum tersedia, pasang dari sumber resmi alat itu untuk sistem operasi Anda. Untuk latihan Git pertama, cukup perintah `git --version` yang harus berhasil.

Pemeriksaan lengkap untuk alur OCR: `bash alat/periksa.sh`.

## Contoh ekspor dokumen

Dari root proyek hasil `proyek-baru.sh`:

```bash
pandoc 02-NASKAH/draf.md -o 06-KELUARAN/naskah.docx
pandoc 02-NASKAH/draf.md --pdf-engine=tectonic -o 06-KELUARAN/naskah.pdf
```

Perintah PDF kedua memerlukan Tectonic. Selalu buka hasilnya untuk memeriksa tabel, catatan kaki, sitasi, dan halaman.

Perintah kerja lengkap ada di [panduan `alat/`](alat/README.md).
