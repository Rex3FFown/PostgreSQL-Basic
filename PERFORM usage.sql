CREATE OR REPLACE FUNCTION tahta_oluştur(oyun_id INT) RETURNS VOID AS $$
BEGIN
    -- Beyaz taşlar
    INSERT INTO tahtalar (oyun_id, konum, taş) VALUES
    (oyun_id, 'a1', 'bk'), (oyun_id, 'b1', 'ba'), (oyun_id, 'c1', 'bf'),
    (oyun_id, 'd1', 'bv'), (oyun_id, 'e1', 'bş'), (oyun_id, 'f1', 'bf'),
    (oyun_id, 'g1', 'ba'), (oyun_id, 'h1', 'bk');

    INSERT INTO tahtalar (oyun_id, konum, taş)
    SELECT oyun_id, CHR(96 + i) || '2', 'bp' FROM generate_series(1, 8) AS s(i);

    -- Siyah taşlar
    INSERT INTO tahtalar (oyun_id, konum, taş) VALUES
    (oyun_id, 'a8', 'sk'), (oyun_id, 'b8', 'sa'), (oyun_id, 'c8', 'sf'),
    (oyun_id, 'd8', 'sv'), (oyun_id, 'e8', 'sş'), (oyun_id, 'f8', 'sf'),
    (oyun_id, 'g8', 'sa'), (oyun_id, 'h8', 'sk');

    INSERT INTO tahtalar (oyun_id, konum, taş)
    SELECT oyun_id, CHR(96 + i) || '7', 'sp' FROM generate_series(1, 8) AS s(i);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION yeni_oyun(oyuncu_beyaz INT, oyuncu_siyah INT) RETURNS INT AS $$
DECLARE
    yeni_oyun_id INT;
BEGIN
    INSERT INTO oyun (beyaz_oyuncu_id, siyah_oyuncu_id) VALUES (oyuncu_beyaz, oyuncu_siyah) RETURNING oyun_id INTO yeni_oyun_id;
    PERFORM tahta_oluştur(yeni_oyun_id);
    RETURN yeni_oyun_id;
END;
$$ LANGUAGE plpgsql;
