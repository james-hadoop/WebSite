create database leyao;
use leyao;
DROP TABLE IF EXISTS `leyao_web`; 
CREATE TABLE `leyao_web` (
  `tab_id` int NOT NULL AUTO_INCREMENT,
  `tab_parent_id` int NOT NULL DEFAULT 0,   
  `tab_name` VARCHAR(50) NOT NULL DEFAULT '?',
  `tab_url` VARCHAR(100) NOT NULL DEFAULT '?',
  `tab_oreder` int NOT NULL DEFAULT -1,
  `create_username` VARCHAR(30),
  `create_timestamp` datetime,
  `update_username` VARCHAR(30),  
  `update_timestamp` datetime,  
  PRIMARY KEY (`tab_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;