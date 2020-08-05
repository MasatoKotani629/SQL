CREATE TABLE SampleLike
(
  strcol VARCHAR(6) NOT NULL,
  PRIMARY KEY (strcol)
);

INSERT INTO SampleLike(strcol) VALUES ('abcddd');
INSERT INTO SampleLike(strcol) VALUES ('dddabc');
INSERT INTO SampleLike(strcol) VALUES ('abdddc');
INSERT INTO SampleLike(strcol) VALUES ('abcdd');
INSERT INTO SampleLike(strcol) VALUES ('ddabc');
INSERT INTO SampleLike(strcol) VALUES ('abddc');

----------前方一致--------------
SELECT
  *
FROM
  SampleLike
WHERE
  strcol LIKE 'ddd%';

----------中間一致--------------
SELECT
  *
FROM
  SampleLike
WHERE
  strcol LIKE '%ddd%';

----------後方一致--------------
SELECT
  *
FROM
  SampleLike
WHERE
  strcol LIKE '%ddd';

----------任意の文字--------------
SELECT
  *
FROM
  SampleLike
WHERE
  strcol LIKE 'abc__';