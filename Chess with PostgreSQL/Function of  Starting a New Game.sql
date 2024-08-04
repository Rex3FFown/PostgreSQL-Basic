CREATE OR REPLACE FUNCTION yeni_oyun(oyuncu_beyaz INT, oyuncu_siyah INT) RETURNS INT AS $$
DECLARE
    yeni_oyun_id INT;
BEGIN
    INSERT INTO oyun (beyaz_oyuncu_id, siyah_oyuncu_id) VALUES (oyuncu_beyaz, oyuncu_siyah) RETURNING oyun_id INTO yeni_oyun_id;
    PERFORM tahta_oluştur(yeni_oyun_id);
    RETURN yeni_oyun_id;
END;
$$ LANGUAGE plpgsql;
