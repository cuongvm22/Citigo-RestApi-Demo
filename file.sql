BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `product_store` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	varchar ( 200 ) NOT NULL,
	`adress`	varchar ( 200 ) NOT NULL
);
INSERT INTO `product_store` (id,name,adress) VALUES (1,'Tạp hóa Hồng Vân','390 Nguyễn Trãi'),
 (2,'Tạp hóa anh Quân ','29 Khâm Thiên'),
 (3,'Tạp hóa Văn Quyền','89 Láng Hạ'),
 (4,'Mua sắm tự chọn Thanh Nhàn','99 Giải Phóng'),
 (5,'Tạp hóa Thanh Hoa  ','32 Ngọc Hồi'),
 (6,'Cửa hàng Minh Đức','90 Trần Phú');
CREATE TABLE IF NOT EXISTS `product_product` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`title`	varchar ( 200 ) NOT NULL,
	`name`	varchar ( 200 ) NOT NULL,
	`thumburl`	varchar ( 200 ) NOT NULL,
	`infourl`	varchar ( 200 ) NOT NULL,
	`rating`	integer NOT NULL
);
INSERT INTO `product_product` (id,title,name,thumburl,infourl,rating) VALUES (1,'cafe','Vinacafe','https://vinacafebienhoa-cms-production.s3-ap-southeast-1.amazonaws.com/iblock/b56/b56fb678d8abcbd85957eb7b27f2e587.png','https://www.kiotviet.vn/',4),
 (2,'cozz','COZZ CANDY','http://www.dhgpharma.com.vn/images/stories/virtuemart/product/cozz%20Hop%2012.png','https://www.kiotviet.vn/',3),
 (3,'lipton','Trà  lipton','http://htmart.org/wp-content/uploads/2018/11/18-2.jpg','https://www.kiotviet.vn/',2),
 (4,'afc','Bánh AFC Lúa Mì','https://cdn.tgdd.vn/Products/Images/3357/79550/bhx/banh-dd-afc-lua-mi-hop-200g-2-org.jpg','https://www.kiotviet.vn/',5),
 (5,'lavie','Nước đóng chai lavie 350ml','https://www.nuocsuoi.vn/wp-content/uploads/2018/08/nuoc-khoang-lavie-350ml-0304.jpg','https://www.kiotviet.vn/',4);
CREATE TABLE IF NOT EXISTS `product_contain` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`price`	integer NOT NULL,
	`productId_id`	integer NOT NULL,
	`storeId_id`	integer NOT NULL,
	FOREIGN KEY(`productId_id`) REFERENCES `product_product`(`id`),
	FOREIGN KEY(`storeId_id`) REFERENCES `product_store`(`id`)
);
INSERT INTO `product_contain` (id,price,productId_id,storeId_id) VALUES (0,120000,1,1),
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
CREATE TABLE IF NOT EXISTS `django_session` (
	`session_key`	varchar ( 40 ) NOT NULL,
	`session_data`	text NOT NULL,
	`expire_date`	datetime NOT NULL,
	PRIMARY KEY(`session_key`)
);
CREATE TABLE IF NOT EXISTS `django_migrations` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`app`	varchar ( 255 ) NOT NULL,
	`name`	varchar ( 255 ) NOT NULL,
	`applied`	datetime NOT NULL
);
INSERT INTO `django_migrations` (id,app,name,applied) VALUES (1,'contenttypes','0001_initial','2019-12-20 11:22:41.252519'),
 (2,'auth','0001_initial','2019-12-20 11:22:41.395008'),
 (3,'admin','0001_initial','2019-12-20 11:22:41.528829'),
 (4,'admin','0002_logentry_remove_auto_add','2019-12-20 11:22:41.654394'),
 (5,'contenttypes','0002_remove_content_type_name','2019-12-20 11:22:41.794530'),
 (6,'auth','0002_alter_permission_name_max_length','2019-12-20 11:22:41.927672'),
 (7,'auth','0003_alter_user_email_max_length','2019-12-20 11:22:42.072617'),
 (8,'auth','0004_alter_user_username_opts','2019-12-20 11:22:42.194602'),
 (9,'auth','0005_alter_user_last_login_null','2019-12-20 11:22:42.327640'),
 (10,'auth','0006_require_contenttypes_0002','2019-12-20 11:22:42.386106'),
 (11,'auth','0007_alter_validators_add_error_messages','2019-12-20 11:22:42.519461'),
 (12,'product','0001_initial','2019-12-20 11:22:42.652864'),
 (13,'product','0002_auto_20191217_0827','2019-12-20 11:22:42.794529'),
 (14,'product','0003_auto_20191219_0957','2019-12-20 11:22:42.951055'),
 (15,'product','0004_auto_20191219_1010','2019-12-20 11:22:43.069302'),
 (16,'product','0005_auto_20191220_1122','2019-12-20 11:22:43.218420'),
 (17,'sessions','0001_initial','2019-12-20 11:22:43.344113'),
 (18,'product','0006_auto_20191220_1125','2019-12-20 11:25:34.375653');
