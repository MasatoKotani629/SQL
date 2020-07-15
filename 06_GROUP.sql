SELECT shouhin_bunrui, COUNT(*)
FROM Shouhin
GROUP BY shouhin_bunrui;

SELECT `shiire_tanka`, COUNT(*)
FROM Shouhin
GROUP BY shiire_tanka;

SELECT shouhin_bunrui, SUM(shiire_tanka)
FROM Shouhin
GROUP BY shouhin_bunrui;