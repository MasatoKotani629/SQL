SELECT 
  shohin_mei, hanbai_tanka
FROM
  Shohin
WHERE
  hanbai_tanka
BETWEEN
  100
AND
  1000
;

SELECT 
  shohin_mei, hanbai_tanka
FROM
  Shohin
WHERE
  hanbai_tanka >= 100
AND
  hanbai_tanka <= 1000
;