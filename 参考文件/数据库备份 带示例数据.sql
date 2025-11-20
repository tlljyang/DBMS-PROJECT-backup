/*
 Navicat Premium Dump SQL

 Source Server         : Proj
 Source Server Type    : MySQL
 Source Server Version : 90100 (9.1.0)
 Source Host           : alist.tlljyang.pp.ua:16599
 Source Schema         : project

 Target Server Type    : MySQL
 Target Server Version : 90100 (9.1.0)
 File Encoding         : 65001

 Date: 20/11/2025 23:14:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_status` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `username` (`username`),
  KEY `customer_id` (`customer_id`),
  KEY `idx_username` (`username`),
  CONSTRAINT `account_chk_1` CHECK ((`account_status` in (_utf8mb4'Active',_utf8mb4'Inactive',_utf8mb4'Suspended')))
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (1, 471, 'Wanda Clark', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (2, 624, 'Liu Yuning', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (3, 318, 'Wong Siu Wai', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (4, 742, 'Dong Yunxi', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (5, 189, 'Tao Sai Wing', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (6, 337, 'Chow Wing Fat', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (7, 656, 'Tang Ziyi', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (8, 925, 'Cynthia Ryan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (9, 819, 'Sugiyama Daisuke', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (10, 34, 'William Bryant', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (11, 10, 'Lin Jiehong', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (12, 356, 'Zhong Jiehong', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (13, 583, 'Nancy Porter', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (14, 617, 'Sylvia Weaver', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (15, 155, 'Henry Rice', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (16, 389, 'Sakurai Itsuki', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (17, 184, 'Kao Ka Fai', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (18, 932, 'Ren Xiuying', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (19, 770, 'Fukuda Mio', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (20, 596, 'Ti Chun Yu', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (21, 245, 'Loui Chung Yin', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (22, 308, 'Shi Xiuying', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (23, 450, 'Alan Hawkins', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (24, 923, 'Mao Ziyi', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (25, 515, 'Koon Wai San', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (26, 636, 'Chow Wing Suen', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (27, 962, 'Fu Shihan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (28, 357, 'Sit Sze Kwan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (29, 366, 'Guo Yuning', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (30, 34, 'Mo Lan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (31, 95, 'Lucille Stone', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (32, 181, 'Yuen Ka Keung', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (33, 600, 'Ding Lan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (34, 233, 'Miu On Na', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (35, 154, 'Kyle Nelson', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (36, 962, 'Kong Kwok Ming', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (37, 718, 'Wu Wai San', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (38, 828, 'Jesse Rose', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (39, 307, 'Sakai Mai', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (40, 664, 'Monica Porter', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (41, 55, 'Yau Sau Man', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (42, 687, 'Long Zhennan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (43, 992, 'Kim Henderson', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (44, 9, 'Song Zhennan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (45, 446, 'Carolyn Long', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (46, 358, 'Ren Xiaoming', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (47, 626, 'Yamazaki Ren', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (48, 512, 'Tsang Chung Yin', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (49, 311, 'Florence Harris', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (50, 418, 'Fujiwara Sakura', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (51, 937, 'Alfred Grant', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (52, 495, 'April Hughes', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (53, 158, 'Han Lik Sun', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (54, 974, 'Guo Lu', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (55, 355, 'Janet Green', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (56, 200, 'Sugawara Ryota', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (57, 259, 'Okamoto Mai', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (58, 787, 'Shao Yunxi', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (59, 306, 'Florence Snyder', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (60, 697, 'Christina Richardson', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (61, 356, 'Kao Hui Mei', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (62, 182, 'Tao Zhiyuan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (63, 994, 'Jin Jiehong', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (64, 778, 'Michelle Silva', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (65, 822, 'Yamada Ayano', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (66, 547, 'Liao Lan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (67, 293, 'Meng Shihan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (68, 18, 'Marjorie Herrera', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (69, 691, 'Hashimoto Momoe', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (70, 385, 'Mori Sakura', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (71, 483, 'Wang Rui', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (72, 617, 'Sandra Kennedy', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (73, 46, 'Nancy Warren', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (74, 962, 'Zhu Shihan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (75, 451, 'Hayashi Mitsuki', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (76, 323, 'Fong Tsz Hin', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (77, 993, 'Lu Lan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (78, 467, 'Edith Wells', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (79, 565, 'Lam Wai Han', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (80, 389, 'Yu Zitao', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (81, 45, 'Rodney Grant', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (82, 514, 'Matthew Salazar', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (83, 462, 'Fujii Nanami', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (84, 917, 'Hashimoto Yuto', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (85, 6, 'Hara Hana', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (86, 868, 'Nakano Rena', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (87, 895, 'Tam Cho Yee', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (88, 584, 'Kinoshita Mio', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (89, 569, 'Miyamoto Aoshi', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (90, 938, 'Yamada Ayato', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (91, 349, 'Harada Hina', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (92, 490, 'Ying Ting Fung', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (93, 447, 'Troy Wagner', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (94, 301, 'Ma On Kay', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (95, 869, 'Fujii Mio', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (96, 593, 'Sarah Patterson', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (97, 2, 'Hui Chi Yuen', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (98, 735, 'Chiang Fat', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (99, 693, 'Koo Hui Mei', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (100, 412, 'Liang Zhennan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (101, 969, 'Arai Kasumi', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (102, 843, 'Zou Jialun', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (103, 24, 'Duan Jialun', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (104, 526, 'Liao Yuning', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (105, 393, 'Fukuda Hikaru', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (106, 960, 'George Rose', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (107, 187, 'Zhong Zhennan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (108, 72, 'Matsuda Momoka', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (109, 32, 'Uchida Ayato', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (110, 747, 'Ito Akina', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (111, 389, 'Jerry Green', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (112, 587, 'Uchida Yuto', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (113, 478, 'Xia Zhennan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (114, 335, 'Chin Tin Lok', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (115, 505, 'Tao Cho Yee', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (116, 970, 'Nakayama Itsuki', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (117, 446, 'Tam On Na', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (118, 633, 'Miyamoto Itsuki', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (119, 724, 'Xia Xiuying', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (120, 209, 'Fu Lik Sun', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (121, 183, 'Gu Rui', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (122, 330, 'Tammy Sanchez', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (123, 59, 'Hasegawa Kenta', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (124, 911, 'Ogawa Rena', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (125, 79, 'Fong Ka Man', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (126, 92, 'Uchida Yuna', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (127, 167, 'Ishikawa Riku', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (128, 321, 'Choi On Na', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (129, 664, 'Fukuda Ayano', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (130, 579, 'Nicholas Griffin', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (131, 515, 'He Xiuying', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (132, 43, 'Shimizu Hikari', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (133, 29, 'Hui Ka Keung', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (134, 998, 'John Collins', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (135, 290, 'Xu Zitao', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (136, 457, 'Hung Ming', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (137, 585, 'Koo Sau Man', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (138, 794, 'Christina Silva', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (139, 189, 'Dorothy Watson', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (140, 103, 'Song Jialun', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (141, 307, 'Yin Zhennan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (142, 839, 'Beverly Ramos', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (143, 335, 'Endo Hazuki', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (144, 63, 'Jessica Aguilar', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (145, 725, 'Chic Kwok Wing', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (146, 214, 'Xie Lu', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (147, 205, 'Hirano Yuna', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (148, 623, 'Zou Jiehong', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (149, 286, 'Nakamori Ikki', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (150, 270, 'Antonio Ellis', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (151, 869, 'Mario Mills', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (152, 226, 'Man Chi Ming', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (153, 772, 'Tam Wai Yee', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (154, 978, 'Qiu Yuning', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (155, 411, 'Miyamoto Shino', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (156, 683, 'Pak Chiu Wai', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (157, 89, 'Yuen Sum Wing', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (158, 897, 'Sasaki Aoi', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (159, 999, 'Hui Hok Yau', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (160, 76, 'Ono Aoshi', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (161, 893, 'Shimizu Misaki', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (162, 777, 'Hsuan Fat', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (163, 922, 'Shannon Webb', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (164, 739, 'Sasaki Misaki', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (165, 967, 'Han Ming', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (166, 444, 'Hou Zitao', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (167, 184, 'Yamaguchi Yuna', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (168, 545, 'Wu Zhiyuan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (169, 851, 'Kwok Ming', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (170, 523, 'Fujii Akina', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (171, 558, 'Ku Chi Yuen', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (172, 512, 'Ng Fu Shing', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (173, 982, 'Ueno Eita', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (174, 641, 'Joe Watson', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (175, 920, 'Yamaguchi Ayato', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (176, 313, 'Xiao Shihan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (177, 441, 'Xiao Xiuying', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (178, 357, 'Walter Nelson', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (179, 873, 'Pan Zhennan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (180, 142, 'Noguchi Hikaru', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (181, 429, 'Ishida Eita', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (182, 182, 'Sano Kazuma', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (183, 894, 'Tang Shihan', '123abc', 'Active');
INSERT INTO `account` (`account_id`, `customer_id`, `username`, `password`, `account_status`) VALUES (184, 182, 'Song Xiuying', '123abc', 'Active');
COMMIT;

-- ----------------------------
-- Table structure for chef
-- ----------------------------
DROP TABLE IF EXISTS `chef`;
CREATE TABLE `chef` (
  `chef_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `specialty` varchar(100) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `leave_status` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`chef_id`),
  KEY `employee_id` (`employee_id`),
  KEY `leave_status` (`leave_status`),
  KEY `salary` (`salary`),
  CONSTRAINT `chef_chk_1` CHECK ((`salary` >= 0)),
  CONSTRAINT `chef_chk_2` CHECK ((`leave_status` in (_utf8mb4'Active',_utf8mb4'On Leave')))
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of chef
-- ----------------------------
BEGIN;
INSERT INTO `chef` (`chef_id`, `employee_id`, `specialty`, `salary`, `leave_status`) VALUES (1, 1, 'a', 853.80, 'Active');
INSERT INTO `chef` (`chef_id`, `employee_id`, `specialty`, `salary`, `leave_status`) VALUES (2, 2, 'a', 368.31, 'Active');
INSERT INTO `chef` (`chef_id`, `employee_id`, `specialty`, `salary`, `leave_status`) VALUES (3, 3, 'a', 476.28, 'Active');
INSERT INTO `chef` (`chef_id`, `employee_id`, `specialty`, `salary`, `leave_status`) VALUES (4, 4, 'a', 360.27, 'Active');
INSERT INTO `chef` (`chef_id`, `employee_id`, `specialty`, `salary`, `leave_status`) VALUES (5, 5, 'a', 366.60, 'Active');
INSERT INTO `chef` (`chef_id`, `employee_id`, `specialty`, `salary`, `leave_status`) VALUES (6, 6, 'a', 882.99, 'Active');
INSERT INTO `chef` (`chef_id`, `employee_id`, `specialty`, `salary`, `leave_status`) VALUES (7, 7, 'a', 755.39, 'Active');
INSERT INTO `chef` (`chef_id`, `employee_id`, `specialty`, `salary`, `leave_status`) VALUES (8, 8, 'a', 846.04, 'Active');
INSERT INTO `chef` (`chef_id`, `employee_id`, `specialty`, `salary`, `leave_status`) VALUES (9, 9, 'a', 823.65, 'Active');
INSERT INTO `chef` (`chef_id`, `employee_id`, `specialty`, `salary`, `leave_status`) VALUES (10, 10, 'a', 765.31, 'Active');
COMMIT;

-- ----------------------------
-- Table structure for cook
-- ----------------------------
DROP TABLE IF EXISTS `cook`;
CREATE TABLE `cook` (
  `cook_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `dish_id` int NOT NULL,
  `item_id` int NOT NULL,
  `count` int NOT NULL,
  `method` varchar(100) NOT NULL,
  PRIMARY KEY (`cook_id`),
  UNIQUE KEY `unique_cook_entry` (`order_id`,`dish_id`,`item_id`),
  KEY `dish_id` (`dish_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `cook_chk_1` CHECK ((`count` > 0))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cook
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `idx_customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
BEGIN;
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (1, 'Hara Yuto', '3-27-17 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (2, 'Che Hok Yau', '264 Ganlan Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (3, 'Albert Rice', '172 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (4, 'Lee Cho Yee', '77 Hanover St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (5, 'Imai Momoka', '879 State Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (6, 'Yan Zhennan', '1-7-10 Omido, Higashiosaka');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (7, 'Murata Yota', '967 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (8, 'Sakurai Minato', '952 Collier Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (9, 'Han Ka Man', '864 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (10, 'Kojima Yuna', '784 S Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (11, 'Jose Mitchell', '5-4-8 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (12, 'Tang Lu', '3-27-15 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (13, 'Wong Tsz Hin', '3-15-3 Ginza, Chuo-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (14, 'Cui Jialun', '497 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (15, 'Tao Zitao', '577 Collier Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (16, 'Sugiyama Airi', '239 Sanlitun Road, Chaoyang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (17, 'Ren Rui', '627 Pedway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (18, 'Harada Misaki', '885 Volac Park, Grantchester Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (19, 'Ichikawa Eita', '1-7-17 Omido, Higashiosaka');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (20, 'Virginia Romero', '565 Yueliu Rd, Fangshan District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (21, 'Annie Simmons', '438 Xiaoping E Rd, Baiyun ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (22, 'Mui Hiu Tung', '932 Tremont Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (23, 'Zhu Rui', '255 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (24, 'Karen Howard', '949 Huaxia St, Jinghua Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (25, 'Fukuda Yota', '418 Abingdon Rd, Cumnor');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (26, 'Okamoto Hina', '14 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (27, 'Martha Stewart', 'No.867, Dongsan Road, Erxianqiao, Chenghua District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (28, 'He Zitao', '3-27-2 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (29, 'Yam Wing Sze', '335 68 Qinghe Middle St, Haidian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (30, 'Ono Kaito', '304 FuXingMenNei Street, XiCheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (31, 'Tam Ming Sze', '7 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (32, 'Nakayama Kasumi', '864 Nostrand Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (33, 'Bernard Martin', '453 Canal Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (34, 'Aoki Daichi', 'No. 66, Shuangqing Rd, Chenghua District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (35, 'Okamoto Yamato', '999 Huaxia St, Jinghua Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (36, 'Choi Ting Fung', '54 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (37, 'Dong Ziyi', '983 East Cooke Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (38, 'Tang Zhiyuan', '9 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (39, 'Yung Ming Sze', '919 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (40, 'Yuen Wai Lam', '965 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (41, 'Cheng Anqi', '1-6-16, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (42, 'Tin Ka Man', '865 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (43, 'Shibata Aoshi', '45 Portland St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (44, 'Hui Ling Ling', '100 Bank Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (45, 'Maruyama Ryota', '949 Regent Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (46, 'Ruth Martinez', '430 The Pavilion, Lammas Field, Driftway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (47, 'Man Ka Man', '894 Tianbei 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (48, 'Yuen Sze Kwan', '472 Hinckley Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (49, 'Chiang Ching Wan', '1-5-10, Higashi-Shimbashi, Minato-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (50, 'Mui Wai Man', '633 Wicklow Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (51, 'Gong Zhiyuan', '2 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (52, 'Jin Jialun', '2-1-17 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (53, 'Chow Chung Yin', '96 NO.6, YuShuang Road, ChengHua Distric');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (54, 'Lok Ka Man', '796 Portland St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (55, 'Ogawa Momoka', '31 Mosley St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (56, 'Linda Fernandez', '5-2-2 Higashi Gotanda, Shinagawa-ku ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (57, 'Cho On Na', '568 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (58, 'Qian Xiaoming', '629 Collier Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (59, 'Nishimura Riku', '114 The Pavilion, Lammas Field, Driftway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (60, 'Joseph Hunt', '87 Alameda Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (61, 'Joanne Thompson', '296 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (62, 'Hara Itsuki', '499 East Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (63, 'Ku Kar Yan', '699 49/50 Strand, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (64, 'Takada Hina', '737 Elms Rd, Botley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (65, 'Chan Yu Ling', '827 Dongtai 5th St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (66, 'Pak Lik Sun', '140 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (67, 'Jeff Ortiz', '720 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (68, 'Tamura Miu', '863 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (69, 'Jia Zhiyuan', '4-9-15 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (70, 'Koon Ka Man', '3-15-4 Ginza, Chuo-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (71, 'Kinoshita Hina', '869 Huanqu South Street 2nd Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (72, 'Lu Jialun', '864 028 County Rd, Yanqing District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (73, 'Chan Wing Fat', '2-1-15 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (74, 'Ishii Aoshi', '305 Collier Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (75, 'Ti Wai Man', '768 Wall Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (76, 'Cao Zhiyuan', '5 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (77, 'Glenn Peterson', '3-27-18 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (78, 'Miguel Green', '2-5-8 Chitose, Atsuta Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (79, 'Goto Yuito', '1-7-7 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (80, 'Fujita Rin', '371 East Cooke Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (81, 'Endo Eita', '235 Tremont Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (82, 'Takada Sara', '990 Wooster Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (83, 'Barbara Olson', '770 Tangyuan Street 5th Alley, Airport Road, Baiyun');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (84, 'Zhong Yuning', '13-3-19 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (85, 'Gladys Bennett', '292 Wooster Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (86, 'Phyllis Campbell', '673 Xiaoping E Rd, Baiyun ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (87, 'Jean Rivera', '3-19-18 Shimizu, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (88, 'Sugiyama Nanami', '13 Huanqu South Street 2nd Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (89, 'Sakai Mio', '381 Dongtai 5th St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (90, 'Pak Sze Yu', '340 Bank Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (91, 'Mildred Mcdonald', '3-27-6 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (92, 'Zhong Yuning', '106 4th Section  Renmin South Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (93, 'Laura Gordon', '1-7-11 Omido, Higashiosaka');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (94, 'Chris Hughes', '713 Papworth Rd, Trumpington');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (95, 'Otsuka Miu', '1-1-16 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (96, 'Eugene Walker', '265 Wall Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (97, 'Joe Smith', '500 Lefeng 6th Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (98, 'Clarence Hughes', '271 Central Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (99, 'Lee Wai Man', '214 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (100, 'Qian Jiehong', '128 Fifth Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (101, 'Man Ka Fai', '1-7-1 Omido, Higashiosaka');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (102, 'Nomura Hikari', '535 Fern Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (103, 'Debbie Payne', '59 Collier Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (104, 'Jane Daniels', '3-27-5 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (105, 'Tsang Ming', '691 Elms Rd, Botley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (106, 'Sit Sai Wing', '467 Trafalgar Square, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (107, 'Jiang Jiehong', '291 Riverview Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (108, 'Kam Ching Wan', '1-5-7, Higashi-Shimbashi, Minato-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (109, 'Kato Rin', '8 Wicklow Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (110, 'Cui Lu', '501 Grape Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (111, 'Takeuchi Aoi', '830 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (112, 'Anthony Fisher', '2-3-1 Yoyogi, Shibuya-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (113, 'Yin Ka Ming', '1-1-4 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (114, 'Yue Wing Sze', '5-19-16 Shinei 4 Jo, Kiyota Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (115, 'Xu Xiaoming', '378 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (116, 'Abe Aoshi', '831 East Wangfujing Street, Dongcheng District ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (117, 'Okamoto Yota', '879 Dongtai 5th St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (118, 'Scott Nichols', '13-3-3 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (119, 'Kono Aoshi', '682 Wall Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (120, 'Tin Ka Keung', '6-1-9, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (121, 'Benjamin Hayes', '14 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (122, 'Ng Ka Fai', '732 028 County Rd, Yanqing District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (123, 'Hsuan Ming Sze', '996 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (124, 'Takeuchi Eita', '326 Wooster Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (125, 'Pang Wing Fat', '884 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (126, 'Cheung Yun Fat', '2-1-18 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (127, 'Nishimura Akina', '118 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (128, 'Pak Fat', '799 Maddox Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (129, 'He Anqi', '918 3rd Section Hongxing Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (130, 'Anne Mcdonald', '4 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (131, 'Herbert Mason', '616 028 County Rd, Yanqing District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (132, 'Ding Xiuying', '149 Shennan Ave, Futian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (133, 'Tanaka Yuito', '931 Shennan Ave, Futian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (134, 'Shi Anqi', '567 Bergen St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (135, 'Sugawara Sara', '47 Portland St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (136, 'Ando Rin', '5-19-8 Shinei 4 Jo, Kiyota Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (137, 'Matsui Rin', '797 Wall Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (138, 'Shi Yunxi', '276 Spring Gardens');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (139, 'Ueno Hana', '998 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (140, 'Barbara Baker', '570 Regent Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (141, 'Helen Woods', '723 Hongqiao Rd., Xu Hui District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (142, 'Shao Xiuying', '5-4-1 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (143, 'Yuan Lu', '105 3rd Section Hongxing Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (144, 'Meng Sai Wing', '503 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (145, 'Sakamoto Miu', '902 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (146, 'Zhao Zhennan', '3-27-12 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (147, 'Jennifer Dixon', '14 1-1715 Sekohigashi, Moriyama Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (148, 'Liao Zitao', '49 Kengmei 15th Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (149, 'Kudo Yuto', '649 FuXingMenNei Street, XiCheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (150, 'Chiba Yuna', '804 Fern Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (151, 'Nakagawa Kasumi', '877 S Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (152, 'Ma Xiaoming', '962 Dongtai 5th St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (153, 'Fan Lan', '2-1-13 Tenjinnomori, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (154, 'Peggy Cole', '292 Cyril St, Braunstone Town');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (155, 'Sugiyama Kenta', '982 East Wangfujing Street, Dongcheng District ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (156, 'Lee Sze Yu', '27 Lark Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (157, 'Deng Jiehong', '815 State Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (158, 'Lok Sze Kwan', '453 Tremont Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (159, 'Masuda Daisuke', '452 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (160, 'Xia Zhennan', '16 1-1715 Sekohigashi, Moriyama Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (161, 'Liu Zhiyuan', '1-7-13 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (162, 'Glenn Ruiz', '120 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (163, 'Hou Anqi', '5-19-9 Shinei 4 Jo, Kiyota Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (164, 'Yamamoto Yamato', '252 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (165, 'Hung Fat', '989 Pollen Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (166, 'Xiao Yuning', '729 Sanlitun Road, Chaoyang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (167, 'Shawn Walker', '382 Grape Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (168, 'Brenda Wood', '1-6-3, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (169, 'Arimura Aoi', '198 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (170, 'Joyce Gonzalez', '206 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (171, 'Mo Ming Sze', '143 East Cooke Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (172, 'Ogawa Nanami', '269 State Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (173, 'Wayne Kim', '734 Riverview Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (174, 'Chic Ting Fung', '258 68 Qinghe Middle St, Haidian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (175, 'Shimizu Ren', '883 W Ring Rd, Buji Town, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (176, 'Yoshida Mai', '3-19-7 Shimizu, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (177, 'Siu Siu Wai', '298 Wooster Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (178, 'Chiba Takuya', '10 1-1715 Sekohigashi, Moriyama Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (179, 'Sakamoto Yota', '185 Hanover Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (180, 'Yuan Xiuying', '260 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (181, 'Hsuan Chieh Lun', '633 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (182, 'Yan Zhiyuan', '135 North Michigan Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (183, 'Yoshida Daichi', '677 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (184, 'Sugawara Riku', '662 Shennan E Rd, Cai Wu Wei, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (185, 'Bobby Munoz', '1-7-1 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (186, 'Bernard Evans', '3-15-16 Ginza, Chuo-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (187, 'Hsuan Siu Wai', '530 Redfern St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (188, 'Walter Boyd', '5-2-6 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (189, 'Yung On Kay', '543 Columbia St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (190, 'Rose Dixon', '404 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (191, 'Chan Wing Kuen', '18 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (192, 'Arimura Kaito', '355 Daxin S Rd, Daxin Shangquan, Tianhe Qu');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (193, 'Nakagawa Momoe', '693 Tremont Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (194, 'Tong Chieh Lun', '373 Stephenson Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (195, 'Kondo Sakura', '13-3-13 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (196, 'Han Lan', '13-3-9 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (197, 'Siu Tin Lok', '93 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (198, 'Yu Zitao', '287 Huaxia St, Jinghua Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (199, 'Fu Xiuying', '14 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (200, 'Deng Yuning', '469 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (201, 'Yokoyama Sakura', '249 Wooster Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (202, 'Jiang Zhiyuan', '1-7-5 Omido, Higashiosaka');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (203, 'Barbara Ward', '4-9-18 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (204, 'Wei Jiehong', '882 Sanlitun Road, Chaoyang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (205, 'Yokoyama Yuna', '538 Wall Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (206, 'Arimura Aoi', '4-9-20 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (207, 'Lo Kwok Yin', '106 Pollen Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (208, 'Man Tsz Ching', '444 W Ring Rd, Buji Town, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (209, 'To Tin Wing', '19 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (210, 'Lei Lan', '2-5-7 Chitose, Atsuta Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (211, 'Sheh Wai Han', '224 Lower Temple Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (212, 'Matsui Hikaru', '3-19-11 Shimizu, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (213, 'Jin Rui', '412 68 Qinghe Middle St, Haidian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (214, 'Tan Xiaoming', '527 West Chang\'an Avenue, Xicheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (215, 'Jia Shihan', '88 Pedway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (216, 'Tamura Misaki', '126 Trafalgar Square, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (217, 'Phillip Williams', '2-5-11 Chitose, Atsuta Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (218, 'Sun Xiuying', '591 Lark Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (219, 'Zeng Zhiyuan', '732 Stephenson Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (220, 'Koyama Yuna', '967 The Pavilion, Lammas Field, Driftway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (221, 'Marvin Spencer', '244 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (222, 'Cui Jiehong', '366 New Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (223, 'Qin Jiehong', '1-7-11 Omido, Higashiosaka');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (224, 'Fujii Yuto', '4-9-17 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (225, 'Tina Hawkins', '947 Binchuan Rd, Minhang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (226, 'Dai Yuning', '1-5-18, Higashi-Shimbashi, Minato-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (227, 'Li Zitao', '15 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (228, 'Dawn Patterson', '502 Elms Rd, Botley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (229, 'Fujii Hazuki', '370 Trafalgar Square, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (230, 'Herbert Hunt', '2-1-20 Tenjinnomori, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (231, 'Roy Lopez', '2-3-14 Yoyogi, Shibuya-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (232, 'Edith Mendoza', '363 Wicklow Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (233, 'Hsuan Chun Yu', '55 West Market Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (234, 'Kenneth Stewart', '693 Shanhu Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (235, 'Siu Wing Fat', '551 Maddox Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (236, 'Liao Yuning', '822 Tangyuan Street 5th Alley, Airport Road, Baiyun');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (237, 'Kato Sakura', '16 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (238, 'Sit Wing Sze', '655 Spring Gardens');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (239, 'Lam Ka Ming', '634 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (240, 'Tamura Takuya', '162 S Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (241, 'Jennifer Daniels', '991 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (242, 'Yue Ka Fai', '4-9-16 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (243, 'Xue Lu', '148 Abingdon Rd, Cumnor');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (244, 'Zhu Zitao', '2-5-15 Chitose, Atsuta Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (245, 'Tanaka Rena', '1-7-1 Omido, Higashiosaka');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (246, 'Rodney Simmons', '475 East Wangfujing Street, Dongcheng District ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (247, 'Tian Yuning', '11 Riverview Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (248, 'Yu Lan', '568 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (249, 'Ruth Rice', '986 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (250, 'Fu Ling Ling', '601 Xiaoping E Rd, Baiyun ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (251, 'Xie Zhennan', '306 Pollen Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (252, 'Frederick Brooks', '343 The Pavilion, Lammas Field, Driftway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (253, 'Yin Jialun', '1-1-19 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (254, 'Ren Lu', '1-6-18, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (255, 'Lo Yun Fat', '3-9-17 Gakuenminami');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (256, 'Sugawara Kenta', '309 Abingdon Rd, Cumnor');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (257, 'Xie Zitao', '500 Collier Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (258, 'Fong Hui Mei', '641 Rush Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (259, 'Lam On Kay', '283 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (260, 'Tong Kwok Ming', '748 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (261, 'Huang Ziyi', '596 Jiangnan West Road, Haizhu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (262, 'Fujii Airi', '334 Edward Ave, Braunstone Town');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (263, 'Deborah Allen', '992 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (264, 'Yamashita Aoshi', '6-1-9, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (265, 'Hou Xiuying', '71 Alameda Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (266, 'Mak Yu Ling', '2-5-4 Chitose, Atsuta Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (267, 'Ikeda Yuito', '540 East Cooke Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (268, 'Jerry Mason', '959 Dong Zhi Men, Dongcheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (269, 'Dai Jialun', '1-7-7 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (270, 'Jean Scott', '983 FuXingMenNei Street, XiCheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (271, 'Lau Ming Sze', '588 1st Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (272, 'Han Sze Yu', '362 Central Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (273, 'Koo Chi Ming', '191 Yueliu Rd, Fangshan District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (274, 'Fong Yu Ling', '3-27-19 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (275, 'Siu Wing Fat', '9 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (276, 'Ng Wing Sze', '631 Pollen Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (277, 'Ishida Momoka', '6-1-15, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (278, 'Siu Wing Sze', '652 West Market Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (279, 'Pan Xiuying', '851 Volac Park, Grantchester Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (280, 'Duan Shihan', '18 East Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (281, 'Rosa Vargas', '450 S Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (282, 'Cheung Chi Ming', '347 Tianbei 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (283, 'Liao Wai Lam', '65 Daxin S Rd, Daxin Shangquan, Tianhe Qu');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (284, 'Jacob Fernandez', '2-3-13 Yoyogi, Shibuya-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (285, 'Okamoto Eita', '4-9-3 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (286, 'Qin Rui', '58 Alameda Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (287, 'Ono Yuna', '673 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (288, 'Ando Ayano', '6-1-20, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (289, 'Qiu Rui', '6 Shanhu Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (290, 'Wu Anqi', '256 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (291, 'Ng On Na', '352 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (292, 'Liao Jiehong', '3-19-14 Shimizu, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (293, 'Tsui Hok Yau', '372 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (294, 'Meng Ziyi', '2-5-11 Chitose, Atsuta Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (295, 'Pak Lai Yan', '41 Volac Park, Grantchester Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (296, 'Ishida Yuna', '543 Maddox Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (297, 'Kato Mio', '59 Central Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (298, 'Fong On Kay', '3 68 Qinghe Middle St, Haidian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (299, 'Phyllis Spencer', '624 Pedway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (300, 'Nakayama Hana', '13 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (301, 'Yue Tsz Ching', '443 Earle Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (302, 'Carl Hughes', '683 Tianhe Road, Tianhe District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (303, 'James Foster', '5-4-10 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (304, 'Shen Xiuying', '81 Osney Mead');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (305, 'Li Zitao', '526 Regent Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (306, 'Abe Ikki', '162 Dongtai 5th St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (307, 'Miyazaki Eita', '195 Abingdon Rd, Cumnor');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (308, 'Nakayama Eita', '461 East Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (309, 'Christopher Freeman', '159 Figueroa Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (310, 'Fong Sai Wing', '508 028 County Rd, Yanqing District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (311, 'Terry Morris', '12 1-1715 Sekohigashi, Moriyama Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (312, 'Jane Barnes', '815 Collier Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (313, 'Hao Zhiyuan', '382 Spring Gardens');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (314, 'Fung Tin Wing', '714 Regent Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (315, 'Ng Chieh Lun', '271 Tianhe Road, Tianhe District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (316, 'Matsumoto Aoi', '814 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (317, 'He Zhiyuan', '5-2-1 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (318, 'Zhu Lu', '316 Narborough Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (319, 'Aaron West', '5 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (320, 'Du Rui', '10 1-1715 Sekohigashi, Moriyama Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (321, 'Nakano Sara', '934 Collier Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (322, 'Yung Sze Kwan', '22 Earle Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (323, 'Sit Fat', '81 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (324, 'Mildred Hunter', '449 Nostrand Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (325, 'Mori Itsuki', '201 Osney Mead');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (326, 'Iwasaki Hazuki', '225 Sackville St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (327, 'Mok Ming', '1-6-9, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (328, 'Ogawa Kazuma', '660 Shennan Ave, Futian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (329, 'Ku Chi Yuen', '6-1-18, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (330, 'Tammy Williams', '2 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (331, 'Jacqueline Murphy', '198 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (332, 'Peng Shihan', '335 Fern Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (333, 'Shimizu Hana', '176 Fifth Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (334, 'Endo Hazuki', '240 Wooster Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (335, 'Fan Jiehong', '337 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (336, 'Takeuchi Akina', '596 Narborough Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (337, 'Elaine Freeman', '553 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (338, 'Fang Lu', '960 Collier Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (339, 'Alfred Gray', '479 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (340, 'Stephen Silva', '163 Jingtian East 1st St, Futian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (341, 'Grace Woods', '769 Trafalgar Square, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (342, 'He Yunxi', '3 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (343, 'Matsumoto Riku', '1-1-5 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (344, 'Gong Yuning', '121 Lodge Ln, Toxteth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (345, 'Mo Wai Yee', '313 49/50 Strand, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (346, 'Barbara Jones', '171 Xiaoping E Rd, Baiyun ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (347, 'Yue Tsz Ching', '880 Tianhe Road, Tianhe District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (348, 'Iwasaki Ayano', '813 Riverview Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (349, 'Murakami Hikari', '965 Lefeng 6th Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (350, 'Jeffrey Mills', '447 NO.6, YuShuang Road, ChengHua Distric');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (351, 'He Yunxi', '298 Hinckley Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (352, 'Siu Ching Wan', '5-19-9 Shinei 4 Jo, Kiyota Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (353, 'Miguel Stone', '18 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (354, 'Tao Ching Wan', '1-5-15, Higashi-Shimbashi, Minato-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (355, 'Jin Shihan', '46 Lefeng 6th Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (356, 'Judith Daniels', '443 East Cooke Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (357, 'Shannon Mason', '786 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (358, 'Tong Wai Man', '898 Aigburth Rd, Aigburth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (359, 'Koon Hok Yau', '532 Wicklow Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (360, 'Siu Ming Sze', '695 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (361, 'Okada Ren', '3-9-15 Gakuenminami');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (362, 'Qin Xiuying', '117 49/50 Strand, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (363, 'Kwan Chung Yin', '854 Alameda Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (364, 'Kono Kaito', '931 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (365, 'Shimizu Mitsuki', '972 Kengmei 15th Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (366, 'Sit Suk Yee', '694 Earle Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (367, 'Jiang Lu', '889 Dong Zhi Men, Dongcheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (368, 'Li Yuning', '533 State Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (369, 'Ku On Kay', '529 Lefeng 6th Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (370, 'Yip Wai Man', '925 Tremont Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (371, 'Nakamori Hazuki', '52 68 Qinghe Middle St, Haidian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (372, 'Theodore Tran', '833 Earle Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (373, 'Hao Ziyi', '762 Canal Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (374, 'Fujiwara Rena', '403 Elms Rd, Botley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (375, 'Yu Zhiyuan', '333 The Pavilion, Lammas Field, Driftway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (376, 'Sarah Brooks', '1-5-6, Higashi-Shimbashi, Minato-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (377, 'Luo Zhiyuan', '749 Pedway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (378, 'Pak Chung Yin', '684 Pedway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (379, 'Kwong Wai Han', '127 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (380, 'Ueno Akina', '758 Sackville St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (381, 'Kato Rena', '1-7-16 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (382, 'Mo Ziyi', '925 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (383, 'Miguel Edwards', '667 Rush Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (384, 'Kondo Sakura', '415 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (385, 'Tamura Miu', '879 39 William IV St, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (386, 'Matsumoto Yuto', '525 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (387, 'Shen Yunxi', '603 Kengmei 15th Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (388, 'Wu Tsz Ching', '4-9-13 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (389, 'Chu On Na', '272 Tangyuan Street 5th Alley, Airport Road, Baiyun');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (390, 'Che Wing Sze', '910 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (391, 'Tina Campbell', '677 Shennan Ave, Futian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (392, 'Noguchi Yuto', '3-27-9 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (393, 'Wang Zitao', '216 Shennan E Rd, Cai Wu Wei, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (394, 'Kimura Rin', '1-1-6 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (395, 'Yan Yuning', '842 Lefeng 6th Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (396, 'Mori Shino', '5-2-7 Higashi Gotanda, Shinagawa-ku ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (397, 'Okamoto Akina', '278 Fern Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (398, 'Okada Kaito', '120 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (399, 'Fu Tin Wing', '986 North Michigan Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (400, 'Mok Wing Fat', '99 Canal Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (401, 'Fujiwara Momoka', '108 Lower Temple Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (402, 'Ichikawa Kasumi', '52 39 William IV St, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (403, 'Zeng Anqi', '1-1-7 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (404, 'Clifford Aguilar', '17 2nd Zhongshan Road, Yuexiu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (405, 'Ishida Kasumi', '431 Central Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (406, 'Yip Chung Yin', '577 Pollen Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (407, 'Phyllis Peterson', '261 State Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (408, 'Kyle Ramos', '13 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (409, 'Suzuki Eita', '794 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (410, 'Janet Stevens', '1-6-13, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (411, 'Xu Lu', '600 Hinckley Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (412, 'Francis Garza', '131 Daxin S Rd, Daxin Shangquan, Tianhe Qu');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (413, 'He Xiuying', '619 State Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (414, 'Lin Xiaoming', '914 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (415, 'Yuen Sze Kwan', '190 Columbia St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (416, 'Liao Ka Fai', '961 Narborough Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (417, 'Nakagawa Kasumi', '719 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (418, 'Ho Hui Mei', '556 Fern Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (419, 'Fukuda Momoe', '461 68 Qinghe Middle St, Haidian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (420, 'Xue Lu', '2-1-17 Tenjinnomori, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (421, 'Kathy Crawford', '4-9-3 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (422, 'Randall Murphy', '577 Nostrand Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (423, 'Bobby West', 'No.155, Dongsan Road, Erxianqiao, Chenghua District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (424, 'Bruce Martin', '972 Middle Huaihai Road, Huangpu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (425, 'Tong Ka Ming', '1-7-10 Omido, Higashiosaka');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (426, 'Yang Rui', 'No. 471, Shuangqing Rd, Chenghua District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (427, 'Shao Xiuying', '538 39 William IV St, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (428, 'Maruyama Takuya', '21 Wall Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (429, 'Ying Kwok Yin', '514 West Market Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (430, 'Sakurai Nanami', '5-2-11 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (431, 'Yau Sum Wing', '898 Hanover St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (432, 'Chow Chiu Wai', '88 Fifth Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (433, 'Yuan Zhiyuan', '3-9-1 Gakuenminami');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (434, 'Song Ziyi', '289 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (435, 'Anthony Baker', '833 Figueroa Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (436, 'Liao Kar Yan', '741 Tremont Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (437, 'Sato Miu', '178 Nostrand Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (438, 'Inoue Rena', '626 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (439, 'Ota Seiko', '726 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (440, 'Lui Ching Wan', '372 New Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (441, 'Alice Rivera', '999 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (442, 'Che Wing Fat', '883 Sanlitun Road, Chaoyang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (443, 'Liao Ming', '294 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (444, 'Ito Momoe', '264 Ganlan Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (445, 'Alan Clark', '926 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (446, 'Matsumoto Aoshi', '16 3rd Section Hongxing Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (447, 'Pak Wing Sze', '57 Xiaoping E Rd, Baiyun ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (448, 'Shi Zhennan', '5-19-8 Shinei 4 Jo, Kiyota Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (449, 'Travis Aguilar', '575 Nostrand Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (450, 'Valerie Cook', '17 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (451, 'Gerald Patel', '909 Park End St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (452, 'Tsang Wai Han', '539 Hongqiao Rd., Xu Hui District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (453, 'Anne Warren', '441 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (454, 'Luo Anqi', '658 Little Clarendon St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (455, 'Jose Stevens', '714 Hongqiao Rd., Xu Hui District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (456, 'Maeda Mio', '2-1-9 Tenjinnomori, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (457, 'Yung Hiu Tung', '5-4-6 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (458, 'Morita Nanami', '170 49/50 Strand, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (459, 'Mak Tin Wing', '957 State Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (460, 'Qin Lu', '394 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (461, 'Ono Tsubasa', '2-1-6 Tenjinnomori, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (462, 'Tang Wai Man', '4 Abingdon Rd, Cumnor');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (463, 'Mao Zitao', '561 Pollen Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (464, 'Wu Ziyi', '5-2-17 Higashi Gotanda, Shinagawa-ku ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (465, 'Meng Anqi', '3-15-6 Ginza, Chuo-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (466, 'Fukuda Yuto', '989 Fern Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (467, 'Louis Soto', '8 Xiaoping E Rd, Baiyun ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (468, 'Hsuan Wai Han', '945 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (469, 'Yao Xiaoming', '165 Pedway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (470, 'Loui Ka Ling', '5-19-8 Shinei 4 Jo, Kiyota Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (471, 'Yang Zhiyuan', '4-9-5 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (472, 'Yuen Wing Suen', '2-3-13 Yoyogi, Shibuya-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (473, 'Yao Anqi', '74 Volac Park, Grantchester Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (474, 'Lam Wai Lam', '6-1-10, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (475, 'Feng Jiehong', '15 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (476, 'Harry Fisher', '832 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (477, 'Judy Robinson', '5-4-12 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (478, 'Mike Guzman', '827 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (479, 'Arthur Gibson', '635 Osney Mead');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (480, 'Jacob Murray', '2-1-13 Tenjinnomori, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (481, 'Iwasaki Hina', '789 Narborough Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (482, 'Edward Gibson', '579 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (483, 'Heung Hok Yau', '3-15-6 Ginza, Chuo-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (484, 'Okamoto Sara', '1-7-1 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (485, 'To Yun Fat', '5-2-12 Higashi Gotanda, Shinagawa-ku ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (486, 'Sherry Silva', '881 Volac Park, Grantchester Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (487, 'Gregory Gomez', '562 4th Section  Renmin South Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (488, 'Lo Wing Fat', '181 Kengmei 15th Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (489, 'Miyamoto Momoka', '3-19-3 Shimizu, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (490, 'Cheung Sze Yu', '4-9-18 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (491, 'Lui Cho Yee', '5-2-15 Higashi Gotanda, Shinagawa-ku ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (492, 'Wei Ziyi', '2-5-5 Chitose, Atsuta Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (493, 'Xu Lan', '5-4-9 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (494, 'Eva Perry', '813 3rd Section Hongxing Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (495, 'Ren Yuning', '2-5-17 Chitose, Atsuta Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (496, 'Fong Chieh Lun', '5-2-15 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (497, 'Han Chiu Wai', '162 Diplomacy Drive');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (498, 'Kathy Wood', '283 Middle Huaihai Road, Huangpu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (499, 'Lau Ka Fai', '882 Grape Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (500, 'Yeung Ka Keung', '371 FuXingMenNei Street, XiCheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (501, 'Xiao Anqi', '16 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (502, 'Jin Yunxi', '969 Park End St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (503, 'Troy Wood', '3-15-2 Ginza, Chuo-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (504, 'Matsui Yuto', '734 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (505, 'Jiang Zhennan', '1-7-7 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (506, 'Yang Jialun', '8 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (507, 'Huang Yuning', '556 49/50 Strand, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (508, 'Arimura Akina', '458 S Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (509, 'Kobayashi Daisuke', '4-9-17 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (510, 'Wu Rui', '501 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (511, 'Chang Hok Yau', '681 Tianhe Road, Tianhe District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (512, 'Cynthia Kelley', '198 4th Section  Renmin South Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (513, 'Hui Wing Sze', '876 Wall Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (514, 'Mao Anqi', '2-1-7 Tenjinnomori, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (515, 'Carrie Walker', '663 Fifth Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (516, 'Lillian Taylor', '19 1-1715 Sekohigashi, Moriyama Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (517, 'Joseph Grant', '292 FuXingMenNei Street, XiCheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (518, 'Qiu Xiuying', '5-2-3 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (519, 'Saito Seiko', '467 Binchuan Rd, Minhang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (520, 'Todd Parker', '960 Stephenson Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (521, 'Wang Anqi', '634 West Market Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (522, 'Yue Wai Man', '134 2nd Zhongshan Road, Yuexiu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (523, 'Su Jiehong', '6 1-1715 Sekohigashi, Moriyama Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (524, 'Kobayashi Hikaru', '653 Osney Mead');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (525, 'Tam Tsz Ching', '902 Tianhe Road, Tianhe District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (526, 'Jiang Zhiyuan', '584 East Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (527, 'Mok Suk Yee', '313 Earle Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (528, 'Nicholas Fisher', '946 Diplomacy Drive');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (529, 'Teresa Soto', '587 4th Section  Renmin South Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (530, 'Dong Rui', 'No.49, Dongsan Road, Erxianqiao, Chenghua District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (531, 'Frank Simmons', '558 2nd Zhongshan Road, Yuexiu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (532, 'Chiang Wai Han', '2-3-2 Yoyogi, Shibuya-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (533, 'Nakajima Sara', '2-5-12 Chitose, Atsuta Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (534, 'Kaneko Mio', '725 2nd Zhongshan Road, Yuexiu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (535, 'Ashley Soto', '1-6-8, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (536, 'Travis Anderson', '3 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (537, 'Tam Cho Yee', '496 Yueliu Rd, Fangshan District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (538, 'Michael Hernandez', '5-19-7 Shinei 4 Jo, Kiyota Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (539, 'He Jiehong', '816 North Michigan Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (540, 'Leung Chun Yu', '848 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (541, 'Sato Hikaru', '502 Sackville St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (542, 'April Meyer', '4-9-5 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (543, 'Amy Rivera', '880 Figueroa Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (544, 'Wong Ching Wan', '590 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (545, 'Sasaki Shino', '593 Aigburth Rd, Aigburth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (546, 'Lok Wing Fat', '164 Figueroa Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (547, 'Yu Ziyi', '594 Figueroa Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (548, 'Kinoshita Kasumi', '220 Kengmei 15th Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (549, 'Jerry Moore', '661 Stephenson Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (550, 'Koon Kar Yan', '4-9-7 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (551, 'Liao Fat', '3 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (552, 'Xie Rui', '3-19-8 Shimizu, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (553, 'Deng Zhiyuan', '251 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (554, 'He Jialun', '453 Kengmei 15th Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (555, 'Okada Seiko', '207 Spring Gardens');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (556, 'Fu Xiuying', '106 West Chang\'an Avenue, Xicheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (557, 'Kaneko Yuto', '5-4-10 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (558, 'Nakano Takuya', '137 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (559, 'Luo Lan', '732 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (560, 'Xu Ziyi', '44 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (561, 'Xia Lu', '521 East Wangfujing Street, Dongcheng District ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (562, 'Wei Rui', '551 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (563, 'Kimberly Hunt', '298 East Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (564, 'Steven Young', '953 Spring Gardens');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (565, 'Shannon Mendoza', '915 The Pavilion, Lammas Field, Driftway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (566, 'Che Wai Man', '413 Figueroa Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (567, 'Tang Xiuying', '4 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (568, 'Jia Anqi', '79 Hongqiao Rd., Xu Hui District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (569, 'Bryan Cooper', '606 Dong Zhi Men, Dongcheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (570, 'Betty Stevens', '223 Narborough Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (571, 'Jin Shihan', '1-7-14 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (572, 'Albert Patterson', '5-2-17 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (573, 'Wu Xiaoming', '855 The Pavilion, Lammas Field, Driftway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (574, 'Jia Xiuying', '438 W Ring Rd, Buji Town, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (575, 'Lai Kwok Ming', '14 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (576, 'Zhu Rui', '13-3-8 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (577, 'Nicholas Jordan', '802 New Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (578, 'Liu Yuning', '867 West Market Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (579, 'Hu Lan', '5-4-12 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (580, 'Dong Lu', '13-3-2 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (581, 'Nakagawa Ren', '972 Rush Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (582, 'Kao On Na', '2-1-2 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (583, 'Yam Wing Sze', '700 Volac Park, Grantchester Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (584, 'Ernest Barnes', '850 Fifth Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (585, 'Iwasaki Airi', '335 Abingdon Rd, Cumnor');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (586, 'Masuda Sakura', '276 Redfern St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (587, 'Valerie Weaver', '13-3-17 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (588, 'Harry Medina', '366 Abingdon Rd, Cumnor');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (589, 'Kimura Yuito', '132 Wall Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (590, 'Koon Siu Wai', '569 Shanhu Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (591, 'Tong Cho Yee', '158 Lodge Ln, Toxteth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (592, 'Takeda Yota', '698 Huaxia St, Jinghua Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (593, 'Chiba Ren', '936 Tianhe Road, Tianhe District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (594, 'Yuen Lik Sun', '160 028 County Rd, Yanqing District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (595, 'Yau Chieh Lun', '85 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (596, 'Shibata Mio', '624 Sanlitun Road, Chaoyang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (597, 'Xu Zhennan', '13-3-17 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (598, 'Nakajima Hina', '657 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (599, 'Louise Price', '849 Edward Ave, Braunstone Town');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (600, 'Angela Murphy', '2-1-3 Tenjinnomori, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (601, 'Alice Hunt', '21 Abingdon Rd, Cumnor');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (602, 'Matsumoto Mai', '12 1-1715 Sekohigashi, Moriyama Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (603, 'Cao Yuning', '749 Portland St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (604, 'Kyle Rose', '570 Canal Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (605, 'Nakayama Yota', '2-1-14 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (606, 'Ichikawa Aoshi', '836 Osney Mead');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (607, 'Yin Wing Kuen', '396 Shanhu Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (608, 'Zhang Zitao', 'No. 13, Shuangqing Rd, Chenghua District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (609, 'Jia Zitao', '862 Edward Ave, Braunstone Town');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (610, 'Ralph Price', '970 Shanhu Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (611, 'Nakajima Hazuki', '907 Canal Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (612, 'Yam Ka Keung', '160 Aigburth Rd, Aigburth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (613, 'Yue Chi Ming', '1-1-9 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (614, 'Xu Jiehong', '6-1-13, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (615, 'Fan Xiaoming', '461 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (616, 'He Zhiyuan', '111 Wooster Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (617, 'Yip Ka Fai', '252 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (618, 'Wanda Medina', '472 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (619, 'Su Xiaoming', '756 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (620, 'Teresa Allen', '905 49/50 Strand, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (621, 'Lok Fu Shing', '576 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (622, 'Sarah Wagner', '988 Riverview Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (623, 'Sylvia Collins', '601 Jingtian East 1st St, Futian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (624, 'Tina Peterson', '2-3-19 Yoyogi, Shibuya-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (625, 'Linda Moore', '6-1-18, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (626, 'Ishikawa Miu', '642 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (627, 'Tang Zhiyuan', '627 Whitehouse Lane, Huntingdon Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (628, 'Jack Dixon', '467 The Pavilion, Lammas Field, Driftway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (629, 'Yu Shihan', '638 Binchuan Rd, Minhang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (630, 'Hayashi Daichi', '663 Stephenson Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (631, 'Xu Zhennan', '171 68 Qinghe Middle St, Haidian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (632, 'Maruyama Daisuke', '637 Shanhu Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (633, 'Marilyn Scott', '6-1-7, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (634, 'Fujii Akina', '5-4-3 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (635, 'Andrew Rice', '835 1st Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (636, 'Lau Sum Wing', '324 Dong Zhi Men, Dongcheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (637, 'Cheng Sze Yu', '444 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (638, 'Stephen Salazar', '784 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (639, 'Feng Jialun', '884 Sackville St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (640, 'Lei Ziyi', '5-2-16 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (641, 'Travis Murray', '11 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (642, 'Zhou Xiuying', '983 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (643, 'Miu Sze Yu', '755 Alameda Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (644, 'Vincent Diaz', '2-3-9 Yoyogi, Shibuya-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (645, 'Yeow Chi Yuen', '333 Lodge Ln, Toxteth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (646, 'Fred Reyes', '145 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (647, 'To Wai San', '411 Central Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (648, 'Shi Ziyi', '1-1-11 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (649, 'Koyama Shino', '1-6-1, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (650, 'Chin Hok Yau', '834 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (651, 'Wu Ming Sze', '1-7-4 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (652, 'Leung Ka Ling', '5-2-17 Higashi Gotanda, Shinagawa-ku ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (653, 'Paula Miller', '367 Trafalgar Square, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (654, 'Wong Kar Yan', '4-9-12 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (655, 'Chen Anqi', '909 Huanqu South Street 2nd Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (656, 'Tong Fat', '452 Riverview Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (657, 'Sakamoto Ren', '3-27-3 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (658, 'Han Yunxi', '244 Yueliu Rd, Fangshan District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (659, 'Mao Yuning', '1-7-16 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (660, 'Anne Scott', '1-6-6, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (661, 'Theodore Wallace', '678 Alameda Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (662, 'Keith Mitchell', '113 Wicklow Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (663, 'Xu Lan', '657 Papworth Rd, Trumpington');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (664, 'Troy Peterson', '439 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (665, 'Feng Ziyi', '643 Lefeng 6th Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (666, 'Ando Nanami', '585 Dongtai 5th St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (667, 'Shi Shihan', '3-9-2 Gakuenminami');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (668, 'Tang Shihan', '160 Kengmei 15th Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (669, 'Wong Wing Fat', '485 Jiangnan West Road, Haizhu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (670, 'Lam Hui Mei', '872 Redfern St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (671, 'Daniel Adams', '157 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (672, 'Marie Mendez', '814 Mosley St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (673, 'Jason Nichols', '595 Grape Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (674, 'Lei Zitao', '976 Wall Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (675, 'Tina Gomez', '692 Nostrand Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (676, 'Chang Yunxi', '564 Lodge Ln, Toxteth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (677, 'Kaneko Daichi', '301 Whitehouse Lane, Huntingdon Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (678, 'Kato Itsuki', '200 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (679, 'Miyazaki Momoka', '291 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (680, 'Shibata Tsubasa', '10 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (681, 'Grace Shaw', '778 Fifth Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (682, 'Lam Hok Yau', '259 Mosley St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (683, 'Dong Anqi', '641 Riverview Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (684, 'Ono Sakura', '380 Volac Park, Grantchester Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (685, 'Ishida Ikki', '224 028 County Rd, Yanqing District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (686, 'Hasegawa Yuto', '825 Middle Huaihai Road, Huangpu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (687, 'Sakurai Rena', '348 Hinckley Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (688, 'Yan Yunxi', '1-1-10 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (689, 'Fukuda Miu', '454 NO.6, YuShuang Road, ChengHua Distric');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (690, 'Xiang Shihan', '3-9-5 Gakuenminami');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (691, 'Yao Xiaoming', '384 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (692, 'Yam Tin Lok', '16 Hanover Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (693, 'Bryan Webb', '684 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (694, 'Mui Ching Wan', '1-5-13, Higashi-Shimbashi, Minato-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (695, 'Fujii Rena', '301 68 Qinghe Middle St, Haidian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (696, 'Takada Airi', '861 W Ring Rd, Buji Town, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (697, 'Yau Wing Sze', '3-15-12 Ginza, Chuo-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (698, 'Elizabeth Henry', '589 Lark Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (699, 'Carl Rose', '222 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (700, 'Hirano Daichi', '1-5-16, Higashi-Shimbashi, Minato-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (701, 'Joan Fox', '5-4-8 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (702, 'Valerie Ellis', '542 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (703, 'Alice Patel', '1-7-15 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (704, 'Xu Jiehong', '790 Canal Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (705, 'Kim Stone', '725 Ganlan Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (706, 'Chan Ka Ling', '836 East Cooke Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (707, 'Zhong Ziyi', '944 Central Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (708, 'Kim Harris', '797 Xiaoping E Rd, Baiyun ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (709, 'Cheng Sze Yu', '43 Regent Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (710, 'Sharon West', '309 Redfern St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (711, 'Sun Zitao', '716 Abingdon Rd, Cumnor');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (712, 'Yue Tin Wing', '5-19-15 Shinei 4 Jo, Kiyota Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (713, 'Sato Aoi', '819 028 County Rd, Yanqing District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (714, 'Matsuda Hazuki', '587 Whitehouse Lane, Huntingdon Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (715, 'Liang Lu', '13-3-10 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (716, 'Yuen Chi Ming', '858 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (717, 'Lam Chi Ming', '943 S Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (718, 'Lee Ka Ming', '76 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (719, 'Saito Riku', '906 Dongtai 5th St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (720, 'Arthur Gibson', '1-1-17 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (721, 'Liao Chun Yu', '47 Whitehouse Lane, Huntingdon Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (722, 'Nakamura Kaito', '1 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (723, 'Matthew Ryan', '914 Bergen St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (724, 'Zhou Rui', '405 Bank Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (725, 'Xie Zhennan', '104 Lark Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (726, 'Ishii Rena', '833 Middle Huaihai Road, Huangpu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (727, 'Cao Zhiyuan', '365 Cannon Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (728, 'Hara Hina', '7 Spring Gardens');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (729, 'Nakayama Mai', '225 Regent Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (730, 'Ishida Hana', '9 49/50 Strand, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (731, 'Ono Sakura', '131 NO.6, YuShuang Road, ChengHua Distric');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (732, 'Ho Chi Yuen', '390 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (733, 'Xiong Rui', '851 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (734, 'Gong Lan', '297 Maddox Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (735, 'So Wing Sze', '364 Pedway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (736, 'Takeuchi Nanami', '4-9-1 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (737, 'Yin Zitao', '341 Portland St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (738, 'Feng Lan', '57 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (739, 'Murakami Rin', '803 State Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (740, 'Fang Shihan', '278 1st Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (741, 'Ye Zhennan', '656 Hanover Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (742, 'Shing Sze Yu', '5-19-10 Shinei 4 Jo, Kiyota Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (743, 'Cheng Tin Lok', '1-6-5, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (744, 'Shi Lan', '3-19-11 Shimizu, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (745, 'Gong Yuning', '685 Fifth Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (746, 'Sato Ikki', '920 Pedway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (747, 'Julie Reynolds', '337 Huaxia St, Jinghua Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (748, 'Chic Ka Ming', '367 State Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (749, 'Nakamura Eita', '966 Lark Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (750, 'Yuen Kar Yan', '3-15-16 Ginza, Chuo-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (751, 'Michelle Nguyen', '559 Lower Temple Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (752, 'Fan Wai Yee', '3-19-7 Shimizu, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (753, 'Song Xiuying', '853 Diplomacy Drive');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (754, 'Rebecca Rogers', '3-27-20 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (755, 'Tina Daniels', '360 Wooster Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (756, 'Glenn Sanchez', '789 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (757, 'Lee Gonzalez', '639 East Wangfujing Street, Dongcheng District ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (758, 'Aoki Yuto', '16 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (759, 'Nakamura Yuito', '697 3rd Section Hongxing Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (760, 'Kam Kwok Wing', '323 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (761, 'Peng Lan', '669 Binchuan Rd, Minhang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (762, 'Joshua Ramos', '6-1-1, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (763, 'Edward Hamilton', '828 68 Qinghe Middle St, Haidian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (764, 'Sheh Chieh Lun', '5 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (765, 'Lok Tin Wing', '29 Canal Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (766, 'Kikuchi Ayato', '947 Riverview Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (767, 'Shi Xiuying', '788 Fern Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (768, 'Shing Ming Sze', '2-3-2 Yoyogi, Shibuya-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (769, 'Ruth Reynolds', '559 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (770, 'Yamazaki Yota', '13-3-4 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (771, 'Pamela Robinson', '17 Maddox Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (772, 'Fong Ka Fai', '505 2nd Zhongshan Road, Yuexiu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (773, 'Philip Powell', '2-3-11 Yoyogi, Shibuya-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (774, 'Uchida Daisuke', '66 Aigburth Rd, Aigburth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (775, 'Imai Seiko', '401 Xiaoping E Rd, Baiyun ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (776, 'Miyazaki Daichi', '664 Aigburth Rd, Aigburth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (777, 'Sano Rena', '132 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (778, 'Henry Medina', '570 Hanover Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (779, 'Eleanor Romero', '167 FuXingMenNei Street, XiCheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (780, 'Yu Xiaoming', '5-4-2 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (781, 'Han Ka Ming', '968 Portland St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (782, 'Sakurai Yuna', '4-9-20 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (783, 'Kimberly Reyes', '60 Lodge Ln, Toxteth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (784, 'Tin Kwok Yin', '905 Central Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (785, 'Tamura Hikaru', '486 Sackville St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (786, 'Liao Wai Man', '765 FuXingMenNei Street, XiCheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (787, 'Yeung Chieh Lun', '560 East Wangfujing Street, Dongcheng District ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (788, 'Tamura Seiko', '1-7-8 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (789, 'Chin Fat', '1 W Ring Rd, Buji Town, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (790, 'Xiao Jiehong', '2-1-20 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (791, 'Xiang Zhennan', '3-15-20 Ginza, Chuo-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (792, 'Xiong Lan', '770 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (793, 'Chow Wai Yee', '868 Sanlitun Road, Chaoyang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (794, 'Anna Palmer', '288 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (795, 'Chris Gray', '1-7-8 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (796, 'Victoria Wilson', 'No.704, Dongsan Road, Erxianqiao, Chenghua District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (797, 'Ikeda Ryota', '550 S Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (798, 'Takeda Hana', '29 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (799, 'Yang Shihan', '3-9-18 Gakuenminami');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (800, 'Wu Lu', '469 Kengmei 15th Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (801, 'Sato Rena', '570 Tremont Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (802, 'Dai Xiuying', '734 Flatbush Ave');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (803, 'Curtis Kennedy', '254 Xue Yuan Yi Xiang, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (804, 'Sasaki Mai', '1 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (805, 'Shing Kwok Yin', '695 Lower Temple Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (806, 'Lin Rui', '75 Kengmei 15th Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (807, 'Kinoshita Takuya', '811 Redfern St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (808, 'Ku Kwok Wing', '245 Kengmei 15th Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (809, 'Xiao Lan', '297 W Ring Rd, Buji Town, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (810, 'Kong On Kay', '279 S Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (811, 'Mao Yuning', '261 Hanover Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (812, 'Wan Wai Man', '966 Daxin S Rd, Daxin Shangquan, Tianhe Qu');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (813, 'Matsuda Sakura', '898 Hinckley Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (814, 'Margaret West', '4-9-1 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (815, 'Hu Shihan', '146 Canal Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (816, 'Tian Yuning', '12 Wooster Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (817, 'Yau Hok Yau', '1-5-9, Higashi-Shimbashi, Minato-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (818, 'Xiao Lan', '227 FuXingMenNei Street, XiCheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (819, 'He Zhennan', '346 Sackville St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (820, 'Sakai Minato', '378 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (821, 'Saito Hazuki', '221 Tangyuan Street 5th Alley, Airport Road, Baiyun');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (822, 'Lo Fu Shing', '151 West Market Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (823, 'Lo Chi Yuen', '775 Grape Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (824, 'Lui Wing Suen', '2 4th Section  Renmin South Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (825, 'Wang Yunxi', '756 Fifth Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (826, 'Cho Wing Sze', '434 Rush Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (827, 'Edwin Barnes', '13-3-1 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (828, 'Watanabe Sakura', '333 Ganlan Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (829, 'Miyazaki Riku', '957 Lefeng 6th Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (830, 'Yamada Kazuma', '565 Fifth Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (831, 'Sara Marshall', '255 Stephenson Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (832, 'Jason Ortiz', '653 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (833, 'Li Zhiyuan', '466 Central Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (834, 'Miyamoto Seiko', '509 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (835, 'Aoki Aoi', '587 Canal Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (836, 'Yan Jiehong', '3-9-13 Gakuenminami');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (837, 'Leonard Price', '615 Shanhu Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (838, 'Lam Ming Sze', '77 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (839, 'Nomura Ryota', '395 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (840, 'Vincent Mcdonald', '323 Tangyuan Street 5th Alley, Airport Road, Baiyun');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (841, 'Cynthia Dixon', '675 West Market Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (842, 'Koo Ling Ling', '273 The Pavilion, Lammas Field, Driftway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (843, 'Jesse Kelley', '851 Trafalgar Square, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (844, 'Joshua James', '2-5-6 Chitose, Atsuta Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (845, 'Heung Tsz Hin', '85 Whitehouse Lane, Huntingdon Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (846, 'Endo Eita', '2-1-13 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (847, 'Jeff Tucker', '34 W Ring Rd, Buji Town, Longgang');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (848, 'Leroy Meyer', '2-1-16 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (849, 'Che Wing Suen', '9 East Wangfujing Street, Dongcheng District ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (850, 'Zhang Zhiyuan', '151 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (851, 'Kobayashi Mitsuki', '683 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (852, 'Kevin Schmidt', '87 Bergen St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (853, 'Ku Chi Ming', '215 West Chang\'an Avenue, Xicheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (854, 'Lucille Holmes', '329 Regent Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (855, 'Fujita Shino', '551 Ganlan Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (856, 'Hirano Yuito', '934 Regent Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (857, 'Nakamori Miu', '297 Dong Zhi Men, Dongcheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (858, 'Kwong Wai Man', '20 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (859, 'Shirley Kim', '974 Xiaoping E Rd, Baiyun ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (860, 'Eddie Hawkins', '854 Tianhe Road, Tianhe District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (861, 'Murakami Sara', '491 Qingshuihe 1st Rd, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (862, 'Don Torres', '781 FuXingMenNei Street, XiCheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (863, 'Fang Lu', '19 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (864, 'Kato Eita', '402 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (865, 'Mo Zitao', '145 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (866, 'Shao Zhennan', '69 Mosley St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (867, 'Danny Reed', '848 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (868, 'Takahashi Hana', '3-15-3 Ginza, Chuo-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (869, 'Cynthia Murray', '15 1-1 Honjocho, Yamatokoriyama');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (870, 'Dai Wing Sze', '88 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (871, 'Mo Siu Wai', '300 Wicklow Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (872, 'So Wing Suen', '6-1-13, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (873, 'Kudo Itsuki', '697 49/50 Strand, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (874, 'Linda Mills', '84 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (875, 'Carol Ellis', '271 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (876, 'Alexander Alexander', '355 Xiaoping E Rd, Baiyun ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (877, 'Crystal Kennedy', '1-1-17 Deshiro, Nishinari Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (878, 'Craig Jenkins', '472 Sky Way');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (879, 'Brian Shaw', '586 Shanhu Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (880, 'Carl Morris', '501 Central Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (881, 'Kao Cho Yee', '5-2-2 Higashi Gotanda, Shinagawa-ku ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (882, 'Ono Yamato', '551 Bank Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (883, 'Wong Chun Yu', '253 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (884, 'Debra Salazar', '3-19-5 Shimizu, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (885, 'Yung Siu Wai', '297 Hinckley Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (886, 'Christine Clark', '3-27-13 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (887, 'Jeremy Shaw', '286 Hanover St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (888, 'Lu Yuning', '860 Huanqu South Street 2nd Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (889, 'Yam Siu Wai', '16 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (890, 'Francisco Hall', '90 East Cooke Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (891, 'Takada Yuito', '522 West Market Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (892, 'He Shihan', '1-7-17 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (893, 'Loui Tin Wing', '347 Shennan E Rd, Cai Wu Wei, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (894, 'Marjorie Castro', '197 Lower Temple Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (895, 'Tsang Chi Yuen', '945 West Chang\'an Avenue, Xicheng District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (896, 'Yan Shihan', '928 028 County Rd, Yanqing District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (897, 'Matsumoto Itsuki', '581 Central Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (898, 'Zhang Yuning', '5-2-17 Kikusui 3 Jo, Shiroishi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (899, 'Cheryl Edwards', '1-6-10, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (900, 'Kinoshita Ren', '552 Whitehouse Lane, Huntingdon Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (901, 'Chow Fu Shing', '335 Lodge Ln, Toxteth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (902, 'Che Ming', '584 Shennan E Rd, Cai Wu Wei, Luohu District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (903, 'Ronald Mendoza', '373 East Alley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (904, 'Cui Lu', '122 Lefeng 6th Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (905, 'Debra Clark', '171 Broadway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (906, 'Nakagawa Momoe', '2-3-18 Yoyogi, Shibuya-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (907, 'Kwong Ming Sze', '362 Collier Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (908, 'Inoue Ren', '973 Edward Ave, Braunstone Town');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (909, 'Takeda Yuto', '932 Pollen Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (910, 'Nakayama Riku', '2 1-1715 Sekohigashi, Moriyama Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (911, 'Alan Ferguson', '5-2-5 Higashi Gotanda, Shinagawa-ku ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (912, 'Yang Jialun', '258 Ridgewood Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (913, 'Mak Chi Yuen', '3-9-13 Gakuenminami');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (914, 'Hao Yuning', '1-7-20 Omido, Higashiosaka');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (915, 'Jia Yunxi', '5-4-12 Kikusui 3 Jo, Shiroishi Ward,');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (916, 'Shi Ziyi', '264 Elms Rd, Botley');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (917, 'Allen Daniels', '878 Sackville St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (918, 'Nishimura Nanami', '743 Zhongshan 5th Rd, Zimaling Shangquan');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (919, 'Tang Chiu Wai', '449 Wicklow Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (920, 'Jia Zhiyuan', '989 Osney Mead');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (921, 'Wong Wing Suen', '531 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (922, 'Yamazaki Itsuki', '968 Cyril St, Braunstone Town');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (923, 'Lo Fat', '839 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (924, 'Murakami Ikki', '690 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (925, 'Yamaguchi Kasumi', '214 Cyril St, Braunstone Town');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (926, 'Yin Ziyi', '599 4th Section  Renmin South Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (927, 'Hayashi Hikaru', '924 New Wakefield St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (928, 'Nancy Bell', '738 Spring Gardens');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (929, 'Goto Itsuki', '2-1-7 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (930, 'Martin Nelson', '609 State Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (931, 'Don Gray', '6-1-6, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (932, 'Kato Aoi', '240 Cyril St, Braunstone Town');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (933, 'Fan Ling Ling', '399 4th Section  Renmin South Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (934, 'Lok Lik Sun', '891 Wyngate Dr');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (935, 'Yung Sum Wing', '454 3rd Section Hongxing Road, Jinjiang District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (936, 'Sheh Kar Yan', '1-7-1 Saidaiji Akodacho');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (937, 'Taniguchi Eita', '891 39 William IV St, Charing Cross');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (938, 'Pak Fat', '760 Bank Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (939, 'Yuen Wing Fat', '831 Hanover St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (940, 'Jacqueline Jordan', '1-6-5, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (941, 'Ng Sai Wing', '944 Riverview Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (942, 'Song Rui', 'No.25, Dongsan Road, Erxianqiao, Chenghua District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (943, 'Gu Jialun', '178 West Market Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (944, 'Ricky Evans', '881 Pollen Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (945, 'Takeuchi Mio', '82 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (946, 'Saito Ikki', '124 Grape Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (947, 'Nathan Bailey', '312 Pedway');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (948, 'Hasegawa Yuito', '911 Fern Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (949, 'Sato Mai', '375 Spring Gardens');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (950, 'Cheung Sai Wing', '13 Lodge Ln, Toxteth');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (951, 'To Hok Yau', '4 3-803 Kusunokiajima, Kita Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (952, 'Hao Zitao', '87 Spring Gardens');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (953, 'Xiong Shihan', '873 West Houston Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (954, 'Cheung Ling Ling', '339 Grape Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (955, 'Goto Takuya', '1-6-5, Marunouchi, Chiyoda-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (956, 'Debbie Aguilar', '2-1-5 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (957, 'Ishikawa Nanami', '6-1-11, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (958, 'Kwok Ka Ming', '783 Jianxiang Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (959, 'Nishimura Minato', '683 Dongtai 5th St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (960, 'Bonnie Cook', '594 East Wangfujing Street, Dongcheng District ');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (961, 'Xu Lu', '16 Lefeng 6th Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (962, 'Joanne Rice', '294 Tremont Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (963, 'Han Rui', '344 Riverview Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (964, 'Hirano Aoshi', '333 Fifth Avenue');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (965, 'Lawrence Mendez', '222 Narborough Rd');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (966, 'Choi Kwok Wing', '353 68 Qinghe Middle St, Haidian District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (967, 'Lui Yu Ling', '841 Daxin S Rd, Daxin Shangquan, Tianhe Qu');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (968, 'Larry Flores', '535 Tremont Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (969, 'Hazel Perry', '223 Grape Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (970, 'Maruyama Ryota', '751 Hanover Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (971, 'Jia Zhennan', '2-1-18 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (972, 'Lok Wai Han', '496 Tianhe Road, Tianhe District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (973, 'Yuen Hiu Tung', '2-1-1 Kaminopporo 1 Jo, Atsubetsu Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (974, 'Florence Carter', '292 Portland St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (975, 'Xiang Zhiyuan', '918 Yueliu Rd, Fangshan District');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (976, 'Janet Davis', '475 Wicklow Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (977, 'Hsuan Hui Mei', '45 Osney Mead');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (978, 'Kwong Kwok Wing', '97 Silver St, Newnham');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (979, 'Kenneth Fisher', '588 Bank Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (980, 'Deng Zhiyuan', '270 Stephenson Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (981, 'Matsuda Hazuki', '6-1-19, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (982, 'Kathryn Harris', '609 Bank Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (983, 'Li Xiuying', '282 Park End St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (984, 'Scott Harrison', '747 East Cooke Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (985, 'Sano Hina', '267 Ganlan Rd, Pudong');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (986, 'Jesse Nichols', '386 NO.6, YuShuang Road, ChengHua Distric');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (987, 'Mo Rui', '813 East Cooke Road');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (988, 'Thelma Simmons', '13-3-7 Toyohira 3 Jo, Toyohira Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (989, 'Chiba Mai', '113 Wall Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (990, 'Tian Anqi', '17 4-20 Kawagishicho, Mizuho Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (991, 'Albert Cook', '152 Dongtai 5th St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (992, 'Maruyama Ayano', '4-9-2 Kamihigashi, Hirano Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (993, 'Robert Walker', '3-27-2 Higashitanabe, Higashisumiyoshi Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (994, 'Paula Evans', '262 Park End St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (995, 'Chang Sum Wing', '540 Columbia St');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (996, 'Ishii Airi', '1-5-6, Higashi-Shimbashi, Minato-ku');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (997, 'Xu Yunxi', '302 Wooster Street');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (998, 'Keith Ellis', '3-9-5 Gakuenminami');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (999, 'Siu Wing Fat', '6-1-18, Miyanomori 4 Jō, Chuo Ward');
INSERT INTO `customer` (`customer_id`, `customer_name`, `address`) VALUES (1000, 'Ray Murray', '723 Flatbush Ave');
COMMIT;

-- ----------------------------
-- Table structure for dailyrevenue
-- ----------------------------
DROP TABLE IF EXISTS `dailyrevenue`;
CREATE TABLE `dailyrevenue` (
  `revenue_id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `total_revenue` decimal(10,2) NOT NULL,
  `total_orders` int NOT NULL,
  `total_customers` int NOT NULL,
  PRIMARY KEY (`revenue_id`),
  UNIQUE KEY `date` (`date`),
  KEY `idx_date` (`date`),
  CONSTRAINT `dailyrevenue_chk_1` CHECK ((`total_revenue` >= 0)),
  CONSTRAINT `dailyrevenue_chk_2` CHECK ((`total_orders` >= 0)),
  CONSTRAINT `dailyrevenue_chk_3` CHECK ((`total_customers` >= 0))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dailyrevenue
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish` (
  `dish_id` int NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `flavour` varchar(255) DEFAULT NULL,
  `taste_level` int DEFAULT NULL,
  PRIMARY KEY (`dish_id`),
  KEY `idx_dish_id` (`dish_id`),
  CONSTRAINT `dish_chk_1` CHECK ((`price` >= 0)),
  CONSTRAINT `dish_chk_2` CHECK ((`size` in (_utf8mb4'Small',_utf8mb4'Medium',_utf8mb4'Large'))),
  CONSTRAINT `dish_chk_3` CHECK (((`taste_level` >= 1) and (`taste_level` <= 5)))
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dish
-- ----------------------------
BEGIN;
INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `price`, `size`, `flavour`, `taste_level`) VALUES (1, 'dish1', 'If you wait, all that happens is you get older. Remember that failure is an event, not a person. Success consists of going from failure to failure without loss of enthusiasm. Navicat 15 has added support for the system-wide dark mode. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. How we spend our days is, of course, how we spend our lives. A man is not old until regrets take the place of dreams. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. I will greet this day with love in my heart. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. How we spend our days is, of course, how we spend our lives. What you get by achieving your goals is not as important as what you become by achieving your goals. You cannot save people, you can just love them. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. Anyone who has never made a mistake has never tried anything new. A man’s best friends are his ten fingers. All journeys have secret destinations of which the traveler is unaware. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. A man’s best friends are his ten fingers. Success consists of going from failure to failure without loss of enthusiasm. A comfort zone is a beautiful place, but nothing ever grows there. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Creativity is intelligence having fun. Anyone who has never made a mistake has never tried anything new. If the plan doesn’t work, change the plan, but never the goal. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Creativity is intelligence having fun. Optimism is the one quality more associated with success and happiness than any other. Success consists of going from failure to failure without loss of enthusiasm. Optimism is the one quality more associated with success and happiness than any other. I may not have gone where I intended to go, but I think I have ended up where I needed to be. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. To connect to a database or schema, simply double-click it in the pane. I will greet this day with love in my heart. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. A query is used to extract data from the database in a readable format according to the user\'s request. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Anyone who has never made a mistake has never tried anything new. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. If it scares you, it might be a good thing to try. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. You will succeed because most people are lazy. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Anyone who has never made a mistake has never tried anything new. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. A query is used to extract data from the database in a readable format according to the user\'s request. Difficult circumstances serve as a textbook of life for people. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. Anyone who has never made a mistake has never tried anything new. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. In the middle of winter I at last discovered that there was in me an invincible summer. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. You must be the change you wish to see in the world. You must be the change you wish to see in the world. Flexible settings enable you to set up a custom key for comparison and synchronization. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Genius is an infinite capacity for taking pains. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. A man’s best friends are his ten fingers. You cannot save people, you can just love them.', 93.29, 'Small', 'a', 1);
INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `price`, `size`, `flavour`, `taste_level`) VALUES (2, 'dish1', 'Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. You must be the change you wish to see in the world. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Anyone who has ever made anything of importance was disciplined. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. A comfort zone is a beautiful place, but nothing ever grows there. You cannot save people, you can just love them. The Synchronize to Database function will give you a full picture of all database differences. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. You must be the change you wish to see in the world. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. The first step is as good as half over. A man’s best friends are his ten fingers. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Anyone who has never made a mistake has never tried anything new. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. If you wait, all that happens is you get older. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If it scares you, it might be a good thing to try.', 32.06, 'Medium', 'a', 3);
INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `price`, `size`, `flavour`, `taste_level`) VALUES (3, 'dish1', 'Success consists of going from failure to failure without loss of enthusiasm. How we spend our days is, of course, how we spend our lives. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. In the middle of winter I at last discovered that there was in me an invincible summer. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Anyone who has ever made anything of importance was disciplined. Anyone who has never made a mistake has never tried anything new. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. You must be the change you wish to see in the world. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. There is no way to happiness. Happiness is the way. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat 15 has added support for the system-wide dark mode. Anyone who has never made a mistake has never tried anything new. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Sometimes you win, sometimes you learn. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. A comfort zone is a beautiful place, but nothing ever grows there. A man’s best friends are his ten fingers. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. What you get by achieving your goals is not as important as what you become by achieving your goals. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. I may not have gone where I intended to go, but I think I have ended up where I needed to be. The reason why a great man is great is that he resolves to be a great man. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. If the plan doesn’t work, change the plan, but never the goal. How we spend our days is, of course, how we spend our lives. The Synchronize to Database function will give you a full picture of all database differences. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. A man is not old until regrets take the place of dreams. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Genius is an infinite capacity for taking pains. A man’s best friends are his ten fingers. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Sometimes you win, sometimes you learn. I will greet this day with love in my heart. Optimism is the one quality more associated with success and happiness than any other. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats.', 61.45, 'Large', 'a', 4);
INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `price`, `size`, `flavour`, `taste_level`) VALUES (4, 'dish1', 'What you get by achieving your goals is not as important as what you become by achieving your goals. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Optimism is the one quality more associated with success and happiness than any other. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Secure SHell (SSH) is a program to log in into another computer over a network, execute commands on a remote server, and move files from one machine to another. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Anyone who has never made a mistake has never tried anything new. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. A query is used to extract data from the database in a readable format according to the user\'s request. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. I destroy my enemies when I make them my friends. Optimism is the one quality more associated with success and happiness than any other. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Anyone who has never made a mistake has never tried anything new. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. If opportunity doesn’t knock, build a door. If it scares you, it might be a good thing to try. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. If opportunity doesn’t knock, build a door. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models.', 78.15, 'Large', 'a', 4);
INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `price`, `size`, `flavour`, `taste_level`) VALUES (5, 'dish1', 'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical data models for a wide variety of audiences. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. Sometimes you win, sometimes you learn. A man is not old until regrets take the place of dreams. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. The first step is as good as half over. In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to change the object view. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Actually it is just in an idea when feel oneself can achieve and cannot achieve. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane. The On Startup feature allows you to control what tabs appear when you launch Navicat. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms.', 93.39, 'Medium', 'a', 5);
INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `price`, `size`, `flavour`, `taste_level`) VALUES (6, 'dish1', 'A query is used to extract data from the database in a readable format according to the user\'s request. The past has no power over the present moment. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. A man is not old until regrets take the place of dreams. The On Startup feature allows you to control what tabs appear when you launch Navicat. If opportunity doesn’t knock, build a door. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. What you get by achieving your goals is not as important as what you become by achieving your goals. Sometimes you win, sometimes you learn. Anyone who has ever made anything of importance was disciplined. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. You cannot save people, you can just love them. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. You cannot save people, you can just love them. If you wait, all that happens is you get older. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. You cannot save people, you can just love them. The Synchronize to Database function will give you a full picture of all database differences. Creativity is intelligence having fun. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. If you wait, all that happens is you get older. I may not have gone where I intended to go, but I think I have ended up where I needed to be. There is no way to happiness. Happiness is the way. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. If you wait, all that happens is you get older. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Flexible settings enable you to set up a custom key for comparison and synchronization. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Difficult circumstances serve as a textbook of life for people. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. If the plan doesn’t work, change the plan, but never the goal. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature.', 93.49, 'Small', 'a', 1);
INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `price`, `size`, `flavour`, `taste_level`) VALUES (7, 'dish1', 'After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. Success consists of going from failure to failure without loss of enthusiasm. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab. Optimism is the one quality more associated with success and happiness than any other. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. A man is not old until regrets take the place of dreams. Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. I will greet this day with love in my heart. Anyone who has never made a mistake has never tried anything new. Navicat 15 has added support for the system-wide dark mode. In the middle of winter I at last discovered that there was in me an invincible summer.', 71.90, 'Large', 'a', 4);
INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `price`, `size`, `flavour`, `taste_level`) VALUES (8, 'dish1', 'Genius is an infinite capacity for taking pains. The On Startup feature allows you to control what tabs appear when you launch Navicat. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. The On Startup feature allows you to control what tabs appear when you launch Navicat. You cannot save people, you can just love them. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. The Synchronize to Database function will give you a full picture of all database differences. A query is used to extract data from the database in a readable format according to the user\'s request. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. The reason why a great man is great is that he resolves to be a great man. Anyone who has ever made anything of importance was disciplined. Actually it is just in an idea when feel oneself can achieve and cannot achieve. Always keep your eyes open. Keep watching. Because whatever you see can inspire you. I destroy my enemies when I make them my friends. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. You must be the change you wish to see in the world. The past has no power over the present moment. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. A comfort zone is a beautiful place, but nothing ever grows there. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. Typically, it is employed as an encrypted version of Telnet. All journeys have secret destinations of which the traveler is unaware. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. It wasn’t raining when Noah built the ark. Anyone who has ever made anything of importance was disciplined. The On Startup feature allows you to control what tabs appear when you launch Navicat. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. A comfort zone is a beautiful place, but nothing ever grows there. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. A comfort zone is a beautiful place, but nothing ever grows there. If opportunity doesn’t knock, build a door. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new to database server. Navicat 15 has added support for the system-wide dark mode. Actually it is just in an idea when feel oneself can achieve and cannot achieve. It wasn’t raining when Noah built the ark. A query is used to extract data from the database in a readable format according to the user\'s request. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. How we spend our days is, of course, how we spend our lives. It wasn’t raining when Noah built the ark. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. A man is not old until regrets take the place of dreams. Flexible settings enable you to set up a custom key for comparison and synchronization. To clear or reload various internal caches, flush tables, or acquire locks, control-click your connection in the Navigation pane and select Flush and choose the flush option. You must have the reload privilege to use this feature. Sometimes you win, sometimes you learn. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. In the middle of winter I at last discovered that there was in me an invincible summer. Success consists of going from failure to failure without loss of enthusiasm.', 70.78, 'Medium', 'a', 3);
INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `price`, `size`, `flavour`, `taste_level`) VALUES (9, 'dish1', 'I will greet this day with love in my heart. Remember that failure is an event, not a person. Difficult circumstances serve as a textbook of life for people. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. You will succeed because most people are lazy. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. How we spend our days is, of course, how we spend our lives. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network.', 51.13, 'Small', 'a', 2);
INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `price`, `size`, `flavour`, `taste_level`) VALUES (10, 'dish1', 'To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. Creativity is intelligence having fun. Navicat Monitor requires a repository to store alerts and metrics for historical analysis. It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. I may not have gone where I intended to go, but I think I have ended up where I needed to be. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. Flexible settings enable you to set up a custom key for comparison and synchronization. Actually it is just in an idea when feel oneself can achieve and cannot achieve. I destroy my enemies when I make them my friends. All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. A query is used to extract data from the database in a readable format according to the user\'s request. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. You will succeed because most people are lazy. The first step is as good as half over. I may not have gone where I intended to go, but I think I have ended up where I needed to be. Genius is an infinite capacity for taking pains. To connect to a database or schema, simply double-click it in the pane. To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, set the database login information in the General tab.', 25.26, 'Medium', 'a', 2);
COMMIT;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `leave_status` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`employee_id`),
  KEY `idx_employee_id` (`employee_id`),
  CONSTRAINT `employee_chk_1` CHECK ((`role` in (_utf8mb4'Chef',_utf8mb4'Manager'))),
  CONSTRAINT `employee_chk_2` CHECK ((`salary` >= 0)),
  CONSTRAINT `employee_chk_3` CHECK ((`leave_status` in (_utf8mb4'Active',_utf8mb4'On Leave')))
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of employee
-- ----------------------------
BEGIN;
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (15, 'Wei Anqi', 'Manager', 495.13, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (14, 'Tang Yuning', 'Manager', 221.13, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (13, 'Otsuka Yota', 'Manager', 702.91, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (12, 'Mo Anqi', 'Manager', 354.61, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (11, 'Jiang Xiaoming', 'Manager', 835.80, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (10, 'Wada Tsubasa', 'Chef', 688.22, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (9, 'Rodney Mcdonald', 'Chef', 887.14, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (8, 'Yao Shihan', 'Chef', 914.46, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (7, 'Ishikawa Momoe', 'Chef', 217.78, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (6, 'Choi On Kay', 'Chef', 425.63, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (5, 'Tao Zitao', 'Chef', 858.91, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (4, 'Kimura Momoe', 'Chef', 864.30, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (3, 'Ethel Mendez', 'Chef', 793.18, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (2, 'Dawn Wagner', 'Chef', 727.76, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (1, 'Yung Tin Wing', 'Chef', 258.34, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (16, 'Xia Anqi', 'Manager', 807.63, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (17, 'Tanaka Hana', 'Manager', 65.05, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (18, 'Diana Spencer', 'Manager', 58.84, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (19, 'Kimura Yuna', 'Manager', 21.88, 'Active');
INSERT INTO `employee` (`employee_id`, `name`, `role`, `salary`, `leave_status`) VALUES (20, 'Iwasaki Ikki', 'Manager', 0.57, 'Active');
COMMIT;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `order_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `comments` text,
  `date` date NOT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `customer_id` (`customer_id`),
  KEY `order_id` (`order_id`),
  KEY `idx_feedback_date` (`date`),
  CONSTRAINT `feedback_chk_1` CHECK (((`rating` >= 1) and (`rating` <= 5)))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of feedback
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `dish_id` int NOT NULL,
  `stock_level` int NOT NULL DEFAULT '0',
  `stock_status` varchar(20) DEFAULT 'In Stock',
  PRIMARY KEY (`inventory_id`),
  KEY `dish_id` (`dish_id`),
  CONSTRAINT `inventory_chk_1` CHECK ((`stock_level` >= 0)),
  CONSTRAINT `inventory_chk_2` CHECK ((`stock_status` in (_utf8mb4'In Stock',_utf8mb4'Low Stock',_utf8mb4'Out of Stock')))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of inventory
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for leaverecord
-- ----------------------------
DROP TABLE IF EXISTS `leaverecord`;
CREATE TABLE `leaverecord` (
  `leave_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` text,
  PRIMARY KEY (`leave_id`),
  KEY `employee_id` (`employee_id`),
  KEY `idx_leave_date` (`start_date`,`end_date`),
  CONSTRAINT `leaverecord_chk_1` CHECK ((`end_date` >= `start_date`))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of leaverecord
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `manager_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `leave_status` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`manager_id`),
  KEY `employee_id` (`employee_id`),
  KEY `leave_status` (`leave_status`),
  KEY `salary` (`salary`),
  CONSTRAINT `manager_chk_1` CHECK ((`salary` >= 0)),
  CONSTRAINT `manager_chk_2` CHECK ((`leave_status` in (_utf8mb4'Active',_utf8mb4'On Leave')))
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of manager
-- ----------------------------
BEGIN;
INSERT INTO `manager` (`manager_id`, `employee_id`, `salary`, `leave_status`) VALUES (1, 11, 352.70, 'Active');
INSERT INTO `manager` (`manager_id`, `employee_id`, `salary`, `leave_status`) VALUES (2, 12, 822.34, 'Active');
INSERT INTO `manager` (`manager_id`, `employee_id`, `salary`, `leave_status`) VALUES (3, 13, 517.45, 'Active');
INSERT INTO `manager` (`manager_id`, `employee_id`, `salary`, `leave_status`) VALUES (4, 14, 987.13, 'Active');
INSERT INTO `manager` (`manager_id`, `employee_id`, `salary`, `leave_status`) VALUES (5, 15, 380.10, 'Active');
INSERT INTO `manager` (`manager_id`, `employee_id`, `salary`, `leave_status`) VALUES (6, 16, 70.91, 'Active');
INSERT INTO `manager` (`manager_id`, `employee_id`, `salary`, `leave_status`) VALUES (7, 17, 669.83, 'Active');
INSERT INTO `manager` (`manager_id`, `employee_id`, `salary`, `leave_status`) VALUES (8, 18, 945.18, 'Active');
INSERT INTO `manager` (`manager_id`, `employee_id`, `salary`, `leave_status`) VALUES (9, 19, 606.26, 'Active');
INSERT INTO `manager` (`manager_id`, `employee_id`, `salary`, `leave_status`) VALUES (10, 20, 473.55, 'Active');
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `dish_id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `order_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `order_status` varchar(20) DEFAULT 'Pending',
  `payment_status` varchar(20) DEFAULT 'Unpaid',
  `isTakeout` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `dish_id` (`dish_id`),
  KEY `username` (`username`),
  KEY `idx_order_time` (`order_time`),
  CONSTRAINT `order_chk_1` CHECK ((`total_amount` >= 0)),
  CONSTRAINT `order_chk_2` CHECK ((`size` in (_utf8mb4'Small',_utf8mb4'Medium',_utf8mb4'Large'))),
  CONSTRAINT `order_chk_3` CHECK ((`price` >= 0)),
  CONSTRAINT `order_chk_4` CHECK ((`order_status` in (_utf8mb4'Pending',_utf8mb4'Confirmed',_utf8mb4'Cooking',_utf8mb4'Completed',_utf8mb4'Cancelled'))),
  CONSTRAINT `order_chk_5` CHECK ((`payment_status` in (_utf8mb4'Unpaid',_utf8mb4'Paid',_utf8mb4'Refunded')))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for supplychain
-- ----------------------------
DROP TABLE IF EXISTS `supplychain`;
CREATE TABLE `supplychain` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `idx_item_id` (`item_id`),
  CONSTRAINT `supplychain_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of supplychain
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for supplyrecord
-- ----------------------------
DROP TABLE IF EXISTS `supplyrecord`;
CREATE TABLE `supplyrecord` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `count` int NOT NULL,
  `supply_date` date NOT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `item_id` (`item_id`),
  KEY `idx_supply_date` (`supply_date`),
  CONSTRAINT `supplyrecord_chk_1` CHECK ((`unit_price` >= 0)),
  CONSTRAINT `supplyrecord_chk_2` CHECK ((`count` > 0)),
  CONSTRAINT `supplyrecord_chk_3` CHECK ((`cost` >= 0))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of supplyrecord
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
