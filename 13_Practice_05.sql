CREATE VIEW 
	ViewRenshu5_1
AS	SELECT
		shohin_mei, hanbai_tanka, torokubi
	FROM
		Shohin
	WHERE 
		hanbai_tanka >= 1000
	AND
		torokubi = '2019-9-20';


SELECT 
	shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, 
	(SELECT 
		AVG(hanbai_tanka)  
	FROM
		Shohin
	) As 
	hanbai_tanka_all
FROM
	Shohin AS S1
;

SELECT 
	shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, 
	(SELECT 
		AVG(hanbai_tanka)  
	FROM
		Shohin AS S2
	WHERE 
		S1.shohin_bunrui = S2.shohin_bunrui
	GROUP BY
		shohin_bunrui
	) As 
	hanbai_tanka_all
FROM
	Shohin AS S1
;