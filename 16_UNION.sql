SELECT 
	shohin_id, shohin_mei
FROM
	Shohin
UNION --ALLをつけると重複行もいける
SELECT 
	shohin_id, shohin_mei
FROM
	Shohin2