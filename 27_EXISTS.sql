

--000Aにあるもの以外のshohin_idを抽出------------
SELECT 
  shohin_mei, hanbai_tanka
FROM
  Shohin AS S
WHERE NOT EXISTS (
  SELECT
    *
  FROM
    TenpoShohin AS TS
  WHERE
    TS.tenpo_id = '000A'
  AND
    TS.shohin_id = S.shohin_id
);

--000Aにあるもの以外のshohin_idを抽出(000B等に000Aと同じshohin_idがあれば抽出される。)------------
SELECT 
  shohin_mei, hanbai_tanka
FROM
  Shohin AS S
WHERE EXISTS (
  SELECT
    *
  FROM
    TenpoShohin AS TS
  WHERE
    TS.tenpo_id <> '000A'
  AND
    TS.shohin_id = S.shohin_id
);