-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2016 at 09:33 AM
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
-- Table structure for table `food_item`
--

CREATE TABLE IF NOT EXISTS `food_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`id`, `name`, `price`, `tax`, `date_created`, `date_updated`, `category_id`) VALUES
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
(25, 'Hut Feast Meal for 2', 299, 10, '2016-05-23 08:15:28', '2016-05-23 08:15:28', 6),
(26, 'Hut Feast Meal for 4', 619, 10, '2016-05-23 08:15:28', '2016-05-23 08:15:28', 6),
(27, 'Hut Feast Meal for 6', 899, 8, '2016-05-23 08:15:28', '2016-05-23 08:15:28', 6),
(28, 'Supreme Deals', 499, 10, '2016-05-23 08:15:28', '2016-05-23 08:15:28', 6);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `food_item` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `name`) VALUES
(1, 'images/1.png'),
(2, 'images/2.png'),
(3, 'images/3.png'),
(4, 'images/4.png'),
(5, 'images/5.png'),
(6, 'images/6.png'),
(7, 'images/7.png'),
(8, 'images/8.png'),
(9, 'images/9.png'),
(10, 'images/10.png'),
(11, 'images/11.png'),
(12, 'images/12.png'),
(13, 'images/13.png'),
(14, 'images/14.png'),
(15, 'images/15.png'),
(16, 'images/16.png'),
(17, 'images/17.png'),
(18, 'images/18.png'),
(19, 'images/19.png'),
(20, 'images/20.png'),
(21, 'images/21.png'),
(22, 'images/22.png'),
(23, 'images/23.png'),
(24, 'images/24.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
