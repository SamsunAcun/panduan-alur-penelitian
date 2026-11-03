# AI sebagai teman kerja penelitian

Jika Anda belum tahu harus meneliti apa, mulai dari sini. AI dapat membantu menyusun pilihan dan menunjukkan langkah berikutnya. **AI tidak menentukan kebenaran sumber atau keputusan akhir penelitian.** Ikuti [aturan kerja](contoh-proyek/ATURAN-KERJA.md) pada setiap tahap.

Untuk permintaan sehari-hari setelah proyek berjalan, lihat [contoh prompt kerja](CONTOH-PROMPT-KERJA.md).

Gunakan AI yang dapat membaca folder proyek lokal. Buka folder `riset-saya` di aplikasi AI tersebut dan minta AI membaca `README.md` serta `ATURAN-KERJA.md` lebih dulu. Jika AI hanya berbentuk chat, salin isi brief dan catatan sumber yang relevan ke percakapan; jangan kirim data yang tidak boleh dibagikan.

## 1. Belum punya topik

Isi bagian dalam tanda `[ ]`, lalu kirim:

> Saya ingin mulai meneliti, tetapi belum punya topik. Bidang/minat saya: [isi]. Waktu yang tersedia: [isi]. Jenis penelitian yang mungkin saya lakukan: [isi atau belum tahu]. Akses sumber/data yang saya punya: [isi]. Tanyakan paling banyak 5 hal yang benar-benar perlu diketahui, lalu tawarkan 3 topik yang cukup sempit untuk dikerjakan. Untuk tiap topik, jelaskan pertanyaan utama, sumber yang perlu dicari, metode awal, kesulitan, dan langkah pertama. Jangan mengarang sumber atau menyatakan topik sudah baru tanpa memeriksa penelitian terdahulu.

Pilih satu **calon topik**, bukan judul final. Jika belum bisa menjawab pertanyaan AI, minta ia membuat versi paling sederhana yang masih layak dicoba.

## 2. Sudah punya topik, tetapi belum punya judul

> Topik saya: [isi]. Bantu ubah menjadi 2–3 pertanyaan penelitian yang spesifik. Tunjukkan objek, batas waktu/tempat, jenis bukti yang diperlukan, dan kemungkinan metode. Beri judul kerja untuk setiap pertanyaan. Tandai apa yang masih perlu diverifikasi sebelum judul dipastikan. Jangan mengklaim kebaruan tanpa penelusuran sumber.

Tulis pilihan Anda di `03-PERENCANAAN/BRIEF.md`. Judul boleh berubah ketika sumber dan batas penelitian menjadi lebih jelas.

## 3. Uji apakah penelitian bisa dikerjakan

> Baca `03-PERENCANAAN/BRIEF.md` dan `07-REFERENSI/DAFTAR-SUMBER.md`. Uji apakah pertanyaan bisa dijawab dengan sumber yang tersedia. Buat tabel: kebutuhan bukti, sumber yang sudah ada, sumber yang belum ada, dan tindakan untuk mendapatkannya. Bedakan fakta yang sudah diperiksa dari dugaan. Jika sumber belum cukup, usulkan penyempitan pertanyaan.

Jika belum ada sumber, AI hanya boleh memberi **daftar jenis sumber dan tempat mencarinya**. Verifikasi alamat, identitas, dan isi sumber sebelum memasukkannya ke daftar referensi.

## 4. Setelah sumber terkumpul

> Baca berkas sumber yang tersedia di `07-REFERENSI/`. Ringkas hanya bagian yang relevan dengan pertanyaan penelitian. Untuk tiap temuan, tulis nama berkas, lokasi atau halaman yang dapat saya periksa, isi sumber, dan bagaimana temuan itu mendukung atau menentang dugaan awal. Tandai `[CEK]` jika halaman atau kutipannya belum pasti. Jangan membuat sitasi dari ingatan.

Periksa hasil AI pada PDF atau sumber asli. Jika sumber adalah hasil OCR, cek angka dan halaman cetaknya terlebih dahulu.

## 5. Susun kerangka, tulis, lalu uji

> Berdasarkan brief dan sumber yang sudah diperiksa, buat kerangka `02-NASKAH/draf.md`. Untuk tiap bagian, sebutkan pertanyaan kecil, klaim yang mungkin dibuat, bukti yang tersedia, dan bukti yang masih kurang. Jangan menulis argumen seolah-olah sudah terbukti jika buktinya belum ada.

Setelah kerangka disetujui, minta AI mengerjakan **satu bagian** dahulu:

> Bantu tulis/revisi bagian [nama bagian]. Gunakan hanya sumber yang sudah diperiksa. Tunjukkan asal setiap klaim dan tandai paragraf `[SUMBER]`, `[SAYA]`, atau `[CAMPURAN]`. Pertahankan maksud dan gaya penulis. Daftarkan klaim yang masih `[CEK]`.

Untuk pemeriksaan akhir:

> Audit draf terhadap brief dan sumber. Buat daftar klaim tanpa dukungan, kutipan atau halaman yang belum cocok, bagian yang tidak menjawab pertanyaan, serta argumen lawan yang belum ditanggapi. Urutkan perbaikan terpenting. Jangan mengubah banyak berkas sebelum menunjukkan rencana.

## 6. Simpan keputusan Anda

Setelah memeriksa hasil AI, tulis keputusan dan alasannya di `03-PERENCANAAN/rencana.md`. Tinjau `git diff`, lalu commit perubahan yang benar-benar Anda terima. [Tutorial mulai langsung](MULAI-DI-SINI.md) menunjukkan perintahnya.
