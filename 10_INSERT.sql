INSERT INTO `shohinIns` (`shohin_id`, `shohin_mei`,`shohin_bunrui`,`hanbai_tanka`,`shiire_tanka`, torokubi) VALUES ('0001', 'Tシャツ','衣服',1000,500,'2009-09-20');

INSERT INTO `shohinIns` (`shohin_id`, `shohin_mei`,`shohin_bunrui`,`hanbai_tanka`,`shiire_tanka`, torokubi) SELECT shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi FROM shohin