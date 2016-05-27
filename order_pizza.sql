-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2016 at 10:23 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `order_pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `date_created`, `date_updated`) VALUES
(1, 'Pizza', '2016-05-23 07:38:08', '2016-05-23 07:38:08'),
(2, 'Pasta', '2016-05-23 07:38:08', '2016-05-23 07:38:08'),
(3, 'Chicken', '2016-05-23 07:38:08', '2016-05-23 07:38:08'),
(4, 'Appetizer', '2016-05-23 07:38:08', '2016-05-23 07:38:08'),
(5, 'Beverages', '2016-05-23 07:38:08', '2016-05-23 07:38:08'),
(6, 'Promo', '2016-05-23 07:38:08', '2016-05-23 07:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `food_item` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `order_id`, `food_item`, `name`, `price`, `tax`, `quantity`, `date_created`) VALUES
(1, 0, 0, '1', 0, 0, 0, 0),
(2, 0, 0, 'Cheese Lovers', 0, 0, 0, 0),
(3, 0, 0, 'Cheese Lovers', 0, 0, 0, 0),
(4, 0, 0, 'Supreme Deals', 0, 0, 0, 0),
(5, 0, 0, '', 0, 0, 0, 0),
(6, 0, 0, '', 0, 0, 0, 0),
(7, 0, 0, 'Lasagna Classico', 0, 0, 0, 0),
(8, 0, 0, 'Cheese Lovers', 0, 0, 0, 0),
(9, 0, 0, 'Cheese Lovers', 0, 0, 0, 0),
(10, 0, 0, 'Hawaiian Supreme', 0, 0, 0, 0),
(11, 0, 0, 'Cheese Lovers', 0, 0, 0, 0),
(12, 0, 0, 'Hawaiian Supreme', 0, 0, 0, 0),
(13, 0, 0, '6 pcs Fried Chicken', 0, 0, 0, 0),
(14, 0, 1, 'Cheese Lovers', 299, 0, 2, 0),
(15, 0, 1, 'Cheese Lovers', 299, 0, 2, 0),
(16, 0, 15, 'Slingers', 105, 0, 4, 0),
(17, 14, 10, '6 pcs Fried Chicken', 479, 10, 3, 0),
(18, 15, 10, '6 pcs Fried Chicken', 479, 10, 3, 0),
(19, 15, 11, '10 pcs Fried Chicken', 799, 10, 5, 0),
(20, 16, 2, 'Hawaiian Supreme', 299, 10, 2, 0),
(21, 16, 1, 'Cheese Lovers', 299, 10, 3, 0),
(22, 16, 6, 'Lasagna Classico', 239, 10, 5, 0),
(23, 17, 5, 'Spaghetti Bolognese with Meatballs', 155, 5, 4, 0),
(24, 17, 24, 'Supreme Deals', 499, 10, 2, 0),
(25, 17, 24, 'Supreme Deals', 499, 10, 2, 0),
(26, 18, 6, 'Lasagna Classico', 239, 10, 2, 0),
(27, 18, 24, 'Supreme Deals', 499, 10, 2, 0),
(28, 19, 6, 'Lasagna Classico', 239, 10, 2, 0),
(29, 20, 6, 'Lasagna Classico', 239, 10, 2, 0),
(30, 22, 10, '6 pcs Fried Chicken', 479, 10, 2, 0),
(31, 22, 10, '6 pcs Fried Chicken', 479, 10, 2, 0),
(32, 22, 10, '6 pcs Fried Chicken', 479, 10, 2, 0),
(33, 22, 10, '6 pcs Fried Chicken', 479, 10, 2, 0),
(34, 23, 24, 'Supreme Deals', 499, 10, 1, 0),
(35, 23, 19, 'Pepsi 1.5L', 79, 5, 2, 0),
(36, 24, 6, 'Lasagna Classico', 239, 10, 1, 0),
(37, 24, 7, 'Spaghetti Carbonara', 105, 5, 1, 0),
(38, 24, 8, 'Spaghetti Meat Sauce', 105, 5, 1, 0),
(39, 25, 14, 'Sausage Rolls', 139, 5, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `price`, `tax`, `date_created`, `date_updated`, `category_id`) VALUES
(1, 'Cheese Lovers', 299, 10, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 1),
(2, 'Hawaiian Supreme', 299, 10, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 1),
(3, 'Cheesy Pepperoni', 299, 10, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 1),
(4, 'Italian Delight', 299, 10, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 1),
(5, 'Spaghetti Bolognese with Meatballs', 155, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 2),
(6, 'Lasagna Classico', 239, 10, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 2),
(7, 'Spaghetti Carbonara', 105, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 2),
(8, 'Spaghetti Meat Sauce', 105, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 2),
(9, '4 pcs Fried Chicken', 329, 10, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 3),
(10, '6 pcs Fried Chicken', 479, 10, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 3),
(11, '10 pcs Fried Chicken', 799, 10, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 3),
(12, 'Honey BBQ', 159, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 3),
(13, 'Garlic Bread', 75, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 4),
(14, 'Sausage Rolls', 139, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 4),
(15, 'Slingers', 105, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 4),
(16, 'Flavored Rice', 29, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 4),
(17, 'Baked Cinnamon sticks', 65, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 5),
(18, 'Extra milk dip', 9, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 5),
(19, 'Pepsi 1.5L', 79, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 5),
(20, '12oz. Lipton Iced Tea', 45, 5, '2016-05-23 08:12:34', '2016-05-23 08:12:34', 5),
(21, 'Hut Feast Meal for 2', 299, 10, '2016-05-23 08:15:28', '2016-05-23 08:15:28', 6),
(22, 'Hut Feast Meal for 4', 619, 10, '2016-05-23 08:15:28', '2016-05-23 08:15:28', 6),
(23, 'Hut Feast Meal for 6', 899, 8, '2016-05-23 08:15:28', '2016-05-23 08:15:28', 6),
(24, 'Supreme Deals', 499, 10, '2016-05-23 08:15:28', '2016-05-23 08:15:28', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_amount` int(11) NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `total_tax` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total_amount`, `total_quantity`, `total_tax`, `date_created`) VALUES
(1, 618, 2, 10, 0),
(2, 618927, 23, 1010, 0),
(3, 618927309, 231, 101010, 0),
(4, 618, 2, 10, 0),
(5, 1365, 5, 20, 0),
(6, 618, 2, 10, 0),
(7, 927, 3, 30, 0),
(8, 618, 2, 20, 0),
(9, 618, 2, 20, 0),
(10, 1236, 4, 40, 0),
(11, 618, 2, 20, 0),
(12, 1236, 4, 40, 0),
(13, 618, 2, 20, 0),
(14, 1467, 3, 30, 0),
(15, 5512, 8, 80, 0),
(16, 2790, 10, 100, 0),
(17, 2676, 8, 60, 0),
(18, 1516, 4, 40, 0),
(19, 498, 2, 20, 0),
(20, 498, 2, 20, 0),
(21, 1956, 4, 40, 0),
(22, 1956, 4, 40, 0),
(23, 677, 3, 20, 0),
(24, 469, 3, 20, 0),
(25, 288, 2, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_img` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `name_img`, `category_id`) VALUES
(1, 'images/1.png', 1),
(2, 'images/2.png', 1),
(3, 'images/3.png', 1),
(4, 'images/4.png', 1),
(5, 'images/5.png', 2),
(6, 'images/6.png', 2),
(7, 'images/7.png', 2),
(8, 'images/8.png', 2),
(9, 'images/9.png', 3),
(10, 'images/10.png', 3),
(11, 'images/11.png', 3),
(12, 'images/12.png', 3),
(13, 'images/13.png', 4),
(14, 'images/14.png', 4),
(15, 'images/15.png', 4),
(16, 'images/16.png', 4),
(17, 'images/17.png', 5),
(18, 'images/18.png', 5),
(19, 'images/19.png', 5),
(20, 'images/20.png', 5),
(21, 'images/21.png', 6),
(22, 'images/22.png', 6),
(23, 'images/23.png', 6),
(24, 'images/24.png', 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
