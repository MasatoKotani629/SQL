SELECT 
  SUM(
    CASE 
    WHEN
      shohin_bunrui = '衣服'
    THEN 
      hanbai_tanka
    ELSE
      0
    END 
  ) AS sum_tanaka_ihiku,
  SUM(
    CASE
    WHEN
      shohin_bunrui = 'キッチン用品'
    THEN
      hanbai_tanka
    ELSE
      0
    END
  ) AS sum_tanaka_kitchen,
  SUM(
    CASE  
    WHEN
      shohin_bunrui = '事務用品'
    THEN
      hanbai_tanka
    ELSE
      0
    END
  ) AS sum_tanaka_jimu
FROM
  Shohin;


