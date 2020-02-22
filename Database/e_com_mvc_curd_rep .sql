-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2019 at 06:00 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_com_mvc_curd_rep`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_add`
--

CREATE TABLE `tb_add` (
  `id` int(11) NOT NULL,
  `top` varchar(255) NOT NULL,
  `left_at` varchar(255) NOT NULL,
  `right_at` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `update_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_add`
--

INSERT INTO `tb_add` (`id`, `top`, `left_at`, `right_at`, `post`, `update_at`) VALUES
(1, 'c.jpg', 'a.jpg', 'b.jpg', 'post', 'upadt');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `id` int(11) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `statues` int(11) NOT NULL,
  `deleted_at` int(11) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_contact`
--

INSERT INTO `tb_contact` (`id`, `sender_email`, `subject`, `message`, `statues`, `deleted_at`, `update_at`) VALUES
(1, 'masudrana@gmail.com', 'adsfa', 'afdsaf', 1, 1, '2019-01-25 20:04:23'),
(2, 'islam@vai.com', 'trainer ', 'daksfasflkdfjaklhfklafhakldfh', 1, 1, '2019-01-25 20:12:47'),
(3, 'masud@gmail.com', 'masud', 'asdadfafdadsf', 0, 1, '2019-01-25 20:17:04'),
(4, 'masudrana@gmail.com', 'asdfad', 'asdfas', 0, 1, '2019-01-25 20:18:25'),
(5, 'masudrana@gmail.com', 'afdaf', 'adfafaf', 0, 1, '2019-01-25 20:17:36'),
(6, 'masudrana@gmail.com', 'afdaf', 'adfafaf', 0, 0, '2019-01-25 20:40:10'),
(7, 'pani@gmail.com', 'durobosta', 'alkdakhfaklfhaksdhfakdbvmnvzdfafdjirhkhkafdkadhsgkaf\r\nasdfjaklhfakfajkgfajfmbcvmcbvjgfjadgfjakgaiurgjhgdajkfgjdskfg', 0, 0, '2019-01-26 18:21:49'),
(8, 'pani@gmail.com', 'durobosta', 'alkdakhfaklfhaksdhfakdbvmnvzdfafdjirhkhkafdkadhsgkaf\r\nasdfjaklhfakfajkgfajfmbcvmcbvjgfjadgfjakgaiurgjhgdajkfgjdskfg', 0, 0, '2019-01-26 20:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id` int(11) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `update_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`id`, `menu_title`, `menu_name`, `update_at`) VALUES
(1, 'Laptop', 'Laptop', ''),
(4, 'Mobile', 'Mobile', ''),
(5, 'computer', 'Computer', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_details` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`id`, `product_name`, `product_price`, `product_details`, `product_category`, `product_image`, `updated_at`) VALUES
(1, 'mobile ', '10000', 'n/a', '4', '6.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site`
--

CREATE TABLE `tb_site` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `welcome_head` varchar(255) NOT NULL,
  `welcome_body` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `link_address` varchar(255) NOT NULL,
  `update_at` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_site`
--

INSERT INTO `tb_site` (`id`, `site_name`, `welcome_head`, `welcome_body`, `address`, `link_address`, `update_at`, `copyright`, `map`) VALUES
(1, 'MaskandaBazar', 'Eid Damaka Offer !', '<span style=\"color:lightgreen;\">30% Discount every Product !</span>\r\n', 'Katasur,B/27,Mohammadpur,Dhaka-1207aaaa', 'https://www.google.com/maps/place/%E0%A6%9A%E0%A6%95+%E0%A6%AC%E0%A6%BE%E0%A6%9C%E0%A6%BE%E0%A6%B0+%E0%A6%B6%E0%A6%BE%E0%A6%B9%E0%A7%80+%E0%A6%AE%E0%A6%B8%E0%A6%9C%E0%A6%BF%E0%A6%A6,+%E0%A6%93%E0%A7%9F%E0%A6%BE%E0%A6%9F%E0%A6%BE%E0%A6%B0+%E0%A6%93%E0%A7%9', '', '2019', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.824382163591!2d90.36290471484581!3d23.753641184587746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755bf5a9024664d%3A0x50c2d4fb288ff156!2sGovernment+Graphic+Arts+Institute!5e0!3m2!1sen!2sbd!4v1548172312207\" width=\"100%\" height=\"400\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_slider`
--

INSERT INTO `tb_slider` (`id`, `image_url`, `status`, `update_at`) VALUES
(1, '1.jpg', '0', '2019-01-22 14:29:52'),
(2, '2.jpg', '1', '2019-01-22 15:12:33'),
(3, '3.jpg', '2', '2019-01-22 15:12:40'),
(4, '4.jpg', '3', '2019-01-22 15:12:49'),
(5, '5.jpg', '4', '2019-01-22 15:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fristname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `email`, `password`, `username`, `fristname`, `lastname`, `type`, `phone`, `address`, `user_image`) VALUES
(2, 'islam@vaigmail.com', '1234', 'Islam Hossin', '', 'adsf', 'admin\r\n', '01345676657', 'dsfgfdgerttadsfgsfdgsdgsdfgdsg', '1.jpg'),
(3, 'masud4rana1@gmail.com', '1234', 'Masud rana', 'Masud', 'Rana', 'production', '01750396604', 'mymensingh', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_add`
--
ALTER TABLE `tb_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_site`
--
ALTER TABLE `tb_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_add`
--
ALTER TABLE `tb_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_site`
--
ALTER TABLE `tb_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
