--create database leyao;
use leyao;
DROP TABLE IF EXISTS `leyao_web`;
CREATE TABLE `leyao_web` (
  `tab_id` int NOT NULL AUTO_INCREMENT,
  `tab_parent_id` int NOT NULL DEFAULT 0,
  `tab_name` VARCHAR(50) NOT NULL DEFAULT '?',
  `tab_url` VARCHAR(100) NOT NULL DEFAULT '?',
  `tab_order` int NOT NULL DEFAULT -1,
  `tab_length` int NOT NULL DEFAULT -1,
  `tab_width` int NOT NULL DEFAULT -1,
  `is_delete` int NOT NULL DEFAULT 0,
  `create_username` VARCHAR(30),
  `create_timestamp` datetime,
  `update_username` VARCHAR(30),
  `update_timestamp` datetime,
  PRIMARY KEY (`tab_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into leyao.leyao_web
(tab_id,tab_parent_id,tab_name,tab_url,tab_length,tab_width,is_delete)
values
(1,0,'1','1.url',800,600,0);