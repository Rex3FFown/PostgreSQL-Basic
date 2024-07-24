"xnormalized = (x - xminimum) / range of x || This is the formula of normalization "
SELECT ((SELECT x FROM x_table WHERE id=1)-MIN(x))/(MAX(x)-MIN(x)) FROM ma_ucak_durum AS Normalizasyon;

SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=1)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon;
