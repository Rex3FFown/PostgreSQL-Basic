DO $$
    DECLARE
        sayac int:=1;
        tutucu varchar(100);

    BEGIN
        while sayac<=10
        loop
            tutucu:=(SELECT ucak_model FROM ma_ucak_durum where id =sayac);
            RAISE NOTICE '%',tutucu;
            sayac:=sayac + 1;
            end loop;
END$$;
------------------------------------------------------------------------------
DO $$
    DECLARE
        sayac int:=1;
        tutucu int:=(SELECT COUNT(*) FROM ma_ucak_durum);
    BEGIN
        while sayac<=tutucu
        loop
            Raise Notice '%', (SELECT ucak_model FROM ma_ucak_durum WHERE id=sayac);
            sayac:=sayac+1;
            end loop;
END$$
------------------------------------------------------------------------------
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
            sayac:=sayac+1;
            end loop;

    END$$
