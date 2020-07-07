CREATE TABLE Shouhin (
  shouhin_id CHAR(4) NOT NULL,
  shouhin_mei VARCHAR(100) Not NULL,
  shouhin_bunrui VARCHAR(32) NOT NULL,
  hanbai_tanka INTEGER,
  shiire_tanka INTEGER,
  torokubi DATE,
  PRIMARY KEY(shouhin_id)
);