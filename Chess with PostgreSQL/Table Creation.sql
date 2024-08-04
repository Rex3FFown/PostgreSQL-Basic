CREATE TABLE oyuncular (
    oyuncu_id SERIAL PRIMARY KEY,
    oyuncu_adı VARCHAR(50) NOT NULL
);

CREATE TABLE oyun (
    oyun_id SERIAL PRIMARY KEY,
    beyaz_oyuncu_id INT REFERENCES oyuncular(oyuncu_id),
    siyah_oyuncu_id INT REFERENCES oyuncular(oyuncu_id),
    başlangıç_zamanı TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    bitiş_zamanı TIMESTAMP
);

CREATE TABLE hamleler (
    hamle_id SERIAL PRIMARY KEY,
    oyun_id INT REFERENCES oyun(oyun_id),
    oyuncu_id INT REFERENCES oyuncular(oyuncu_id),
    başlangıç_konumu CHAR(2) NOT NULL,
    bitiş_konumu CHAR(2) NOT NULL,
    hamle_zamanı TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
