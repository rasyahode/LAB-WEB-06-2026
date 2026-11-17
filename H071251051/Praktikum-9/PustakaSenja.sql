CREATE TABLE buku (
    id SERIAL PRIMARY KEY,
    judul VARCHAR(150) NOT NULL,
    penulis VARCHAR(100) NOT NULL,
    kategori VARCHAR(50) NOT NULL,
    tahun INTEGER NOT NULL,
    tersedia BOOLEAN NOT NULL DEFAULT TRUE,
    sinopsis TEXT NOT NULL
);

INSERT INTO buku (judul, penulis, kategori, tahun, tersedia, sinopsis) VALUES
    ('Clean Code', 'Robert C. Martin', 'Teknologi', 2008, true, 'Panduan menulis kode perangkat lunak yang bersih, mudah dibaca, dan mudah dipelihara oleh tim pengembang.'),
    ('Designing Data-Intensive Applications', 'Martin Kleppmann', 'Teknologi', 2017, true, 'Pembahasan mendalam mengenai arsitektur sistem terdistribusi, basis data, dan pengolahan data skala besar.'),
    ('Refactoring', 'Martin Fowler', 'Teknologi', 2018, false, 'Teknik sistematis untuk memperbaiki struktur internal kode program tanpa mengubah perilaku eksternalnya.'),
    ('Laut Bercerita', 'Leila S. Chudori', 'Fiksi', 2017, true, 'Kisah persahabatan, perjuangan, dan kehilangan para aktivis mahasiswa di penghujung era Orde Baru.'),
    ('Bumi Manusia', 'Pramoedya Ananta Toer', 'Fiksi', 1980, true, 'Perjalanan Minke, seorang pemuda pribumi terpelajar, dalam menghadapi ketidakadilan hukum kolonial di awal abad ke-20.'),
    ('Cantik Itu Luka', 'Eka Kurniawan', 'Fiksi', 2002, false, 'Epos keluarga Dewi Ayu di kota pesisir Halimunda yang memadukan sejarah kelam dengan unsur realisme magis.'),
    ('Atomic Habits', 'James Clear', 'Pengembangan Diri', 2018, true, 'Cara membangun kebiasaan baik yang bertahan lama dan menghentikan kebiasaan buruk melalui perubahan kecil setiap hari.'),
    ('Deep Work', 'Cal Newport', 'Pengembangan Diri', 2016, true, 'Strategi melatih fokus mendalam tanpa distraksi untuk menghasilkan karya bernilai tinggi di era digital.'),
    ('Filosofi Teras', 'Henry Manampiring', 'Pengembangan Diri', 2018, false, 'Penerapan filsafat Stoisisme kuno untuk menjaga ketenangan mental dan mengelola emosi negatif di kehidupan modern.');

ALTER TABLE buku ADD COLUMN gambar VARCHAR(255);

UPDATE buku SET gambar = 'clean-code.jpeg'          WHERE id = 1;
UPDATE buku SET gambar = 'designing-data.jpeg'      WHERE id = 2;
UPDATE buku SET gambar = 'refactoring.jpeg'         WHERE id = 3;
UPDATE buku SET gambar = 'laut-bercerita.jpeg'      WHERE id = 4;
UPDATE buku SET gambar = 'bumi-manusia.jpeg'        WHERE id = 5;
UPDATE buku SET gambar = 'cantik-itu-luka.jpeg'     WHERE id = 6;
UPDATE buku SET gambar = 'atomic-habits.jpeg'       WHERE id = 7;
UPDATE buku SET gambar = 'deep-work.jpeg'           WHERE id = 8;
UPDATE buku SET gambar = 'filosofi-teras.jpeg'      WHERE id = 9;

SELECT * FROM buku;