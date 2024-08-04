CREATE OR REPLACE FUNCTION hamle_yap(oyun_id INT, oyuncu_id INT, başlangıç_konum CHAR(2), bitiş_konum CHAR(2)) RETURNS VOID AS $$
BEGIN
    -- Hamleyi kaydettiğim bölüm
    INSERT INTO hamleler (oyun_id, oyuncu_id, başlangıç_konumu, bitiş_konumu) VALUES (oyun_id, oyuncu_id, başlangıç_konum, bitiş_konum);

    -- Tahtanın güncel duruma taşındığı bölüm
    UPDATE tahtalar SET taş = NULL WHERE oyun_id = oyun_id AND konum = başlangıç_konum;
    UPDATE tahtalar SET taş = (SELECT taş FROM tahtalar WHERE oyun_id = oyun_id AND konum = başlangıç_konum)
    WHERE oyun_id = oyun_id AND konum = bitiş_konum;
END;
$$ LANGUAGE plpgsql;
