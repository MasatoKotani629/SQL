INSERT INTO `ShouhinIns` (`shouhin_id`, `shouhin_mei`,`shouhin_bunrui`,`hanbai_tanka`,`shiire_tanka`, torokubi) VALUES ('0001', 'Tシャツ','衣服',1000,500,'2009-09-20');

INSERT INTO `ShouhinIns` (`shouhin_id`, `shouhin_mei`,`shouhin_bunrui`,`hanbai_tanka`,`shiire_tanka`, torokubi) SELECT shouhin_id, shouhin_mei, shouhin_bunrui, hanbai_tanka, shiire_tanka, torokubi FROM Shouhin