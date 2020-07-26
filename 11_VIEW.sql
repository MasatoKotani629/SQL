CREATE VIEW 
	shohinSum (Shohin_bunrui, cnt_shohin) 
AS
	SELECT 
		shohin_bunrui, COUNT(*)
	FROM 
		shohin
	GROUP BY 
		shohin_bunrui;

SELECT 
	shohin_bunrui, cnt_shohin
FROM 
	shohinSUM;

CREATE VIEW 
	ShohinSumJim (shohin_bunrui, cnt_shohin)
AS 
SELECT 
	shohin_bunrui, cnt_shohin
FROM 
	shohinSum
WHERE
	shohin_bunrui = '事務用品'
;

SELECT 
	shohin_bunrui, cnt_shohin
FROM
	shohinsumjim