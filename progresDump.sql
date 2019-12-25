--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _auth_group; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group OWNER TO rebasedata;

--
-- Name: _auth_group_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group_permissions OWNER TO rebasedata;

--
-- Name: _auth_permission; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_permission (
    id smallint,
    content_type_id smallint,
    codename character varying(18) DEFAULT NULL::character varying,
    name character varying(23) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_permission OWNER TO rebasedata;

--
-- Name: _auth_user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user (
    id character varying(1) DEFAULT NULL::character varying,
    password character varying(1) DEFAULT NULL::character varying,
    last_login character varying(1) DEFAULT NULL::character varying,
    is_superuser character varying(1) DEFAULT NULL::character varying,
    first_name character varying(1) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    is_staff character varying(1) DEFAULT NULL::character varying,
    is_active character varying(1) DEFAULT NULL::character varying,
    date_joined character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user OWNER TO rebasedata;

--
-- Name: _auth_user_groups; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_groups (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_groups OWNER TO rebasedata;

--
-- Name: _auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_user_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_user_permissions OWNER TO rebasedata;

--
-- Name: _django_admin_log; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_admin_log (
    id character varying(1) DEFAULT NULL::character varying,
    object_id character varying(1) DEFAULT NULL::character varying,
    object_repr character varying(1) DEFAULT NULL::character varying,
    action_flag character varying(1) DEFAULT NULL::character varying,
    change_message character varying(1) DEFAULT NULL::character varying,
    content_type_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    action_time character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_admin_log OWNER TO rebasedata;

--
-- Name: _django_content_type; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_content_type (
    id smallint,
    app_label character varying(12) DEFAULT NULL::character varying,
    model character varying(11) DEFAULT NULL::character varying
);


ALTER TABLE public._django_content_type OWNER TO rebasedata;

--
-- Name: _django_migrations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_migrations (
    id smallint,
    app character varying(12) DEFAULT NULL::character varying,
    name character varying(40) DEFAULT NULL::character varying,
    applied character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_migrations OWNER TO rebasedata;

--
-- Name: _django_session; Type: TABLE; Schema: public; Owner: rebasedata
--




CREATE TABLE public._django_session (
    session_key character varying(1) DEFAULT NULL::character varying,
    session_data character varying(1) DEFAULT NULL::character varying,
    expire_date character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_session OWNER TO rebasedata;


--
-- Drop table if exists
--
DROP TABLE IF EXISTS public._product_contain;
DROP TABLE IF EXISTS public._product_store;
DROP TABLE IF EXISTS public._product_product;

--
-- Name: _product_contain; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._product_contain (
    id smallint,
    price integer,
    productid_id smallint,
    storeid_id smallint
);


ALTER TABLE public.product_contain OWNER TO rebasedata;

--
-- Name: _product_product; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._product_product (
    id smallint,
    title character varying(6) DEFAULT NULL::character varying,
    name character varying(26) DEFAULT NULL::character varying,
    thumburl character varying(118) DEFAULT NULL::character varying,
    infourl character varying(24) DEFAULT NULL::character varying,
    rating smallint
);


ALTER TABLE public.product_product OWNER TO rebasedata;

--
-- Name: _product_store; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._product_store (
    id smallint,
    name character varying(26) DEFAULT NULL::character varying,
    adress character varying(15) DEFAULT NULL::character varying
);


ALTER TABLE public.product_store OWNER TO rebasedata;

--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._sqlite_sequence (
    name character varying(19) DEFAULT NULL::character varying,
    seq smallint
);


ALTER TABLE public._sqlite_sequence OWNER TO rebasedata;

--
-- Data for Name: _auth_group; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: _auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _auth_permission; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	2	add_permission	Can add permission
5	2	change_permission	Can change permission
6	2	delete_permission	Can delete permission
7	3	add_group	Can add group
8	3	change_group	Can change group
9	3	delete_group	Can delete group
10	4	add_user	Can add user
11	4	change_user	Can change user
12	4	delete_user	Can delete user
13	5	add_contenttype	Can add content type
14	5	change_contenttype	Can change content type
15	5	delete_contenttype	Can delete content type
16	6	add_session	Can add session
17	6	change_session	Can change session
18	6	delete_session	Can delete session
19	7	add_product	Can add product
20	7	change_product	Can change product
21	7	delete_product	Can delete product
22	8	add_store	Can add store
23	8	change_store	Can change store
24	8	delete_store	Can delete store
25	9	add_contain	Can add contain
26	9	change_contain	Can change contain
27	9	delete_contain	Can delete contain
\.


--
-- Data for Name: _auth_user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user (id, password, last_login, is_superuser, first_name, last_name, email, is_staff, is_active, date_joined, username) FROM stdin;
\.


--
-- Data for Name: _auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: _auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _django_admin_log; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) FROM stdin;
\.


--
-- Data for Name: _django_content_type; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
3	auth	group
2	auth	permission
4	auth	user
5	contenttypes	contenttype
9	product	contain
7	product	product
8	product	store
6	sessions	session
\.


--
-- Data for Name: _django_migrations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-12-20
2	auth	0001_initial	2019-12-20
3	admin	0001_initial	2019-12-20
4	admin	0002_logentry_remove_auto_add	2019-12-20
5	contenttypes	0002_remove_content_type_name	2019-12-20
6	auth	0002_alter_permission_name_max_length	2019-12-20
7	auth	0003_alter_user_email_max_length	2019-12-20
8	auth	0004_alter_user_username_opts	2019-12-20
9	auth	0005_alter_user_last_login_null	2019-12-20
10	auth	0006_require_contenttypes_0002	2019-12-20
11	auth	0007_alter_validators_add_error_messages	2019-12-20
12	product	0001_initial	2019-12-20
13	product	0002_auto_20191217_0827	2019-12-20
14	product	0003_auto_20191219_0957	2019-12-20
15	product	0004_auto_20191219_1010	2019-12-20
16	product	0005_auto_20191220_1122	2019-12-20
17	sessions	0001_initial	2019-12-20
18	product	0006_auto_20191220_1125	2019-12-20
\.


--
-- Data for Name: _django_session; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: _product_contain; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.product_contain (id, price, productid_id, storeid_id) FROM stdin;
0	120000	1	1
1	125000	1	2
2	90000	1	3
3	145000	1	4
4	150000	1	5
5	55000	2	1
6	50000	2	2
7	45000	2	3
8	60000	2	4
9	40000	2	5
10	60000	3	1
11	55000	3	2
12	70000	3	3
13	40000	3	4
14	80000	3	5
15	66000	4	1
16	75000	4	2
17	32000	4	3
18	44000	4	4
19	70000	4	5
20	69000	5	1
21	55000	5	2
22	47000	5	3
23	64000	5	4
24	54000	5	5
25	69000	1	6
26	55000	2	6
27	47000	3	6
28	64000	4	6
29	54000	5	6
\.


--
-- Data for Name: _product_product; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.product_product (id, title, name, thumburl, infourl, rating) FROM stdin;
1	cafe	Vinacafe	https://vinacafebienhoa-cms-production.s3-ap-southeast-1.amazonaws.com/iblock/b56/b56fb678d8abcbd85957eb7b27f2e587.png	https://www.kiotviet.vn/	4
2	cozz	COZZ CANDY	http://www.dhgpharma.com.vn/images/stories/virtuemart/product/cozz%20Hop%2012.png	https://www.kiotviet.vn/	3
3	lipton	Trà  lipton	http://htmart.org/wp-content/uploads/2018/11/18-2.jpg	https://www.kiotviet.vn/	2
4	afc	Bánh AFC Lúa Mì	https://cdn.tgdd.vn/Products/Images/3357/79550/bhx/banh-dd-afc-lua-mi-hop-200g-2-org.jpg	https://www.kiotviet.vn/	5
5	lavie	Nước đóng chai lavie 350ml	https://www.nuocsuoi.vn/wp-content/uploads/2018/08/nuoc-khoang-lavie-350ml-0304.jpg	https://www.kiotviet.vn/	4
\.


--
-- Data for Name: _product_store; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public.product_store (id, name, adress) FROM stdin;
1	Tạp hóa Hồng Vân	390 Nguyễn Trãi
2	Tạp hóa anh Quân 	29 Khâm Thiên
3	Tạp hóa Văn Quyền	89 Láng Hạ
4	Mua sắm tự chọn Thanh Nhàn	99 Giải Phóng
5	Tạp hóa Thanh Hoa  	32 Ngọc Hồi
6	Cửa hàng Minh Đức	90 Trần Phú
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY sqlite_sequence (name, seq) FROM stdin;
product_store	6
product_product	5
product_contain	29
django_migrations	18
django_content_type	9
auth_permission	27
\.


--
-- PostgreSQL database dump complete
--

