--create database leyao;
use leyao;
DROP table IF EXISTS `leyao_web`;
CREATE table `leyao_web` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_parent_id` int NOT NULL DEFAULT 0,
  `item_type` int NOT NULL DEFAULT 1 COMMENT '1:item; 2:header; 3:footer; 4:audio; 5:vedio',
  `item_name` VARCHAR(50) NOT NULL DEFAULT '?',
  `item_url` VARCHAR(100) NOT NULL DEFAULT '?',
  `item_order` int NOT NULL DEFAULT -1,
  `item_length` int DEFAULT -1,
  `item_width` int DEFAULT -1,
  `is_delete` int NOT NULL DEFAULT 0,
  `create_username` VARCHAR(30),
  `create_timestamp` datetime,
  `update_username` VARCHAR(30),
  `update_timestamp` datetime,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (1,0,3,'f1','footer/f1.jpg',1,950,300,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (2,0,2,'h1','header/h1.jpg',1,72,44,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (3,0,2,'h2','header/h2.jpg',1,72,44,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (4,0,2,'h3','header/h3.jpg',1,72,44,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (6,0,1,'item_list1','item_list/item_list1.jpg',1,4482,2800,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (7,0,1,'item_list2','item_list/item_list2.jpg',2,4482,2800,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (8,0,1,'item_list3','item_list/item_list3.jpg',3,4482,2800,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (9,0,1,'item_list4','item_list/item_list4.jpg',4,4482,2800,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (10,0,1,'item_list5','item_list/item_list5.jpg',5,4482,2800,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (11,1,1,'item1','items/item1.jpg',1,950,1200,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (12,1,1,'item2','items/item2.jpg',1,950,1200,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (13,3,1,'item3','items/item3.jpg',0,950,1500,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (14,3,1,'item4','items/item4.jpg',1,950,1200,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (16,6,1,'item6','items/item6.jpg',1,950,1500,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (17,7,1,'item7','items/item7.jpg',1,950,1500,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (18,8,1,'item8','items/item8.jpg',1,950,1500,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (19,9,1,'item9','items/item9.jpg',1,950,1500,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (20,10,1,'item10','items/item10.jpg',1,950,1500,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (21,2,1,'item_list1','item_list/item_list1.jpg',1,4482,2800,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (22,2,1,'item_list2','item_list/item_list2.jpg',2,4482,2800,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (23,2,1,'item_list3','item_list/item_list3.jpg',3,4482,2800,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (24,2,1,'item_list4','item_list/item_list4.jpg',4,4482,2800,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (25,2,1,'item_list5','item_list/item_list5.jpg',5,4482,2800,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (26,21,1,'item6','items/item6.jpg',1,950,1500,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (27,22,1,'item7','items/item7.jpg',1,950,1500,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (28,23,1,'item8','items/item8.jpg',1,950,1500,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (29,24,1,'item9','items/item9.jpg',1,950,1500,0,NULL,NULL,NULL,NULL);
INSERT INTO `leyao_web` (`item_id`,`item_parent_id`,`item_type`,`item_name`,`item_url`,`item_order`,`item_length`,`item_width`,`is_delete`,`create_username`,`create_timestamp`,`update_username`,`update_timestamp`) VALUES (30,25,1,'item10','items/item10.jpg',1,950,1500,0,NULL,NULL,NULL,NULL);