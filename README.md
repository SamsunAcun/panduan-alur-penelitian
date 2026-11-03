# Panduan alur penelitian berbasis Markdown dan Git

Repositori ini adalah **bahan tutorial umum** untuk memulai, menulis, memeriksa, dan mencatat versi pekerjaan penelitian. Isinya contoh buatan untuk latihan. Tidak ada naskah, sumber, atau data dari proyek penelitian pribadi.

## Mulai di sini

**Ikuti [tutorial langkah demi langkah](MULAI-DI-SINI.md)** untuk membuat proyek pertama sampai DOCX dan commit Git. Jika masih bingung memilih topik atau judul, mulai dari [AI sebagai teman kerja](AI-TEMAN-KERJA.md). Setiap proyek baru membawa [aturan kerja penelitian](contoh-proyek/ATURAN-KERJA.md).

Setelah proyek berjalan, gunakan [contoh prompt kerja](CONTOH-PROMPT-KERJA.md) untuk memeriksa metode, sumber, draf, template, dan berkas keluaran.

Urutan cepat: clone repositori → pasang alat → buat proyek sendiri → isi brief dan sumber → tulis naskah → periksa dan commit → ekspor dokumen. Rincian alat ada di [daftar alat](PERKAKAS.md).

## Alur penelitian

| Tahap | Yang dikerjakan | Hasil yang dicatat |
|---|---|---|
| 1. Rumuskan | Tulis pertanyaan, tujuan, batasan, dan rencana metode. | `03-PERENCANAAN/BRIEF.md` |
| 2. Kumpulkan | Simpan sumber asli secara sah; catat penulis, judul, tahun, URL atau lokasi, dan tanggal akses bila relevan. | `07-REFERENSI/DAFTAR-SUMBER.md` |
| 3. Baca dan uji | Baca bagian relevan; pisahkan isi sumber, ringkasan, dan penilaian Anda. Periksa halaman dan konteks kutipan. | Catatan sumber dengan nomor halaman yang benar |
| 4. Tulis | Susun argumen di Markdown. Tautkan setiap klaim penting ke sumber yang telah diperiksa. | `02-NASKAH/draf.md` |
| 5. Tinjau | Periksa dukungan klaim, kutipan, metode, bahasa, dan kebutuhan etika atau izin data. | Revisi yang jelas di `git diff` |
| 6. Terbitkan keluaran | Buat DOCX atau PDF dari naskah setelah isinya siap. Periksa tampilan hasil. | Berkas keluaran, dibuat ulang bila naskah berubah |

Git mencatat perubahan **berkas yang dimasukkan ke commit**. Ia bukan pengganti cadangan sumber asli, data sensitif, atau basis data pengelola referensi. Jangan unggah data peserta penelitian, dokumen berlisensi terbatas, kata sandi, atau bahan yang belum diizinkan untuk dibagikan.

Folder `alat/` tersedia saat repositori di-clone. Skrip pemasangan memasang program di komputer pengguna; skrip kerja menjalankan program itu pada berkas yang dipilih. Hasil OCR ditulis ke `.baru.md` agar dapat diperiksa sebelum dipakai.

## Struktur latihan

```text
contoh-proyek/
├── README.md
├── ATURAN-KERJA.md
├── 01-SUMBER/README.md
├── 02-NASKAH/draf.md
├── 03-PERENCANAAN/
│   ├── BRIEF.md
│   └── rencana.md
├── 06-KELUARAN/README.md
└── 07-REFERENSI/DAFTAR-SUMBER.md
```

Contoh sengaja tidak berisi klaim akademik atau sitasi nyata. Isi dengan sumber yang Anda periksa sendiri.

## Memakai repositori ini bersama orang lain

Repositori publik ini dapat diambil dengan:

```bash
git clone https://github.com/SamsunAcun/panduan-alur-penelitian.git alat-penelitian
cd alat-penelitian
```

Nama folder hasil `clone` dapat berbeda jika Anda memilih nama sendiri.
