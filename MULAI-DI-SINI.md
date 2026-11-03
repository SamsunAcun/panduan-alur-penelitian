# Mulai penelitian dengan repositori ini

Panduan singkat ini memakai **macOS**. Ketik perintah di Terminal satu blok per langkah. Repositori ini berisi alat dan contoh kosong; penelitian Anda dibuat di folder tersendiri.

Jika AI Anda dapat menjalankan Terminal dan mengelola berkas lokal, gunakan [satu prompt setup dari awal](SETUP-SEKALI-DENGAN-AI.md). Langkah di bawah dapat dipakai jika Anda ingin memasang sendiri atau memeriksa pekerjaan AI.

## 1. Ambil alat dan buat proyek

```bash
cd "$HOME"
git clone https://github.com/SamsunAcun/panduan-alur-penelitian.git alat-penelitian
cd alat-penelitian
bash alat/pasang-macos.sh --gui
```

Jika Homebrew belum terpasang, skrip memberi petunjuk untuk memasangnya. Setelah pemasangan selesai, **buka Terminal baru**, masuk lagi ke folder `alat-penelitian`, lalu jalankan:

```bash
cd "$HOME/alat-penelitian"
bash alat/periksa.sh
bash alat/proyek-baru.sh ../riset-saya
```

Sekarang `riset-saya` adalah folder penelitian Anda sendiri dan sudah memiliki Git. Buka dengan editor teks atau Finder:

```bash
open ../riset-saya
```

Baca `riset-saya/ATURAN-KERJA.md` sebelum mulai. Aturan ini ikut tersalin ke setiap proyek baru.

## Jika belum punya topik atau judul

Buka [panduan AI sebagai teman kerja](AI-TEMAN-KERJA.md). Di sana ada permintaan siap pakai untuk mencari calon topik, mempersempit pertanyaan, menguji ketersediaan sumber, menyusun kerangka, dan memeriksa draf. Pilihan akhir tetap ditentukan dan diperiksa oleh Anda. Setelah punya pertanyaan kerja, lanjut ke langkah 2.

## 2. Rencanakan dan kumpulkan sumber

1. Isi `riset-saya/03-PERENCANAAN/BRIEF.md`: pertanyaan, tujuan, batas, dan metode awal.
2. Isi `riset-saya/03-PERENCANAAN/rencana.md` dengan langkah kerja.
3. Simpan PDF sumber yang boleh Anda gunakan di `riset-saya/07-REFERENSI/`. Catat identitasnya di `DAFTAR-SUMBER.md`.
4. Simpan brief atau bahan awal lain di `riset-saya/01-SUMBER/`.

**Contoh:** jika PDF bernama `artikel.pdf`, letakkan di `riset-saya/07-REFERENSI/artikel.pdf`. PDF tidak ikut disimpan oleh Git dalam template ini; buat cadangan sumber asli secara terpisah.

## 3. Baca sumber PDF

Untuk PDF pindaian, jalankan dari folder `alat-penelitian`:

```bash
bash alat/ocr.sh ../riset-saya/07-REFERENSI/artikel.pdf --bahasa ind
```

Jika PDF sudah memiliki teks yang dapat dipilih dan disalin:

```bash
bash alat/ocr.sh ../riset-saya/07-REFERENSI/artikel.pdf --tanpa-ocr
```

Hasilnya `artikel.baru.md`. Buka PDF dan hasil Markdown berdampingan. Periksa angka, tabel, kutipan, dan **nomor halaman cetak** sebelum memakai isinya. Setelah benar, simpan hasil yang telah diperiksa dengan nama `artikel.md` di folder referensi. Jika tidak memakai PDF, Anda dapat langsung membaca dan mencatat sumber secara manual.

## 4. Tulis naskah dan sitasi

Tulis di `riset-saya/02-NASKAH/draf.md`. Setiap klaim penting perlu sumber yang benar-benar Anda periksa. Untuk sitasi otomatis:

1. Buka Zotero dan pasang [Better BibTeX](https://retorque.re/zotero-better-bibtex/).
2. Ekspor koleksi sebagai **Better CSL JSON** ke `riset-saya/referensi.json`, dengan pembaruan otomatis.
3. Masukkan kunci sitasi dari Zotero ke naskah, misalnya `[@kunciDariZotero]`.
4. Buat DOCX bersitasi:

```bash
bash alat/sitasi.sh ../riset-saya/02-NASKAH/draf.md ../riset-saya/referensi.json ../riset-saya/06-KELUARAN/naskah-sitasi.docx
```

Tanpa Zotero, Anda tetap bisa menulis dan membuat DOCX biasa:

```bash
bash alat/build.sh ../riset-saya/02-NASKAH/draf.md docx ../riset-saya/06-KELUARAN/naskah.docx
```

Skrip tidak menimpa berkas keluaran yang sudah ada. Jika naskah berubah, gunakan nama keluaran baru atau pindahkan keluaran lama setelah diperiksa.

## 5. Simpan tahap kerja dengan Git

Saat satu tahap selesai, periksa perubahan dari folder proyek:

```bash
cd ../riset-saya
git status
git diff
git add .gitignore README.md ATURAN-KERJA.md 01-SUMBER/README.md 02-NASKAH/draf.md 03-PERENCANAAN/BRIEF.md 03-PERENCANAAN/rencana.md 06-KELUARAN/README.md 07-REFERENSI/DAFTAR-SUMBER.md
git diff --cached
git commit -m "Rumuskan masalah dan mulai draf"
```

Jika Git meminta identitas, jalankan `git config user.name "Nama Anda"` dan `git config user.email "anda@example.com"` di folder proyek, lalu ulangi commit. Proyek baru ini hanya berada di komputer Anda sampai Anda sendiri memilih tempat untuk membagikannya.

**Rutin berikutnya:** tambah atau periksa sumber → revisi `draf.md` → periksa `git diff` → commit → buat ulang DOCX/PDF → periksa hasilnya. Untuk pilihan alat dan perintah lain, lihat [panduan alat](alat/README.md) dan [panduan Git](PANDUAN-GIT.md).
