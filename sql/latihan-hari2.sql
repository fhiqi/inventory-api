-- 1. Semua barang
SELECT * FROM barang;

-- 2. Nama dan stok barang  kategori APD
SELECT nama, stok FROM barang WHERE kategori = 'APD';

-- 3. Barang dengan stok kurang dari 20
SELECT * FROM barang WHERE stok < 20;

-- 4. Urutan dari stok terbanyak ke tersedikit
SELECT * FROM barang ORDER BY stok DESC;

-- 5. 3 barang dengan stok terbanyak
SELECT * FROM barang ORDER BY stok DESC LIMIT 3;

-- 6. Barang yang namanya mengandung "Label"
SELECT * FROM barang WHERE nama ILIKE '%Label%';

-- 7. Barang yang stoknya di bawah stok minimum
SELECT * FROM barang WHERE stok < stok_minimum;

-- 8. Total jenis barang
SELECT COUNT(*) AS total_jenis_barang FROM barang;

-- 9. Barang dengan kategori Kemasan dan APD diurutkan berdasarkan nama
SELECT * FROM barang WHERE kategori IN ('Kemasan', 'APD') ORDER BY nama ASC;

-- 10. Barang dengan stok antara 10 dan 30
SELECT * FROM barang WHERE stok BETWEEN 10 AND 30;

-- 11. Nama barang serta selisih stok (stok dikurang stok minimum)
SELECT nama, stok, stok_minimum, (stok - stok_minimum) AS selisih FROM barang;