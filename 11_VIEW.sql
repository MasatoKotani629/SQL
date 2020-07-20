CREATE VIEW 
	ShouhinSum (Shohin_bunrui, cnt_shouhin) 
AS
	SELECT 
		shouhin_bunrui, COUNT(*)
	FROM 
		Shouhin
	GROUP BY 
		shouhin_bunrui;

SELECT 
	shohin_bunrui, cnt_shouhin
FROM 
	shouhinSUM;