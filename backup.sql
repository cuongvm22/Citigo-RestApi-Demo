BEGIN TRANSACTION;
drop table product_contain;
drop table product_store;
drop table product_product;
CREATE TABLE IF NOT EXISTS product_store (
	"id"	integer NOT NULL PRIMARY KEY,
	"name"	varchar ( 200 ) NOT NULL,
	"adress"	varchar ( 200 ) NOT NULL,
	"distance" integer not null,
	"url" varchar(200)
);
INSERT INTO product_store (id,name,adress, distance, url) VALUES 
 (1,'TH Hồng Vân','390 Nguyễn Trãi',3500, 'https://www.kiotviet.vn/'),
 (2,'TH anh Quân','29 Khâm Thiên', 3000, 'https://www.kiotviet.vn/'),
 (3,'TH Văn Quyền','89 Láng Hạ', 4000,'https://www.kiotviet.vn/'),
 (4,'CH Thanh Nhàn','99 Giải Phóng', 1250,'https://www.kiotviet.vn/'),
 (5,'TH Thanh Hoa','32 Ngọc Hồi', 2500,'https://www.kiotviet.vn/'),
 (6,'CH Minh Đức','90 Trần Phú', 1200,'https://www.kiotviet.vn/');
CREATE TABLE IF NOT EXISTS product_product (
	"id"	integer NOT NULL PRIMARY KEY,
	"title"	varchar ( 200 ) NOT NULL,
	"name"	varchar ( 200 ) NOT NULL,
	"thumburl"	varchar ( 200 ) NOT NULL,
	"infourl"	varchar ( 200 ) NOT NULL,
	"rating"	integer NOT NULL
);
INSERT INTO product_product (id,title,name,thumburl,infourl,rating) VALUES 
 (1,'cafe','Vinacafe','https://vinacafebienhoa-cms-production.s3-ap-southeast-1.amazonaws.com/iblock/b56/b56fb678d8abcbd85957eb7b27f2e587.png','https://www.kiotviet.vn/',4),
 (2,'cozz','COZZ CANDY','http://www.dhgpharma.com.vn/images/stories/virtuemart/product/cozz%20Hop%2012.png','https://www.kiotviet.vn/',3),
 (3,'lipton','Trà  lipton','http://htmart.org/wp-content/uploads/2018/11/18-2.jpg','https://www.kiotviet.vn/',2),
 (4,'afc','Bánh AFC Lúa Mì','https://cdn.tgdd.vn/Products/Images/3357/79550/bhx/banh-dd-afc-lua-mi-hop-200g-2-org.jpg','https://www.kiotviet.vn/',5),
 (5,'lavie','Nước đóng chai lavie 350ml','https://www.nuocsuoi.vn/wp-content/uploads/2018/08/nuoc-khoang-lavie-350ml-0304.jpg','https://www.kiotviet.vn/',4);
CREATE TABLE IF NOT EXISTS product_contain (
	"id"	integer NOT NULL PRIMARY KEY,
	"price"	integer NOT NULL,
	"productId_id"	integer NOT NULL,
	"storeId_id"	integer NOT NULL,
	FOREIGN KEY("productId_id") REFERENCES product_product("id"),
	FOREIGN KEY("storeId_id") REFERENCES product_store("id")
);
INSERT INTO product_contain("id","price","productId_id","storeId_id") VALUES 
 (0,120000,1,1),
 (1,125000,1,2),
 (2,90000,1,3),
 (3,145000,1,4),
 (4,150000,1,5),
 (5,55000,2,1),
 (6,50000,2,2),
 (7,45000,2,3),
 (8,60000,2,4),
 (9,40000,2,5),
 (10,60000,3,1),
 (11,55000,3,2),
 (12,70000,3,3),
 (13,40000,3,4),
 (14,80000,3,5),
 (15,66000,4,1),
 (16,75000,4,2),
 (18,44000,4,4),
 (19,70000,4,5),
 (20,69000,5,1),
 (21,55000,5,2),
 (22,47000,5,3),
 (23,64000,5,4),
 (24,54000,5,5),
 (25,69000,1,6),
 (26,55000,2,6),
 (27,47000,3,6),
 (29,54000,5,6);

COMMIT;
