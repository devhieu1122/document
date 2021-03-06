DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
`userId` INT(11) NOT NULL,
`username` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
`name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
`password` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
`birth` date default NULL,
`gender` VARCHAR(5) COLLATE utf8_unicode_ci DEFAULT NULL,
`email` VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
`phone` VARCHAR(20) COLLATE utf8_unicode_ci DEFAULT NULL,
`address` VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
`role` VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
PRIMARY KEY (`userId`)
)DEFAULT CHARSET= utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `user` VALUE('1', 'nguyenhieu2pro','Nguyen Hieu', MD5('123456'), '1998-01-17','Nam','hieubungke1122@gmail.com','0438647485','Thu Duc','2');
INSERT INTO `user` VALUE('2', 'nguyenvana', ' Nguyen Van A',MD5('12345'), '1998-10-23','Nữ','iloveyou@gmail.com','0438647485','NULL','2');

SELECT * FROM `user`


UPDATE `user` SET address=NULL WHERE userId=2;
SELECT * FROM `user` WHERE username='' OR email='hieubungke1122@gmail.com' AND password = '123456';


DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
`id_category` VARCHAR(10) COLLATE utf8_unicode_ci NOT NULL ,
`name_category` VARCHAR(100) COLLATE utf8_unicode_ci NOT NULL,
PRIMARY KEY (`id_category`)
)DEFAULT CHARSET= utf8	COLLATE=utf8_unicode_ci;

INSERT INTO `category`(`id_category`, `name_category`) VALUES 
 (1, 'Điện Thoại'),
 (2, 'Tablet'),
 (3, 'Laptop'),
 (4, 'Điện thoại index'),
 (5, 'Laptop index');


DROP TABLE IF EXISTS `producer`;
CREATE TABLE `producer` (
`id_producer` INT(11) NOT NULL,
`id_category` VARCHAR(100) COLLATE utf8_unicode_ci NOT NULL,
`name` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
`address` VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL, 
`phone` VARCHAR(20) COLLATE utf8_unicode_ci DEFAULT NULL,
PRIMARY KEY (`id_producer`),
KEY `fk_producer_category` (`id_category`)
)DEFAULT CHARSET= utf8	COLLATE=utf8_unicode_ci;

select * from `producer`

select * from `producer` where `id_category` = 'DT';

INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (1, 1, 'Samsung', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (2, 1, 'Apple (IPhone)', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (3, 1, 'LG', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (4, 1, 'OPPO', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (5, 1, 'Nokia', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (6, 1, 'Huawei', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (7, 1, 'Asus', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (8, 1, 'ViVo', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (9, 1, 'Xiaomi', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (10, 1, 'Masstel', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (11, 1, 'Sony', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (12, 3, 'Apple (Macbook)', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (13, 3, 'Asus', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (14, 3, 'Dell', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (15, 3, 'HP', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (16, 3, 'Lenovo', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (17, 3, 'Acer', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (18, 3, 'MSI', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (19, 2, 'Apple (IPad)', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (20, 2, 'Samsung', '', '');
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES (21, 2, 'Huawei', '', '');
	

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
`id_product` int(11) NOT NULL,
 `id_category` VARCHAR(255) NOT  NULL,
`id_producer` INT(11) NOT NULL,
`name_product` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
`price` DECIMAL(18, 0) UNSIGNED NOT NULL,
`quanlity` INT(3) UNSIGNED NOT NULL DEFAULT '0',
`images` VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL,
`discriptions` TEXT CHARACTER SET utf8 DEFAULT NULL,
`time_update` VARCHAR(25) COLLATE utf8_unicode_ci DEFAULT NULL,
`promotion` int(11),
`start_promotion` VARCHAR(25) COLLATE utf8_unicode_ci DEFAULT NULL, 
`end_promotion`VARCHAR(25) COLLATE utf8_unicode_ci DEFAULT NULL, 
PRIMARY KEY (`id_product`)
)DEFAULT CHARSET= utf8	COLLATE=utf8_unicode_ci;


INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (1, 1, 2, 'IPhone XS Max 512GB', 43999000, 25, 'image/phone/', '', '2018-12-11', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (2, 1, 2, 'IPhone XS 512GB', 40999000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (3, 1, 2, 'IPhone XS Max 256GB', 37999000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (4, 1, 2, 'Iphone XS 256GB', 34999000, 25, 'image/phone/636707939042306906_Samsung Note 9-2--22999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (5, 1, 1, 'Samsung Galaxy Note 9', 28499000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (6, 1, 2, 'IPhone X 64GB', 26999000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (7, 1, 1, 'Samsung Galaxy S9+', 24499000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (8, 1, 6, 'Huawei Mate 20 Pro', 19999000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (9, 1, 4, 'OPPO Find X', 2099000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (10, 1, 1, 'Samsung Galaxy Note 8', 19999000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (11, 1, 1, 'Samsung Galaxy S9', 19999000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (12, 1, 1, 'Samsung Galaxy S8 Plus', 13999000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (13, 1, 10, 'Masstel 10', 9999000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (14, 1, 6, 'Huawei Y9 (2019)', 5490000, 25, 'image/phone/', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (15, 1, 1, 'Samsung Galaxy J6+', 4690000, 25, 'image/phone/636741585673121012_Samsung Galaxy J6 (1)-4690k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (16, 1, 9, 'Xiaomi Mi A2 Lite 4G-64GB', 4990000, 25, 'image/phone/636707939042648865_Xiaomi Mi A2 Lite-2-4999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (17, 1, 4, 'OPPO F9', 7690000, 25, 'image/phone/636739531964794153_OPPO-F9-17999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (18, 1, 2, 'IPhone 7 Plus 32GB', 17990000, 25, 'image/phone/636755895958177136_iPhone7-Plus-32GB-7690k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (19, 3, 14, 'Dell Vostro 3578A', 15490000, 25, 'image/laptop/636741585668741450_Dell Vostro 3578A-15490k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (20, 3, 13, 'Asus F560UD-BQ055T/Core i5-8250U', 16990000, 25, 'image/laptop/636741585673350989_Asus F560UD-BQ055T-Core i5-8250U-16999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (21, 3, 14, 'Dell Inspiron N3567S', 10690000, 25, 'image/laptop/636741585668631461_Dell Inspiron N3567S-10690k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (22, 3, 11, 'Macbook Air 13 128GB (2017)', 23990000, 25, 'image/laptop/636734318847302773_Macbook-Air-13-128GB-MQD32SA-A-(2017)-23999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (23, 3, 15, 'HP Pavilion 14-ce0024TU', 14990000, 25, 'image/laptop/636741585668641460_HP Pavilion 14-ce0024TU-14999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (24, 3, 14, 'Dell Inspiron N3576/i5-8250U', 14990000, 25, 'image/laptop/636741585668581466_Dell Inspiron N3576-i5-8250U-14999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (25, 4, 2, 'Iphone XS 256GB', 34999000, 25, 'image/phone/636707939042306906_Samsung Note 9-2--22999k.png', '', '2018-12-19', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (26, 4, 1, 'Samsung Galaxy J6+', 4690000, 25, 'image/phone/636741585673121012_Samsung Galaxy J6 (1)-4690k.png', '', '2018-12-27', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (27, 4, 9, 'Xiaomi Mi A2 Lite 4G-64GB', 4990000, 25, 'image/phone/636707939042648865_Xiaomi Mi A2 Lite-2-4999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (28, 4, 4, 'OPPO F9', 7690000, 25, 'image/phone/636739531964794153_OPPO-F9-17999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (29, 4, 2, 'IPhone 7 Plus 32GB', 17990000, 25, 'image/phone/636755895958177136_iPhone7-Plus-32GB-7690k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (30, 5, 1, 'Dell Vostro 3578A', 15490000, 25, 'image/laptop/636741585668741450_Dell Vostro 3578A-15490k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (31, 5, 1, 'Asus F560UD-BQ055T/Core i5-8250U', 16990000, 25, 'image/laptop/636741585673350989_Asus F560UD-BQ055T-Core i5-8250U-16999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (32, 5, 1, 'Dell Inspiron N3567S', 10690000, 25, 'image/laptop/636741585668631461_Dell Inspiron N3567S-10690k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (33, 5, 1, 'Macbook Air 13 128GB (2017)', 23990000, 25, 'image/laptop/636734318847302773_Macbook-Air-13-128GB-MQD32SA-A-(2017)-23999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (34, 5, 1, 'HP Pavilion 14-ce0024TU', 14990000, 25, 'image/laptop/636741585668641460_HP Pavilion 14-ce0024TU-14999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');
INSERT INTO `product`(`id_product`, `id_category`, `id_producer`, `name_product`, `price`, `quanlity`, `images`, `discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES (35, 5, 1, 'Dell Inspiron N3576/i5-8250U', 14990000, 25, 'image/laptop/636741585668581466_Dell Inspiron N3576-i5-8250U-14999k.png', '', '2018-12-17', 8, '2018-12-17', '2018-12-17');




SELECT * FROM `product` WHERE `name_product`LIKE '%dell%';




