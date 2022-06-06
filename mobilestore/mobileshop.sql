-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 06:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact', 7, 'add_contact'),
(26, 'Can change contact', 7, 'change_contact'),
(27, 'Can delete contact', 7, 'delete_contact'),
(28, 'Can view contact', 7, 'view_contact'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add order', 9, 'add_order'),
(34, 'Can change order', 9, 'change_order'),
(35, 'Can delete order', 9, 'delete_order'),
(36, 'Can view order', 9, 'view_order'),
(37, 'Can add product', 10, 'add_product'),
(38, 'Can change product', 10, 'change_product'),
(39, 'Can delete product', 10, 'delete_product'),
(40, 'Can view product', 10, 'view_product'),
(41, 'Can add review', 11, 'add_review'),
(42, 'Can change review', 11, 'change_review'),
(43, 'Can delete review', 11, 'delete_review'),
(44, 'Can view review', 11, 'view_review'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem'),
(49, 'Can add feature', 13, 'add_feature'),
(50, 'Can change feature', 13, 'change_feature'),
(51, 'Can delete feature', 13, 'delete_feature'),
(52, 'Can view feature', 13, 'view_feature'),
(53, 'Can add checkout detail', 14, 'add_checkoutdetail'),
(54, 'Can change checkout detail', 14, 'change_checkoutdetail'),
(55, 'Can delete checkout detail', 14, 'delete_checkoutdetail'),
(56, 'Can view checkout detail', 14, 'view_checkoutdetail'),
(57, 'Can add update order', 15, 'add_updateorder'),
(58, 'Can change update order', 15, 'change_updateorder'),
(59, 'Can delete update order', 15, 'delete_updateorder'),
(60, 'Can view update order', 15, 'view_updateorder');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$k0Ywus5jqMRFRpYdpA0LwJ$JqCZdtLdYKf46Ko3foJt6K2PEKp0Q/rx2USbcWul7Ck=', '2022-04-12 23:51:01.414923', 1, 'rithesh', '', '', 'retashghosh@gmail.com', 1, 1, '2022-04-12 08:44:46.072285');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-12 08:47:03.508958', '1', 'Iphone 13 Pro Gold', 1, '[{\"added\": {}}]', 10, 1),
(2, '2022-04-12 08:48:10.263110', '1', 'Iphone 13 Pro Gold Feature: NETWORK	Technology	 GSM / CDMA / HSPA / EVDO / LTE / 5G LAUNCH	Announced	2021, September 14 Status	Available. Released 2021, September 24 BODY	Dimensions	146.7 x 71.5 x 7.7', 1, '[{\"added\": {}}]', 13, 1),
(3, '2022-04-12 23:57:11.664412', '2', 'iphone 13 mini', 1, '[{\"added\": {}}]', 10, 1),
(4, '2022-04-12 23:57:58.847568', '2', 'iphone 13 mini Feature: NETWORK	Technology	 GSM / CDMA / HSPA / EVDO / LTE / 5G LAUNCH	Announced	2021, September 14 Status	Available. Released 2021, September 24 BODY	Dimensions	131.5 x 64.2 x 7.7 mm ', 1, '[{\"added\": {}}]', 13, 1),
(5, '2022-04-13 00:01:02.813174', '3', 'Iphone 13 Pro Max Graphite', 1, '[{\"added\": {}}]', 10, 1),
(6, '2022-04-13 00:01:32.373404', '3', 'Iphone 13 Pro Max Graphite Feature: Iphone 13 Pro Gold Feature: NETWORK Technology GSM / CDMA / HSPA / EVDO / LTE / 5G LAUNCH Announced 2021, September 14 Status Available. Released 2021, September 24', 1, '[{\"added\": {}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(14, 'shop', 'checkoutdetail'),
(7, 'shop', 'contact'),
(8, 'shop', 'customer'),
(13, 'shop', 'feature'),
(9, 'shop', 'order'),
(12, 'shop', 'orderitem'),
(10, 'shop', 'product'),
(11, 'shop', 'review'),
(15, 'shop', 'updateorder');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-12 08:43:33.500220'),
(2, 'auth', '0001_initial', '2022-04-12 08:43:34.054215'),
(3, 'admin', '0001_initial', '2022-04-12 08:43:34.208778'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-12 08:43:34.227552'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-12 08:43:34.240545'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-12 08:43:34.310501'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-12 08:43:34.371353'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-12 08:43:34.395858'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-12 08:43:34.409849'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-12 08:43:34.485802'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-12 08:43:34.490799'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-12 08:43:34.502792'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-12 08:43:34.526777'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-12 08:43:34.554760'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-12 08:43:34.584742'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-12 08:43:34.599733'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-12 08:43:34.624717'),
(18, 'sessions', '0001_initial', '2022-04-12 08:43:34.676922'),
(19, 'shop', '0001_initial', '2022-04-12 08:43:35.357586'),
(20, 'shop', '0002_updateorder', '2022-04-12 08:43:35.396579'),
(21, 'shop', '0003_auto_20210909_2301', '2022-04-12 08:43:35.549109'),
(22, 'shop', '0004_updateorder_date', '2022-04-12 08:43:35.595512');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('e3sckz7m047oemclyvqdxpq5qefqj4h8', '.eJxVjMsOwiAQRf-FtSHQDo-6dO83kJkBpGogKe3K-O_apAvd3nPOfYmA21rC1tMS5ijOQovT70bIj1R3EO9Yb01yq-syk9wVedAury2m5-Vw_w4K9vKtAcFgQkx2cAiZyVjj88igRkJ0zHmIoCw4Y7z1kyZP44RKc3ZReWfF-wP7wDgB:1neCLa:ypap87e4wTk46Y8RYc89bxO8ATOucZy3shk9zeSqKoU', '2022-04-26 08:58:02.496393'),
('hn9x8am2agd71z6y23ec2v95ppf1047x', '.eJxVjMsOwiAQRf-FtSHQDo-6dO83kJkBpGogKe3K-O_apAvd3nPOfYmA21rC1tMS5ijOQovT70bIj1R3EO9Yb01yq-syk9wVedAury2m5-Vw_w4K9vKtAcFgQkx2cAiZyVjj88igRkJ0zHmIoCw4Y7z1kyZP44RKc3ZReWfF-wP7wDgB:1neNs4:AJQwyRr82g0H2oLbZ9Z3qb6dks7-Cx7NCVRDWi-pVCs', '2022-04-26 21:16:20.976505'),
('wsw5k8dqqrtrwl9l0838rpiztxoo27vm', '.eJxVjMsOwiAQRf-FtSHQDo-6dO83kJkBpGogKe3K-O_apAvd3nPOfYmA21rC1tMS5ijOQovT70bIj1R3EO9Yb01yq-syk9wVedAury2m5-Vw_w4K9vKtAcFgQkx2cAiZyVjj88igRkJ0zHmIoCw4Y7z1kyZP44RKc3ZReWfF-wP7wDgB:1neCLG:dzNCYfjiS1FH1iob5HMhDXDadxa0CQvpO1cN4LcqmKw', '2022-04-26 08:57:42.926321');

-- --------------------------------------------------------

--
-- Table structure for table `shop_checkoutdetail`
--

CREATE TABLE `shop_checkoutdetail` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `total_amount` varchar(10) DEFAULT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop_contact`
--

CREATE TABLE `shop_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `desc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop_customer`
--

CREATE TABLE `shop_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_customer`
--

INSERT INTO `shop_customer` (`id`, `name`, `email`, `phone_number`, `user_id`) VALUES
(1, 'Rithesh Ghosh', 'retashghosh@gmail.com', '+880123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_feature`
--

CREATE TABLE `shop_feature` (
  `id` int(11) NOT NULL,
  `feature` varchar(1000) DEFAULT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_feature`
--

INSERT INTO `shop_feature` (`id`, `feature`, `product_id`) VALUES
(1, 'NETWORK	Technology	 GSM / CDMA / HSPA / EVDO / LTE / 5G LAUNCH	Announced	2021, September 14 Status	Available. Released 2021, September 24 BODY	Dimensions	146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in) Weight	204 g (7.20 oz) Build	Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame SIM	Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM/eSIM, dual stand-by)  	IP68 dust/water resistant (up to 6m for 30 mins) Apple Pay (Visa, MasterCard, AMEX certified) DISPLAY	Type	Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (HBM), 1200 nits (peak) Size	6.1 inches, 90.2 cm2 (~86.0% screen-to-body ratio) Resolution	1170 x 2532 pixels, 19.5:9 ratio (~460 ppi density) Protection	Scratch-resistant ceramic glass, oleophobic coating  	Wide color gamut True-tone PLATFORM	OS	iOS 15, upgradable to iOS 15.4.1 Chipset	Apple A15 Bionic (5 nm) CPU	Hexa-core (2x3.23 GHz Avalanche + 4x1.82 GHz Blizzard) GPU	Apple GPU (5-core graphics) MEMORY	Card slot	No Internal	128GB 6GB', 1),
(2, 'NETWORK	Technology	 GSM / CDMA / HSPA / EVDO / LTE / 5G LAUNCH	Announced	2021, September 14 Status	Available. Released 2021, September 24 BODY	Dimensions	131.5 x 64.2 x 7.7 mm (5.18 x 2.53 x 0.30 in) Weight	141 g (4.97 oz) Build	Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame SIM	Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by)  	IP68 dust/water resistant (up to 6m for 30 mins) Apple Pay (Visa, MasterCard, AMEX certified) DISPLAY	Type	Super Retina XDR OLED, HDR10, Dolby Vision, 800 nits (HBM), 1200 nits (peak) Size	5.4 inches, 71.9 cm2 (~85.1% screen-to-body ratio) Resolution	1080 x 2340 pixels, 19.5:9 ratio (~476 ppi density) Protection	Scratch-resistant ceramic glass, oleophobic coating  	Wide color gamut True-tone PLATFORM	OS	iOS 15, upgradable to iOS 15.4.1 Chipset	Apple A15 Bionic (5 nm) CPU	Hexa-core (2x3.23 GHz Avalanche + 4x1.82 GHz Blizzard) GPU	Apple GPU (4-core graphics) MEMORY	Card slot	No Internal	128GB 4GB RAM, 256GB 4GB RAM,', 2),
(3, 'Iphone 13 Pro Gold Feature: NETWORK Technology GSM / CDMA / HSPA / EVDO / LTE / 5G LAUNCH Announced 2021, September 14 Status Available. Released 2021, September 24 BODY Dimensions 146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in) Weight 204 g (7.20 oz) Build Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame SIM Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM/eSIM, dual stand-by) IP68 dust/water resistant (up to 6m for 30 mins) Apple Pay (Visa, MasterCard, AMEX certified) DISPLAY Type Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (HBM), 1200 nits (peak) Size 6.1 inches, 90.2 cm2 (~86.0% screen-to-body ratio) Resolution 1170 x 2532 pixels, 19.5:9 ratio (~460 ppi density) Protection Scratch-resistant ceramic glass, oleophobic coating Wide color gamut True-tone PLATFORM OS iOS 15, upgradable to iOS 15.4.1 Chipset Apple A15 Bionic (5 nm) CPU Hexa-core (2x3.23 GHz Avalanche + 4x1.82 GHz Blizzard) GPU Apple GPU (5-core graphics) MEMORY Card slo', 3);

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE `shop_order` (
  `id` int(11) NOT NULL,
  `date_ordered` datetime(6) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_order`
--

INSERT INTO `shop_order` (`id`, `date_ordered`, `complete`, `customer_id`) VALUES
(1, '2022-04-12 08:44:53.984872', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_orderitem`
--

CREATE TABLE `shop_orderitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_orderitem`
--

INSERT INTO `shop_orderitem` (`id`, `quantity`, `date_added`, `order_id`, `product_id`) VALUES
(5, 3, '2022-04-12 21:55:20.270498', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE `shop_product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`id`, `name`, `price`, `image`) VALUES
(1, 'Iphone 13 Pro Gold', 999, 'iphone-13-pro-max-gold-select.jpg'),
(2, 'iphone 13 mini', 729, 'AppleiPhone.jpg'),
(3, 'Iphone 13 Pro Max Graphite', 1199, 'apple-iphone-13-pro-max.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shop_review`
--

CREATE TABLE `shop_review` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shop_updateorder`
--

CREATE TABLE `shop_updateorder` (
  `id` int(11) NOT NULL,
  `order_id_id` int(11) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_updateorder`
--

INSERT INTO `shop_updateorder` (`id`, `order_id_id`, `desc`, `date`) VALUES
(1, 1, 'Your Order is Successfully Placed.', '2022-04-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `shop_checkoutdetail`
--
ALTER TABLE `shop_checkoutdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_checkoutdetail_customer_id_301bf8ee_fk_shop_customer_id` (`customer_id`),
  ADD KEY `shop_checkoutdetail_order_id_9ed842bd_fk_shop_order_id` (`order_id`);

--
-- Indexes for table `shop_contact`
--
ALTER TABLE `shop_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_customer`
--
ALTER TABLE `shop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `shop_feature`
--
ALTER TABLE `shop_feature`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_feature_product_id_7336a93d_fk_shop_product_id` (`product_id`);

--
-- Indexes for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_order_customer_id_f638df20_fk_shop_customer_id` (`customer_id`);

--
-- Indexes for table `shop_orderitem`
--
ALTER TABLE `shop_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_orderitem_order_id_2f1b00cf_fk_shop_order_id` (`order_id`),
  ADD KEY `shop_orderitem_product_id_48153f22_fk_shop_product_id` (`product_id`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_review`
--
ALTER TABLE `shop_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_review_customer_id_a570316d_fk_shop_customer_id` (`customer_id`),
  ADD KEY `shop_review_product_id_f74dddfd_fk_shop_product_id` (`product_id`);

--
-- Indexes for table `shop_updateorder`
--
ALTER TABLE `shop_updateorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_updateorder_order_id_id_f1091309` (`order_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `shop_checkoutdetail`
--
ALTER TABLE `shop_checkoutdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_contact`
--
ALTER TABLE `shop_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_customer`
--
ALTER TABLE `shop_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_feature`
--
ALTER TABLE `shop_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_orderitem`
--
ALTER TABLE `shop_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop_review`
--
ALTER TABLE `shop_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_updateorder`
--
ALTER TABLE `shop_updateorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_checkoutdetail`
--
ALTER TABLE `shop_checkoutdetail`
  ADD CONSTRAINT `shop_checkoutdetail_customer_id_301bf8ee_fk_shop_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `shop_customer` (`id`),
  ADD CONSTRAINT `shop_checkoutdetail_order_id_9ed842bd_fk_shop_order_id` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`id`);

--
-- Constraints for table `shop_customer`
--
ALTER TABLE `shop_customer`
  ADD CONSTRAINT `shop_customer_user_id_7e6c4129_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_feature`
--
ALTER TABLE `shop_feature`
  ADD CONSTRAINT `shop_feature_product_id_7336a93d_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`);

--
-- Constraints for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD CONSTRAINT `shop_order_customer_id_f638df20_fk_shop_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `shop_customer` (`id`);

--
-- Constraints for table `shop_orderitem`
--
ALTER TABLE `shop_orderitem`
  ADD CONSTRAINT `shop_orderitem_order_id_2f1b00cf_fk_shop_order_id` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`id`),
  ADD CONSTRAINT `shop_orderitem_product_id_48153f22_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`);

--
-- Constraints for table `shop_review`
--
ALTER TABLE `shop_review`
  ADD CONSTRAINT `shop_review_customer_id_a570316d_fk_shop_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `shop_customer` (`id`),
  ADD CONSTRAINT `shop_review_product_id_f74dddfd_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`);

--
-- Constraints for table `shop_updateorder`
--
ALTER TABLE `shop_updateorder`
  ADD CONSTRAINT `shop_updateorder_order_id_id_f1091309_fk_shop_order_id` FOREIGN KEY (`order_id_id`) REFERENCES `shop_order` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
