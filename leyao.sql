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

INSERT INTO leyao.leyao_web (item_id,item_parent_id,item_type,item_name,item_url,item_order,item_length,item_width,is_delete,create_username,create_timestamp,update_username,update_timestamp) VALUES 
(1,0,2,'h1.jpg','header/h1.jpg',1,72,44,0,NULL,NULL,NULL,NULL)
,(2,0,2,'h2.jpg','header/h2.jpg',1,72,44,0,NULL,NULL,NULL,NULL)
,(3,0,2,'h3.jpg','header/h3.jpg',1,72,44,0,NULL,NULL,NULL,NULL)
,(4,0,1,'item_list1','header/item_list1.jpg',5,4482,2800,0,NULL,NULL,NULL,NULL)
,(5,0,1,'item_list6','item_list/item_list6.jpg',4,720,400,0,NULL,NULL,NULL,NULL)
,(6,0,1,'item_list7','item_list/item_list7.jpg',3,720,400,0,NULL,NULL,NULL,NULL)
,(7,0,1,'item_list8','item_list/item_list8.jpg',2,720,400,0,NULL,NULL,NULL,NULL)
,(8,0,1,'item_list9','item_list/item_list9.jpg',1,720,400,0,NULL,NULL,NULL,NULL)
,(9,0,3,'f1','footer/f1.jpg',1,950,300,0,NULL,NULL,NULL,NULL)
,(10,1,1,'item1','items/item1.jpg',1,950,1200,0,NULL,NULL,NULL,NULL)
;
INSERT INTO leyao.leyao_web (item_id,item_parent_id,item_type,item_name,item_url,item_order,item_length,item_width,is_delete,create_username,create_timestamp,update_username,update_timestamp) VALUES 
(11,1,1,'item2','items/item2.jpg',1,950,1200,0,NULL,NULL,NULL,NULL)
,(12,3,1,'item3','items/item3.jpg',1,950,1500,0,NULL,NULL,NULL,NULL)
,(13,3,1,'item4','items/item4.jpg',1,950,1200,0,NULL,NULL,NULL,NULL)
,(14,4,1,'item5','items/item5.jpg',1,950,1500,0,NULL,NULL,NULL,NULL)
,(15,5,1,'item6','items/item6.jpg',1,950,1500,0,NULL,NULL,NULL,NULL)
,(16,6,1,'item7','items/item7.jpg',1,950,1500,0,NULL,NULL,NULL,NULL)
,(17,7,1,'item8','items/item8.jpg',1,950,1500,0,NULL,NULL,NULL,NULL)
,(18,0,1,'item9','items/item9.jpg',1,950,1500,0,NULL,NULL,NULL,NULL)
;