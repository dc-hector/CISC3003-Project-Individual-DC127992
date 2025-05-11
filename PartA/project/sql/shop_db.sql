-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2025-05-08 04:35:28
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `shop_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `price`, `qty`) VALUES
('5G3JVkszq5lUnFt6wJfV', 'RPLKQGSKQhdut8qS83yb', 'MvVfrGV4si9yDTZ9JhHp', '2000', '1'),
('8zFQ8EmgL4yJpFYEdli1', 'RPLKQGSKQhdut8qS83yb', '2W7OCWYHPZP3jMXTdtsN', '6999', '1');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`) VALUES
('A40DYCfZo6M64oGQae1G', 'RPLKQGSKQhdut8qS83yb', 'Yang Zhihan', '62357040', 'dc12799@umac.mo', 'Univerisity of Macau, Univerisity of Macau, Macau, China - 41110', 'home', 'credit or debit card', 'MvVfrGV4si9yDTZ9JhHp', '2000', '1', '2025-05-07', 'in progress'),
('16WYfj8Npmq9i3YomnyB', 'RPLKQGSKQhdut8qS83yb', 'Yang Zhihan', '62357040', 'dc12799@umac.mo', 'Univerisity of Macau, Univerisity of Macau, Macau, China - 41110', 'home', 'credit or debit card', '2W7OCWYHPZP3jMXTdtsN', '6999', '1', '2025-05-07', 'in progress');

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
('MvVfrGV4si9yDTZ9JhHp', 'Bike', '2000', '1Ueb5MWLUZXkI42ldW59.webp'),
('2W7OCWYHPZP3jMXTdtsN', 'iPhone', '6999', '5j1xeHyB8ZnCHqMMAQkS.jpg'),
('syUFN9w2xEEcrL9Q3fR7', 'Laptop', '8999', '45dtEIuVvezRkiyYa7Qj.jpg'),
('itksXZm1DBu8EPHxdiJw', 'Shoes', '289', 'UjA8vC4QWYCxbMOtTpTu.webp'),
('4gg93tLsmTBAzT1TQHC6', 'T-Shirt', '210', 'PHdztLiD18KqzGyJhp8A.jpg'),
('0TCN7Ax1hX3BTPCKun7C', 'Dog Food', '200', 'bWJD5rj6etipoZfNxbXd.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
