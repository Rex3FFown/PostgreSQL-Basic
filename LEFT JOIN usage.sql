SELECT ucak_model, ma_kapasite.kapasite FROM ma_ucak_durum left join ma_kapasite on ma_ucak_durum.kapasite=ma_kapasite.id;
SELECT ucak_model, ma_ucak_hiz.hiz FROM ma_ucak_durum LEFT JOIN ma_ucak_hiz on ma_ucak_durum.hiz=ma_ucak_hiz.id;
