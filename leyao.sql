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

INSERT INTO `leyao_web` VALUES (1, 0, 2, 'h1', 'header/h1.jpg', 1, 72, 44, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (2, 0, 2, 'h2', 'header/h2.jpg', 1, 72, 44, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (3, 0, 2, 'h3', 'header/h3.jpg', 1, 72, 44, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (4, 0, 1, 'item_list1', 'item_list/item_list1.jpg', 10, 4482, 2800, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (5, 0, 1, 'item_list6', 'item_list/item_list6.jpg', 5, 720, 400, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (6, 0, 1, 'item_list7', 'item_list/item_list7.jpg', 4, 720, 400, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (7, 0, 1, 'item_list8', 'item_list/item_list8.jpg', 3, 720, 400, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (8, 0, 1, 'item_list9', 'item_list/item_list9.jpg', 2, 720, 400, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (9, 0, 3, 'f1', 'footer/f1.jpg', 1, 950, 300, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (10, 1, 1, 'item1', 'items/item1.jpg', 1, 950, 1200, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (11, 1, 1, 'item2', 'items/item2.jpg', 1, 950, 1200, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (12, 3, 1, 'item4', 'items/item4.jpg', 2, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (13, 3, 1, 'item3', 'items/item3.jpg', 1, 950, 1200, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (14, 4, 1, 'item5', 'items/item5.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (15, 6, 1, 'item6', 'items/item6.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (16, 7, 1, 'item7', 'items/item7.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (17, 8, 1, 'item8', 'items/item8.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (18, 29, 1, 'item9', 'items/item9.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (19, 2, 1, 'item_list11', 'item_list/item_list11.jpg', 1, 950, 950, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (20, 2, 1, 'item_list12', 'item_list/item_list12.jpg', 1, 950, 950, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (21, 2, 1, 'item_list13', 'item_list/item_list13.jpg', 1, 950, 950, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (22, 2, 1, 'item_list14', 'item_list/item_list14.jpg', 1, 950, 950, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (23, 2, 1, 'item_list15', 'item_list/item_list15.jpg', 1, 950, 950, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (24, 5, 1, 'item5', 'items/item5.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (25, 20, 1, 'item6', 'items/item6.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (26, 21, 1, 'item7', 'items/item7.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (27, 22, 1, 'item8', 'items/item8.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (28, 23, 1, 'item9', 'items/item9.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (29, 0, 1, 'item_list10', 'item_list/item_list10.jpg', 1, 720, 400, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (30, 0, 1, 'item_list2', 'item_list/item_list2.jpg', 9, 4482, 2800, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (31, 0, 1, 'item_list3', 'item_list/item_list3.jpg', 8, 4482, 2800, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (32, 0, 1, 'item_list4', 'item_list/item_list4.jpg', 7, 4482, 2800, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (33, 0, 1, 'item_list5', 'item_list/item_list5.jpg', 6, 4482, 2800, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (34, 30, 1, 'item6', 'items/item6.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (35, 31, 1, 'item7', 'items/item7.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (36, 32, 1, 'item8', 'items/item8.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
INSERT INTO `leyao_web` VALUES (37, 33, 1, 'item9', 'items/item9.jpg', 1, 950, 1500, 0, NULL, NULL, NULL, NULL);
