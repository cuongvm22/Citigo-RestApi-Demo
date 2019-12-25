INSERT INTO product_store (id,name,adress) VALUES (1,'Tạp hóa Hồng Vân','390 Nguyễn Trãi'),
 (2,'Tạp hóa anh Quân ','29 Khâm Thiên'),
 (3,'Tạp hóa Văn Quyền','89 Láng Hạ'),
 (4,'Mua sắm tự chọn Thanh Nhàn','99 Giải Phóng'),
 (5,'Tạp hóa Thanh Hoa  ','32 Ngọc Hồi'),
 (6,'Cửa hàng Minh Đức','90 Trần Phú');

 INSERT INTO product_product (id,title,name,thumburl,infourl,rating) VALUES (1,'cafe','Vinacafe','https://vinacafebienhoa-cms-production.s3-ap-southeast-1.amazonaws.com/iblock/b56/b56fb678d8abcbd85957eb7b27f2e587.png','https://www.kiotviet.vn/',4),
 (2,'cozz','COZZ CANDY','http://www.dhgpharma.com.vn/images/stories/virtuemart/product/cozz%20Hop%2012.png','https://www.kiotviet.vn/',3),
 (3,'lipton','Trà  lipton','http://htmart.org/wp-content/uploads/2018/11/18-2.jpg','https://www.kiotviet.vn/',2),
 (4,'afc','Bánh AFC Lúa Mì','https://cdn.tgdd.vn/Products/Images/3357/79550/bhx/banh-dd-afc-lua-mi-hop-200g-2-org.jpg','https://www.kiotviet.vn/',5),
 (5,'lavie','Nước đóng chai lavie 350ml','https://www.nuocsuoi.vn/wp-content/uploads/2018/08/nuoc-khoang-lavie-350ml-0304.jpg','https://www.kiotviet.vn/',4);

-- DROP TABLE product_contain;

-- CREATE TABLE IF NOT EXISTS product_contain (
-- 	"id"	SERIAL NOT NULL PRIMARY KEY ,
-- 	"price"	integer NOT NULL,
-- 	"productId_id"	integer NOT NULL,
-- 	"storeId_id"	integer NOT NULL,
-- 	FOREIGN KEY("productId_id") REFERENCES product_product("id"),
-- 	FOREIGN KEY("storeId_id") REFERENCES product_store("id")
-- );

INSERT INTO product_contain("id","price","productId_id","storeId_id") VALUES (0,120000,1,1),
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
 (17,32000,4,3),
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
 (28,64000,4,6),
 (29,54000,5,6);