CREATE TABLE SampleStr
(str1 VARCHAR(40),
 str2 VARCHAR(40),
 str3 VARCHAR(40)
);

INSERT INTO SampleStr(str1, str2, str3) VALUES ('あいう', 'えお', NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES ('abc', 'def', NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES ('山田', '太郎', 'です');
INSERT INTO SampleStr(str1, str2, str3) VALUES ('aaa', NULL, NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES (NULL, 'あああ', NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES ('@!#$%', NULL, NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES ('ABC', NULL, NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES ('aBC', NULL, NULL);
INSERT INTO SampleStr(str1, str2, str3) VALUES ('abc太郎', 'abc', 'ABC');
INSERT INTO SampleStr(str1, str2, str3) VALUES ('abcdefabc', 'abc', 'ABC');
INSERT INTO SampleStr(str1, str2, str3) VALUES ('ミックマック', 'ツ', 'つ');

----------文字結合-------------------
SELECT 
  str1, str2, str1 || str2 AS str_concat
FROM
  SampleStr;
----------文字結合(MySQL)-------------------
SELECT 
  str1, str2, CONCAT(str1, str2) AS str_concat
FROM
  SampleStr;
----------文字列長-------------------
SELECT 
  str1, LENGTH(str1) AS len_str
FROM
  SampleStr;

----------小文字化-------------------
SELECT 
  str1, LOWER(str1) AS low_str
FROM
  SampleStr
WHERE str1 IN('ABC', 'aBc', 'abc');

----------文字列置換-------------------
SELECT 
  str1, str2, str3, REPLACE(str1,str2,str3) AS rep_str
FROM
  SampleStr;

----------文字列切り出し-------------------
SELECT 
  str1, SUBSTRING(str1 FROM 3 FOR 2) AS sub_str
FROM
  SampleStr;