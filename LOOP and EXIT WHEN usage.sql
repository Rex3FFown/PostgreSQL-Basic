DO $$
DECLARE
    sayac int := 1;
    tutucu int := (SELECT COUNT(*) FROM ma_ucak_durum);
    toplam int;
    a1 int;
    a2 int;
BEGIN
    LOOP
        EXIT WHEN sayac = 30;
        a1 := (SELECT toplam_km FROM ma_ucak_durum WHERE id = sayac);
        a2 := (SELECT toplam_km FROM ma_ucak_durum WHERE id = sayac + 1);
        toplam := a1 + a2;
        RAISE NOTICE '% + % = %', a1, a2, toplam;
        sayac := sayac + 1;
    END LOOP;
END $$;