CREATE TABLE IF NOT EXISTS `django_content_type` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`app_label`	varchar ( 100 ) NOT NULL,
	`model`	varchar ( 100 ) NOT NULL
);
INSERT INTO `django_content_type` (id,app_label,model) VALUES (1,'admin','logentry'),
 (2,'auth','permission'),
 (3,'auth','group'),
 (4,'auth','user'),
 (5,'contenttypes','contenttype'),
 (6,'sessions','session'),
 (7,'product','product'),
 (8,'product','store'),
 (9,'product','contain');
CREATE TABLE IF NOT EXISTS `django_admin_log` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`object_id`	text,
	`object_repr`	varchar ( 200 ) NOT NULL,
	`action_flag`	smallint unsigned NOT NULL,
	`change_message`	text NOT NULL,
	`content_type_id`	integer,
	`user_id`	integer NOT NULL,
	`action_time`	datetime NOT NULL,
	FOREIGN KEY(`user_id`) REFERENCES `auth_user`(`id`),
	FOREIGN KEY(`content_type_id`) REFERENCES `django_content_type`(`id`)
);
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`user_id`	integer NOT NULL,
	`permission_id`	integer NOT NULL,
	FOREIGN KEY(`permission_id`) REFERENCES `auth_permission`(`id`),
	FOREIGN KEY(`user_id`) REFERENCES `auth_user`(`id`)
);
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`user_id`	integer NOT NULL,
	`group_id`	integer NOT NULL,
	FOREIGN KEY(`user_id`) REFERENCES `auth_user`(`id`),
	FOREIGN KEY(`group_id`) REFERENCES `auth_group`(`id`)
);
CREATE TABLE IF NOT EXISTS `auth_user` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`password`	varchar ( 128 ) NOT NULL,
	`last_login`	datetime,
	`is_superuser`	bool NOT NULL,
	`first_name`	varchar ( 30 ) NOT NULL,
	`last_name`	varchar ( 30 ) NOT NULL,
	`email`	varchar ( 254 ) NOT NULL,
	`is_staff`	bool NOT NULL,
	`is_active`	bool NOT NULL,
	`date_joined`	datetime NOT NULL,
	`username`	varchar ( 30 ) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS `auth_permission` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`content_type_id`	integer NOT NULL,
	`codename`	varchar ( 100 ) NOT NULL,
	`name`	varchar ( 255 ) NOT NULL,
	FOREIGN KEY(`content_type_id`) REFERENCES `django_content_type`(`id`)
);
INSERT INTO `auth_permission` (id,content_type_id,codename,name) VALUES (1,1,'add_logentry','Can add log entry'),
 (2,1,'change_logentry','Can change log entry'),
 (3,1,'delete_logentry','Can delete log entry'),
 (4,2,'add_permission','Can add permission'),
 (5,2,'change_permission','Can change permission'),
 (6,2,'delete_permission','Can delete permission'),
 (7,3,'add_group','Can add group'),
 (8,3,'change_group','Can change group'),
 (9,3,'delete_group','Can delete group'),
 (10,4,'add_user','Can add user'),
 (11,4,'change_user','Can change user'),
 (12,4,'delete_user','Can delete user'),
 (13,5,'add_contenttype','Can add content type'),
 (14,5,'change_contenttype','Can change content type'),
 (15,5,'delete_contenttype','Can delete content type'),
 (16,6,'add_session','Can add session'),
 (17,6,'change_session','Can change session'),
 (18,6,'delete_session','Can delete session'),
 (19,7,'add_product','Can add product'),
 (20,7,'change_product','Can change product'),
 (21,7,'delete_product','Can delete product'),
 (22,8,'add_store','Can add store'),
 (23,8,'change_store','Can change store'),
 (24,8,'delete_store','Can delete store'),
 (25,9,'add_contain','Can add contain'),
 (26,9,'change_contain','Can change contain'),
 (27,9,'delete_contain','Can delete contain');
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`group_id`	integer NOT NULL,
	`permission_id`	integer NOT NULL,
	FOREIGN KEY(`permission_id`) REFERENCES `auth_permission`(`id`),
	FOREIGN KEY(`group_id`) REFERENCES `auth_group`(`id`)
);
CREATE TABLE IF NOT EXISTS `auth_group` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	varchar ( 80 ) NOT NULL UNIQUE
);
CREATE INDEX IF NOT EXISTS `product_contain_4eac05b7` ON `product_contain` (
	`productId_id`
);
CREATE INDEX IF NOT EXISTS `product_contain_1d068635` ON `product_contain` (
	`storeId_id`
);
CREATE INDEX IF NOT EXISTS `django_session_de54fa62` ON `django_session` (
	`expire_date`
);
CREATE UNIQUE INDEX IF NOT EXISTS `django_content_type_app_label_76bd3d3b_uniq` ON `django_content_type` (
	`app_label`,
	`model`
);
CREATE INDEX IF NOT EXISTS `django_admin_log_e8701ad4` ON `django_admin_log` (
	`user_id`
);
CREATE INDEX IF NOT EXISTS `django_admin_log_417f1b1c` ON `django_admin_log` (
	`content_type_id`
);
CREATE UNIQUE INDEX IF NOT EXISTS `auth_user_user_permissions_user_id_14a6b632_uniq` ON `auth_user_user_permissions` (
	`user_id`,
	`permission_id`
);
CREATE INDEX IF NOT EXISTS `auth_user_user_permissions_e8701ad4` ON `auth_user_user_permissions` (
	`user_id`
);
CREATE INDEX IF NOT EXISTS `auth_user_user_permissions_8373b171` ON `auth_user_user_permissions` (
	`permission_id`
);
CREATE UNIQUE INDEX IF NOT EXISTS `auth_user_groups_user_id_94350c0c_uniq` ON `auth_user_groups` (
	`user_id`,
	`group_id`
);
CREATE INDEX IF NOT EXISTS `auth_user_groups_e8701ad4` ON `auth_user_groups` (
	`user_id`
);
CREATE INDEX IF NOT EXISTS `auth_user_groups_0e939a4f` ON `auth_user_groups` (
	`group_id`
);
CREATE UNIQUE INDEX IF NOT EXISTS `auth_permission_content_type_id_01ab375a_uniq` ON `auth_permission` (
	`content_type_id`,
	`codename`
);
CREATE INDEX IF NOT EXISTS `auth_permission_417f1b1c` ON `auth_permission` (
	`content_type_id`
);
CREATE UNIQUE INDEX IF NOT EXISTS `auth_group_permissions_group_id_0cd325b0_uniq` ON `auth_group_permissions` (
	`group_id`,
	`permission_id`
);
CREATE INDEX IF NOT EXISTS `auth_group_permissions_8373b171` ON `auth_group_permissions` (
	`permission_id`
);
CREATE INDEX IF NOT EXISTS `auth_group_permissions_0e939a4f` ON `auth_group_permissions` (
	`group_id`
);
COMMIT;
