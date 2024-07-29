CREATE FUNCTION ma_fonksiyon(a1 INT, a2 INT)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    sum INT;
BEGIN
    sum = a1 + a2;
    RETURN sum;
END
$$;

SELECT ma_fonksiyon(5, 1);

------------------------------------------------------

CREATE FUNCTION ma_toplam_km_kacta_kaci(id_u INT)
RETURNS FLOAT
LANGUAGE plpgsql
AS $$
DECLARE
    kontrol INT := (SELECT COUNT(*) FROM ma_ucak_durum);
    km FLOAT := (SELECT toplam_km::FLOAT FROM ma_ucak_durum WHERE id = id_u);
    tutucu FLOAT := (SELECT SUM(toplam_km) FROM ma_ucak_durum);
    sonuc FLOAT;
BEGIN
    sonuc := km / tutucu;
    RETURN sonuc;
END
$$;

SELECT ma_toplam_km_kacta_kaci(5);
