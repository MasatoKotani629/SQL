-----------文字から数字へ--------------------
SELECT CAST('0001' AS SIGNED INTEGER) AS int_col;

-----------文字から日付へ--------------------
SELECT CAST('2009-12-14' AS DATE) AS date_col;

-----------最初にNULLでない値を返す-----------
SELECT 
  COALESCE(NULL, 1) AS col_1,
  COALESCE(NULL,'test', 1) AS col_2,
  COALESCE(NULL, NULL, '2019-11-01') AS col_3;

-----------NULLだった場合に返す値を決める-----------
SELECT
  COALESCE(str2, 'NULLです')
FROM
  SampleStr;