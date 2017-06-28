use leyao;
DROP table IF EXISTS `leyao_web`;
CREATE table `leyao_web` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_parent_id` int NOT NULL DEFAULT 0,
  `item_type` int NOT NULL DEFAULT 1 COMMENT '1:picture; 2:audio; 3:vedio',
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

insert into leyao.leyao_web
(item_id,item_parent_id,item_type,item_name,item_url,item_order,item_length,item_width,is_delete)
values
(1,0,1,'1.pic','1.pic.url',1,800,600,0),
(2,1,2,'2.audio','2.audio.url',1,null,null,0),
(3,1,2,'3.vedio','3.vedio.url',1,null,null,0);