BEGIN TRANSACTION;
drop table `product_store`
CREATE TABLE IF NOT EXISTS `product_store` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	varchar ( 200 ) NOT NULL,
	`adress`	varchar ( 200 ) NOT NULL,
	`distance` integer not null,
	`url` varchar(200)
);
INSERT INTO product_store (id,name,adress) VALUES 
 (1,'TH Hồng Vân','390 Nguyễn Trãi',3500, "https://www.kiotviet.vn/"),
 (2,'TH anh Quân','29 Khâm Thiên', 3000, "https://www.kiotviet.vn/"),
 (3,'TH Văn Quyền','89 Láng Hạ', 4000,"https://www.kiotviet.vn/"),
 (4,'CH Thanh Nhàn','99 Giải Phóng', 1250,"https://www.kiotviet.vn/"),
 (5,'TH Thanh Hoa','32 Ngọc Hồi', 2500,"https://www.kiotviet.vn/"),
 (6,'CH Minh Đức','90 Trần Phú', 1200,"https://www.kiotviet.vn/");
commit;
