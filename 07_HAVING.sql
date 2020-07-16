SELECT shouhin_bunrui, COUNT(*)
FROM shouhin
GROUP BY shouhin_bunrui
Having COUNT(*) = 2;


-- FROM -> GROUP BY -> Having -> SELECT  --
