SELECT 
  shohin_mei, 
  shiire_tanka
FROM
  Shohin 
WHERE
  shiire_tanka 
IN
(320, 500, 5000);

-------------------------

SELECT 
  shohin_mei, 
  shiire_tanka
FROM
  Shohin 
WHERE
  shiire_tanka 
NOT IN
(320, 500, 5000)
OR
shiire_tanka IS NOT NULL 
;

CREATE TABLE TenpoShohin
(
  tenpo_id CHAR(4) NOT NULL,
  tenpo_mei VARCHAR(200) NOT NULL,
  shohin_id CHAR(4) NOT NULL,
  suryo INTEGER NOt NULL,
  PRIMARY KEY (tenpo_id, shohin_id)
);

INSERT INTO TenpoShohin 
  (
    tenpo_id,
    tenpo_mei,
    shohin_id,
    suryo
  )
VALUES
  ('000A', '東京', '0001', 30),
  ('000A', '東京', '0002', 50),
  ('000A', '東京', '0003', 15),
  ('000B', '名古屋', '0002', 30),
  ('000B', '名古屋', '0003', 120),
  ('000B', '名古屋', '0004', 20),
  ('000B', '名古屋', '0006', 10),
  ('000B', '名古屋', '0006', 40),
  ('000B', '名古屋', '0007', 40),
  ('000C', '大阪', '0003', 20),
  ('000C', '大阪', '0004', 50),
  ('000C', '大阪', '0006', 90),
  ('000C', '大阪', '0007', 70),
  ('000D', '福岡', '0001', 100)
;

SELECT 
  shohin_id, 
  shohin_mei, 
  shiire_tanka
FROM
  Shohin
WHERE shohin_id IN (
                    SELECT
                      shohin_id
                    FROM
                      TenpoShohin
                    WHERE
                      tenpo_id = '000C'
                    ) 
;