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