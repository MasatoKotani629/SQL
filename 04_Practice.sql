---------練習2.1---------
SELECT DISTINCT shouhin_mei, torokubi
FROM Shouhin
WHERE torokubi > '2009-04-28'
;
---------練習2.4---------
SELECT shouhin_mei, shouhin_bunrui, hanbai_tanka, shiire_tanka, hanbai_tanka * 0.9 - shiire_tanka AS rieki 
FROM Shouhin
WHERE hanbai_tanka * 0.9 - shiire_tanka > 100
AND (shouhin_bunrui = '事務用品' OR shouhin_bunrui = 'キッチン用品');