SELECT AVG(yakit_orani),ucak_model FROM ma_ucak_durum GROUP BY ucak_model HAVING AVG(yakit_orani)>=50;
SELECT AVG(yakit_orani),ucak_model FROM ma_ucak_durum GROUP BY ucak_model HAVING AVG(yakit_orani)>=40 and ucak_model LIKE 'Airbus%';
