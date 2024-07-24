"xnormalized = (x - xminimum) / range of x || This is the formula of normalization "

SELECT ((SELECT x FROM x_table WHERE id=1)-MIN(x))/(MAX(x)-MIN(x)) FROM ma_ucak_durum AS Normalizasyon;

SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=1)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon;
"Apply to all columns in the table with INSERT INTO"
  
INSERT INTO ma_veri_normalizasyonu_ucak_durum(id,normalize_edilmis_toplam_km) VALUES
        (1,(SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=1)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon)),
        (2,(SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=2)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon)),
        (3,(SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=3)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon)),
        (4,(SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=4)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon)),
        (5,(SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=5)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon)),
        (6,(SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=6)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon)),
        (7,(SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=7)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon)),
        (8,(SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=8)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon)),
        (9,(SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=9)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon)),
        (10,(SELECT ((SELECT toplam_km FROM ma_ucak_durum WHERE id=10)-MIN(toplam_km))/(MAX(toplam_km)-MIN(toplam_km)) FROM ma_ucak_durum AS Normalizasyon));


