CREATE VIEW ma_ucak_hiz_kapasite
    AS
    SELECT ma_ucak_durum.ucak_model,ma_ucak_kapasite.kapasite,ma_ucak_hiz.hiz
    FROM ma_ucak_durum
        INNER JOIN ma_ucak_kapasite on ma_ucak_durum.kapasite = ma_ucak_kapasite.id
        INNER JOIN ma_ucak_hiz on ma_ucak_durum.hiz = ma_ucak_hiz.id;
