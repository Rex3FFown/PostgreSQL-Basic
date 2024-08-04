CREATE OR REPLACE FUNCTION tahta_oluştur(oyun_id INT) RETURNS VOID AS $$
BEGIN
    -- Beyaz taşlar
    INSERT INTO tahtalar (oyun_id, konum, taş) VALUES 
    (oyun_id, 'a1', 'br'), (oyun_id, 'b1', 'bn'), (oyun_id, 'c1', 'bb'),
    (oyun_id, 'd1', 'bv'), (oyun_id, 'e1', 'bş'), (oyun_id, 'f1', 'bb'),
    (oyun_id, 'g1', 'bn'), (oyun_id, 'h1', 'br');

    INSERT INTO tahtalar (oyun_id, konum, taş)
    SELECT oyun_id, CHR(96 + i) || '2', 'bp' FROM generate_series(1, 8) AS s(i);

    -- Siyah taşlar
    INSERT INTO tahtalar (oyun_id, konum, taş) VALUES 
    (oyun_id, 'a8', 'sr'), (oyun_id, 'b8', 'sn'), (oyun_id, 'c8', 'sb'),
    (oyun_id, 'd8', 'sv'), (oyun_id, 'e8', 'sş'), (oyun_id, 'f8', 'sb'),
    (oyun_id, 'g8', 'sn'), (oyun_id, 'h8', 'sr');

    INSERT INTO tahtalar (oyun_id, konum, taş)
    SELECT oyun_id, CHR(96 + i) || '7', 'sp' FROM generate_series(1, 8) AS s(i);
END;
$$ LANGUAGE plpgsql;
