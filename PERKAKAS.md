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

## Periksa pemasangan

```bash
git --version
pandoc --version
python3 --version
pdftotext -v
tesseract --version
```

Jika sebuah perintah belum tersedia, pasang dari sumber resmi alat itu untuk sistem operasi Anda. Untuk latihan Git pertama, cukup perintah `git --version` yang harus berhasil.

## Contoh ekspor dokumen

Dari folder yang berisi naskah Markdown:

```bash
pandoc 02-NASKAH.md -o naskah.docx
pandoc 02-NASKAH.md --pdf-engine=tectonic -o naskah.pdf
```

Perintah PDF kedua memerlukan Tectonic. Selalu buka hasilnya untuk memeriksa tabel, catatan kaki, sitasi, dan halaman.
