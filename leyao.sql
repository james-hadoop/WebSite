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

INSERT INTO `leyao_web`(`item_id`, `item_parent_id`, `item_type`, `item_name`, `item_url`, `item_order`, `item_length`, `item_width`, `is_delete`, `create_username`, `create_timestamp`, `update_username`, `update_timestamp`) VALUES (1, 0, 1, 'lunbo1.jpg', 'lunbo1.jpg', 1, 4482, 2296, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web`(`item_id`, `item_parent_id`, `item_type`, `item_name`, `item_url`, `item_order`, `item_length`, `item_width`, `is_delete`, `create_username`, `create_timestamp`, `update_username`, `update_timestamp`) VALUES (2, 0, 1, 'lunbo2.jpg', 'lunbo2.jpg', 2, 4482, 2296, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web`(`item_id`, `item_parent_id`, `item_type`, `item_name`, `item_url`, `item_order`, `item_length`, `item_width`, `is_delete`, `create_username`, `create_timestamp`, `update_username`, `update_timestamp`) VALUES (3, 0, 1, 'lunbo3.jpg', 'lunbo3.jpg', 3, 4482, 2296, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web`(`item_id`, `item_parent_id`, `item_type`, `item_name`, `item_url`, `item_order`, `item_length`, `item_width`, `is_delete`, `create_username`, `create_timestamp`, `update_username`, `update_timestamp`) VALUES (4, 0, 1, 'lunbo4.jpg', 'lunbo4.jpg', 4, 4482, 2296, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web`(`item_id`, `item_parent_id`, `item_type`, `item_name`, `item_url`, `item_order`, `item_length`, `item_width`, `is_delete`, `create_username`, `create_timestamp`, `update_username`, `update_timestamp`) VALUES (5, 0, 1, 'lunbo5.jpg', 'lunbo5.jpg', 5, 4482, 2296, 0, NULL, NULL, NULL, NULL);
