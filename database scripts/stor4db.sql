-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for store4db
CREATE DATABASE IF NOT EXISTS `store4db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `store4db`;

-- Dumping structure for table store4db.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` text DEFAULT NULL,
  `categoryStatus` text DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table store4db.category: ~0 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table store4db.countries
CREATE TABLE IF NOT EXISTS `countries` (
  `code` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `continent_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table store4db.countries: ~0 rows (approximately)
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

-- Dumping structure for table store4db.merchants
CREATE TABLE IF NOT EXISTS `merchants` (
  `id` int(11) NOT NULL,
  `merchant_name` varchar(255) DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `created at` varchar(255) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table store4db.merchants: ~0 rows (approximately)
/*!40000 ALTER TABLE `merchants` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchants` ENABLE KEYS */;

-- Dumping structure for table store4db.offer
CREATE TABLE IF NOT EXISTS `offer` (
  `calculateOfferPrice` float DEFAULT NULL,
  `applyDiscountPrice` int(11) DEFAULT NULL,
  `ApplyTimeBasedDiscountPrice()` datetime DEFAULT NULL,
  `offerStatus` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table store4db.offer: ~0 rows (approximately)
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;

-- Dumping structure for table store4db.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `orderStatus` text DEFAULT NULL,
  `payment` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table store4db.orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table store4db.order_items
CREATE TABLE IF NOT EXISTS `order_items` (
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table store4db.order_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;

-- Dumping structure for table store4db.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `productName` text DEFAULT NULL,
  `productDescription` text DEFAULT NULL,
  `productPrice` float DEFAULT NULL,
  `discountPrice` int(11) DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table store4db.product: ~0 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table store4db.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `status` enum('out_of_stock','in_stock','running_low') DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table store4db.products: ~0 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table store4db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `phone` text DEFAULT NULL,
  `role` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `countryCode` int(11) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table store4db.users: ~26 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `full_name`, `created_at`, `phone`, `role`, `status`, `countryCode`, `images`, `email`, `password`) VALUES
	(1, 'Almira Smallpeace', '0000-00-00 00:00:00', '264-542-1244', NULL, NULL, 0, NULL, NULL, '602-10-2070'),
	(2, 'Bevvy Groger', '0000-00-00 00:00:00', '591-427-9616', NULL, NULL, 0, NULL, NULL, '147-01-7231'),
	(3, 'Alys Tarply', '0000-00-00 00:00:00', '923-448-2681', NULL, NULL, 0, NULL, NULL, '602-59-3625'),
	(4, 'Hart Markey', '0000-00-00 00:00:00', '204-519-1984', NULL, NULL, 0, NULL, NULL, '120-61-1251'),
	(5, 'Tallia Zukerman', '0000-00-00 00:00:00', '712-958-6887', NULL, NULL, 0, NULL, NULL, '798-23-5418'),
	(6, 'Mohandis Larrad', '0000-00-00 00:00:00', '590-316-3050', NULL, NULL, 0, NULL, NULL, '864-32-1776'),
	(7, 'Theo Flicker', '0000-00-00 00:00:00', '927-802-8259', NULL, NULL, 0, NULL, NULL, '353-71-6575'),
	(8, 'Jenna Gilkison', '0000-00-00 00:00:00', '954-721-3914', NULL, NULL, 0, NULL, NULL, '396-91-2687'),
	(9, 'Byrann Fitzgerald', '0000-00-00 00:00:00', '859-107-4721', NULL, NULL, 0, NULL, NULL, '521-90-9562'),
	(10, 'Giovanni Cathcart', '0000-00-00 00:00:00', '281-499-8921', NULL, NULL, 0, NULL, NULL, '544-07-7324'),
	(11, 'Haleigh Reisen', '0000-00-00 00:00:00', '320-355-8161', NULL, NULL, 0, NULL, NULL, '574-76-6994'),
	(12, 'Wendeline Padilla', '0000-00-00 00:00:00', '208-942-1413', NULL, NULL, 0, NULL, NULL, '536-31-6831'),
	(13, 'Hedwiga Peto', '0000-00-00 00:00:00', '802-186-6283', NULL, NULL, 0, NULL, NULL, '660-40-6412'),
	(14, 'Justine Taggerty', '0000-00-00 00:00:00', '880-492-5454', NULL, NULL, 0, NULL, NULL, '487-46-4698'),
	(15, 'Shaun Simoneton', '0000-00-00 00:00:00', '899-872-5539', NULL, NULL, 0, NULL, NULL, '568-94-6706'),
	(16, 'Lyssa Gilluley', '0000-00-00 00:00:00', '651-221-8518', NULL, NULL, 0, NULL, NULL, '773-41-4204'),
	(17, 'Alonzo Pimlott', '0000-00-00 00:00:00', '710-523-0606', NULL, NULL, 0, NULL, NULL, '616-06-5669'),
	(18, 'Rodi McCaskell', '0000-00-00 00:00:00', '781-174-4486', NULL, NULL, 0, NULL, NULL, '824-79-7386'),
	(19, 'Donni Ainge', '0000-00-00 00:00:00', '564-814-1330', NULL, NULL, 0, NULL, NULL, '758-71-4167'),
	(20, 'Urbanus Mayor', '0000-00-00 00:00:00', '150-747-4280', NULL, NULL, 0, NULL, NULL, '676-51-0925'),
	(21, 'Stephie Cruttenden', '0000-00-00 00:00:00', '441-110-4907', NULL, NULL, 0, NULL, NULL, '506-03-2167'),
	(22, 'Denni Bumpas', '0000-00-00 00:00:00', '332-859-4484', NULL, NULL, 0, NULL, NULL, '478-87-2611'),
	(23, 'Nola Garroway', '0000-00-00 00:00:00', '424-824-5834', NULL, NULL, 0, NULL, NULL, '890-25-2194'),
	(24, 'Kelsey Riatt', '0000-00-00 00:00:00', '392-705-8417', NULL, NULL, 0, NULL, NULL, '644-41-4245'),
	(25, 'Ivette Gomme', '0000-00-00 00:00:00', '752-766-8508', NULL, NULL, 0, NULL, NULL, '817-66-0090'),
	(26, 'Mireielle Pace', '0000-00-00 00:00:00', '166-196-1718', NULL, NULL, 0, NULL, NULL, '127-08-2615');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
