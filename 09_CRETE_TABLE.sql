CREATE TABLE ShouhinIns
(shouhin_id CHAR(4) NOT NULL,
  shouhin_mei VARCHAR(100) NOT NULL,
  shouhin_bunrui VARCHAR(100) NOT NULL,
  hanbai_tanka INTEGER DEFAULT 0,
  shiire_tanka INTEGER ,
  torokubi DATE,
  PRIMARY KEY (shouhin_id)
);