SELECT 
	DISTINCT A1.name,
	A1.address
FROM
	Zyusho A1
INNER JOIN 
	Zyusho A2
ON 
	A1.family_id = A2.family_id
AND
	A1.address <> A2.address


INSERT INTO 
	Products
(
	name,
	price
)
VALUES
	('りんご', 50),
	('みかん', 100),
	('ぶどう', 50),
	('スイカ', 80),
	('レモン', 30),
	('いちご', 100),
	('バナナ', 100)
;

SELECT
	DISTINCT P1.name, 
	P1.price
FROM
	Products P1
INNER JOIN 
	Products P2
ON
	P1.price = P2.price
AND
	P1.name <> P2.name
;