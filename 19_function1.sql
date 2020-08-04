CREATE TABLE SampleMath
(m NUMERIC (10,3),
 n INTEGER,
 p INTEGER
);

INSERT INTO SampleMath(m, n, p) VALUES (500, 0, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (-180, 0, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (NULL, NULL, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (NULL, 7, 3);
INSERT INTO SampleMath(m, n, p) VALUES (NULL, 5, 2);
INSERT INTO SampleMath(m, n, p) VALUES (NULL, 4, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (8, NULL, 3);
INSERT INTO SampleMath(m, n, p) VALUES (2.27, 1, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (5.555, 2, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (NULL, 1, NULL);
INSERT INTO SampleMath(m, n, p) VALUES (8.76, NULL, NULL);

-----絶対値--------
SELECT m,
  ABS(m) AS abs_col
FROM SampleMath;

-----剰余---------
SELECT n, p,
  MOD(n, p) AS mod_col
FROM SampleMath;

----四捨五入-------
SELECT m, n,
  ROUND(m, n) AS round_col
FROM SampleMath;