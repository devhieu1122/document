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
`id_category` int(11) NOT NULL ,
`name_category` VARCHAR(100) COLLATE utf8_unicode_ci NOT NULL,
PRIMARY KEY (`id_category`)
)DEFAULT CHARSET= utf8	COLLATE=utf8_unicode_ci;

INSERT INTO `category`(`id_category`, `name_category`) VALUES 
(1, 'Điện Thoại'),
(2, 'Tablet'),
(3, 'Laptop');
SELECT * from `category`

DROP TABLE IF EXISTS `producer`;
CREATE TABLE `producer` (
`id_producer` INT(11) NOT NULL,
`id_category` int(11) NOT NULL,
`name_producer` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
`address` VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL, 
`phone` VARCHAR(20) COLLATE utf8_unicode_ci DEFAULT NULL,
PRIMARY KEY (`id_producer`),
KEY `fk_producer_category` (`id_category`)
)DEFAULT CHARSET= utf8	COLLATE=utf8_unicode_ci;

select * from `producer`

select * from `producer` where `id_category` = 1;
INSERT INTO `producer`(`id_producer`, `id_category`, `name_producer`, `address`, `phone`) VALUES
(1,1,'Samsung','',''),
(2,1,'Apple (IPhone)','',''),
(3,1,'LG','',''),		
(4,1,'OPPO','',''),		
(5,1,'Nokia','',''),	
(6,1,'Huawei','',''),		
(7,1,'Asus','',''),
(8,1,'ViVo','',''),
(9,1,'Xiaomi','',''),
(10,1,'Masstel','',''),
(11,1,'Sony','',''),
(12,3,'Apple (Macbook)','',''),
(13,3,'Asus','',''),
(14,3,'Dell','',''),
(15,3,'HP','',''),
(16,3,'Lenovo','',''),
(17,3,'Acer','',''),
(18,3,'MSI'	,'',''),
(19,2,'Apple (IPad)','',''),
(20,2,'Samsung','',''),
(21,2,'Huawei','','');	

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
`id_product` int(11) NOT NULL,
`id_category` int(11) NOT  NULL,
`id_producer` INT(11) NOT NULL,
`name_product` VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
`price` DECIMAL(18, 0) UNSIGNED NOT NULL,
`quanlity` INT(3) UNSIGNED NOT NULL DEFAULT '0',
`images` VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL,
`discriptions` TEXT CHARACTER SET utf8 DEFAULT NULL,
`time_update` date default NULL,
`promotion` int(11),
`start_promotion` date default NULL,
`end_promotion` date default NULL,
PRIMARY KEY (`id_product`),
KEY `fk_product_category` (`id_category`),
KEY `fk_product_producer` (`id_producer`)
)DEFAULT CHARSET= utf8	COLLATE=utf8_unicode_ci;

INSERT INTO `product`(`id_product`, `id_category`, `id_producer`,`name_product`,`price`, `quanlity`, `images`,`discriptions`, `time_update`, `promotion`, `start_promotion`, `end_promotion`) VALUES 
 (1,1,1,'IPhone XS Max 512GB','43999000',25, 'image/phone/', '','',8,'',''),
 (2,1,1,'IPhone XS 512GB','40999000',25, 'image/phone/', '','',8,'',''),
 (3,1,1,'IPhone XS Max 256GB','37999000',25, 'image/phone/', '','',8,'',''),
 (4,1,1,'Iphone XS 256GB','34999000',25, 'image/phone/636707939042306906_Samsung Note 9-2--22999k.png', '','',8,'',''),
 (5,1,1,'Samsung Galaxy Note 9','28499000',25, 'image/phone/', '','',8,'',''),
 (6,1,1,'IPhone X 64GB','26999000',25, 'image/phone/', '','',8,'',''),
 (7,1,1,'Samsung Galaxy S9+','24499000',25, 'image/phone/', '','',8,'',''),
 (8,1,1,'Huawei Mate 20 Pro','19999000',25, 'image/phone/', '','',8,'',''),
 (9,1,1,'OPPO Find X','2099000',25, 'image/phone/', '','',8,'',''),
 (10,1,1,'Samsung Galaxy Note 8','19999000',25, 'image/phone/', '','',8,'',''),
 (11,1,1,'Samsung Galaxy S9','19999000',25, 'image/phone/', '','',8,'',''),
 (12,1,1,'Samsung Galaxy S8 Plus','13999000',25, 'image/phone/', '','',8,'',''),
 (13,1,1,'Honor 10','9999000',25, 'image/phone/', '','',8,'',''),
 (14,1,1,'Huawei Y9 (2019)','5490000',25, 'image/phone/', '','',8,'',''),
 (15,1,1,'Samsung Galaxy J6+','4690000',25, 'image/phone/636741585673121012_Samsung Galaxy J6 (1)-4690k.png', '','',8,'',''),
 (16,1,1,'Xiaomi Mi A2 Lite 4G-64GB','4990000',25, 'image/phone/636707939042648865_Xiaomi Mi A2 Lite-2-4999k.png', '','',8,'',''),
 (17,1,1,'OPPO F9','7690000',25, 'image/phone/636739531964794153_OPPO-F9-17999k.png', '','',8,'',''),
 (18,1,1,'IPhone 7 Plus 32GB','17990000',25, 'image/phone/636755895958177136_iPhone7-Plus-32GB-7690k.png', '','',8,'',''),
 (19,3,1,'Dell Vostro 3578A','15490000',25, 'image/laptop/636741585668741450_Dell Vostro 3578A-15490k.png', '','',8,'',''),
 (20,3,1,'Asus F560UD-BQ055T/Core i5-8250U','16990000',25, 'image/laptop/636741585673350989_Asus F560UD-BQ055T-Core i5-8250U-16999k.png', '','',8,'',''),
 (21,3,1,'Dell Inspiron N3567S','10690000',25, 'image/laptop/636741585668631461_Dell Inspiron N3567S-10690k.png', '','',8,'',''),
 (22,3,1,'Macbook Air 13 128GB (2017)','23990000',25, 'image/laptop/636734318847302773_Macbook-Air-13-128GB-MQD32SA-A-(2017)-23999k.png', '','',8,'',''),
 (23,3,1,'HP Pavilion 14-ce0024TU','14990000',25, 'image/laptop/636741585668641460_HP Pavilion 14-ce0024TU-14999k.png', '','',8,'',''),
 (24,3,1,'Dell Inspiron N3576/i5-8250U','14990000',25, 'image/laptop/636741585668581466_Dell Inspiron N3576-i5-8250U-14999k.png', '','',8,'','');


SELECT * FROM product





