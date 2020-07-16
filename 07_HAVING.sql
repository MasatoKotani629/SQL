SELECT shouhin_bunrui, COUNT(*)
FROM shouhin
GROUP BY shouhin_bunrui
Having COUNT(*) = 2;


-- FROM -> WHERE -> GROUP BY -> Having -> SELECT  --
