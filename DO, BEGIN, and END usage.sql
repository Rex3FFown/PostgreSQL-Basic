DO $$
BEGIN
    -- Değişkenleri tanımla
    DECLARE
        sayac int := 1;
        toplam int;
    BEGIN
        -- Döngü başlat
        WHILE sayac <= 10 LOOP
            toplam := toplam + sayac;
            RAISE NOTICE 'Toplam: %', toplam;
            sayac := sayac + 1;
        END LOOP;
    END;
END $$;
