SELECT pg_sleep(5); -- 5 secs waits

CREATE PROCEDURE ma_sleep_test()
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE 'Bekleniyor...';
    PERFORM pg_sleep(10); -- 10 secs waits
    RAISE NOTICE 'Bekleme süresi doldu';
END
$$;
