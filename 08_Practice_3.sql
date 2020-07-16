SELECT shouhin_bunrui, SUM(hanbai_tanka), SUM(shiire_tanka)
FROM shouhin
GROUP BY shouhin_bunrui
Having SUM(hanbai_tanka) > SUM(shiire_tanka) * 1.5;