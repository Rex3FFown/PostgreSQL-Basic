DO $$
    DECLARE
        sayac int:=1;
        tablo_uzunluk int:= (SELECT COUNT(*) FROM ma_ucak_durum);
        tutucu float;
        max float:=(SELECT MAX(toplam_km) FROM ma_ucak_durum);
        min float:=(SELECT MIN(toplam_km) FROM ma_ucak_durum);

    BEGIN
        while sayac <=tablo_uzunluk loop
            tutucu:=((SELECT toplam_km::float FROM ma_ucak_durum WHERE id=sayac)-min)/(max-min);
            Raise Notice '%',tutucu;
            tutucu:=round(tutucu::numeric,3)::float;
            INSERT INTO ma_ucak_toplamkm_normalize (toplamkm_norm) VALUES (tutucu);
            sayac:=sayac+1;
            end loop;

    END$$
