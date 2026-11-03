# Aturan kerja penelitian

Baca aturan ini sebelum menulis atau meminta bantuan AI. Sesuaikan dengan bidang, kampus, jurnal, dan kebijakan penggunaan AI yang berlaku.

## Naskah dan berkas

1. Naskah utama disimpan sebagai Markdown (`.md`). DOCX dan PDF adalah keluaran yang dibuat ulang setelah naskah berubah.
2. Simpan sumber asli dan catat identitasnya di `07-REFERENSI/DAFTAR-SUMBER.md`. Git pada template ini mengabaikan PDF; cadangkan sumber asli secara terpisah.
3. Hasil konversi atau OCR ditulis ke `*.baru.md`. Bandingkan dengan berkas asli sebelum dipakai; jangan menimpa catatan lama secara otomatis.
4. Saat menyerahkan revisi satu bagian, berikan teks bagian itu secara utuh sehingga dapat diperiksa. Jangan mengganti bagian yang belum ditulis dengan `[dst.]` atau ringkasan.

## Bukti dan sitasi

5. Periksa klaim, kutipan, dan nomor halaman pada sumber yang benar-benar tersedia. Jika belum dicek, tulis `[CEK]`; jangan menebak.
6. Periksa hasil OCR secara khusus pada angka, nama, tahun, tabel, pasal, catatan kaki, dan nomor halaman cetak. Nomor halaman PDF tidak selalu sama dengan nomor halaman cetak.
7. Untuk peraturan atau putusan, baca salinan resmi. Berita atau ringkasan dapat membantu menemukan sumber, tetapi jangan dijadikan pengganti teks primer.
8. Jika sumber belum ditemukan, catat sebagai pekerjaan tertunda. Jangan membuat judul, penulis, DOI, URL, kutipan, atau kunci Zotero yang tidak terverifikasi.

## Kerja dengan AI

9. AI membantu mencari pilihan topik, membuat rencana, membaca, menguji argumen, dan menyunting. Peneliti memilih pertanyaan, metode, klaim, dan kesimpulan akhir.
10. Minta AI menunjukkan sumber untuk setiap klaim faktual. Sebelum menyatakan sumber tidak tersedia, AI perlu memeriksa folder referensi proyek.
11. Saat AI mengubah paragraf, tandai asalnya dalam draf kerja: `[SUMBER]` dari teks penulis, `[SAYA]` ditulis AI, atau `[CAMPURAN]` ide penulis dengan kalimat AI. Periksa, satukan gaya, lalu hapus penanda saat naskah final bila tidak diperlukan.
12. Untuk perubahan besar pada banyak berkas, minta AI membuat rencana dan daftar berkas yang akan diubah terlebih dahulu. Uji pada satu bagian sebelum menerapkan ke seluruh naskah.
13. Jangan memasukkan data peserta, dokumen terbatas, atau informasi pribadi ke layanan AI tanpa izin yang sesuai.
14. Saat menyunting gaya, ubah bagian yang memang bermasalah tanpa menurunkan ketepatan istilah atau mutu argumen. Untuk naskah Inggris, gunakan satu ragam ejaan secara konsisten; template ini memakai British English.

## Pemeriksaan sebelum selesai

- Apakah pertanyaan penelitian dijawab oleh kesimpulan?
- Apakah setiap klaim penting didukung sumber yang telah dibaca?
- Apakah kutipan, halaman, dan daftar pustaka cocok dengan sumber asli?
- Apakah berkas keluaran sesuai dengan naskah Markdown terbaru?
- Apakah `git diff` hanya menunjukkan perubahan yang dimaksud?
