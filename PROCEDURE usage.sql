CREATE PROCEDURE ma_deneme()
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE 'Prosedür deneme';
END
$$;

--After call for procedure

CALL ma_deneme();


--------------------------------------------
CREATE PROCEDURE ma_parametre(a1 INT, a2 INT)
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE '%', a1 + a2;
END
$$;

CALL ma_parametre(1, 5);
