---------練習2.1---------
SELECT DISTINCT shohin_mei, torokubi
FROM shohin
WHERE torokubi > '2009-04-28'
;
---------練習2.4---------
SELECT shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, hanbai_tanka * 0.9 - shiire_tanka AS rieki 
FROM shohin
WHERE hanbai_tanka * 0.9 - shiire_tanka > 100
AND (shohin_bunrui = '事務用品' OR shohin_bunrui = 'キッチン用品');