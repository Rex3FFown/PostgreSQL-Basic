CREATE PROCEDURE ma_deneme()
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE 'Prosedür deneme';
END
$$;

--After call for procedure

CALL ma_deneme();
