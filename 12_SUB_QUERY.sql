SELECT 
    shouhin_bunrui, cnt_shouhin
FROM
  (SELECT
    shouhin_bunrui, COUNT(*) As cnt_shouhin
  FROM 
    shouhin
  GROUP BY
    shouhin_bunrui
  ) 
  AS 
    ShouhinSum;

SELECT 
	shohin_id, shohin_mei, hanbai_tanka
FROM
	Shohin
WHERE
	hanbai_tanka > (SELECT 
						AVG(hanbai_tanka)
					FROM
						shohin
						)

SELECT 
	shohin_bunrui, shohin_mei, hanbai_tanka
FROM
	Shohin As S1
WHERE
	hanbai_tanka > (SELECT
						AVG(hanbai_tanka)
					FROM
						Shohin AS S2
					WHERE 
						S1.shohin_bunrui = S2.shohin_bunrui
					GROUP BY 
						shohin_bunrui
					); 
