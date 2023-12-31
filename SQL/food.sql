-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2023 at 10:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `pl_configs`
--

CREATE TABLE `pl_configs` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `variable` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pl_configs`
--

INSERT INTO `pl_configs` (`id`, `variable`, `value`) VALUES
(1, 'site_logo', 'uploads/settings/ifood.png'),
(2, 'site_title', 'iFood'),
(3, 'site_url', 'puertokhalid.com'),
(4, 'site_description', 'Puerto iFood Script is an awesome script that lets you run your own restaurant or multi-restaurant merchant hosting site. It has been built from scratch using the latest web technologies available such as PHP7, HTML5, and CSS3.'),
(5, 'site_keywords', 'iFood, food platform, food delivery, restaurants, restaurant delivery, delivery food online, mcdonalds, meals'),
(6, 'site_image', ''),
(7, 'site_register', '1'),
(8, 'site_forget', '1'),
(9, 'site_smtp_auth', '1'),
(10, 'site_smtp_port', '587'),
(11, 'site_author', 'Puertokhalid'),
(12, 'site_country', 'US'),
(13, 'site_noreply', 'donotreply@email.com'),
(14, 'fotget_password_msg', ''),
(15, 'email_verification_msg', ''),
(16, 'site_plans', '0'),
(17, 'login_facebook', '1'),
(18, 'login_twitter', '1'),
(19, 'login_google', '1'),
(20, 'login_fbAppId', ''),
(21, 'login_fbAppSecret', ''),
(22, 'login_fbAppVersion', ''),
(23, 'login_twConKey', ''),
(24, 'login_twConSecret', ''),
(25, 'login_ggClientId', ''),
(26, 'login_ggClientSecret', ''),
(27, 'site_paypal_id', ''),
(28, 'site_paypal_live', '0'),
(29, 'site_currency_name', 'USD'),
(30, 'site_currency_symbol', '$'),
(31, 'site_smtp', '0'),
(32, 'site_smtp_host', 'localhost'),
(33, 'site_smtp_username', ''),
(34, 'site_smtp_password', ''),
(35, 'site_smtp_encryption', 'none'),
(36, 'site_favicon', 'uploads/settings/ODAtZmF2ZWljb24-_1591272924.png'),
(37, 'site_paypal_client_id', ''),
(38, 'site_paypal_client_secret', ''),
(39, 'site_users', '0'),
(40, 'site_facebook', ''),
(41, 'site_twitter', ''),
(42, 'site_instagram', ''),
(43, 'site_youtube', ''),
(44, 'site_skype', ''),
(45, 'taxes', '10'),
(46, 'site_stripe_key', ''),
(47, 'site_stripe_secret', ''),
(48, 'ipinfo', '9db5fed4cf44c2');

-- --------------------------------------------------------

--
-- Table structure for table `pl_cuisines`
--

CREATE TABLE `pl_cuisines` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pl_images`
--

CREATE TABLE `pl_images` (
  `id` int(11) NOT NULL,
  `author` int(11) DEFAULT 0,
  `table_name` varchar(20) DEFAULT NULL,
  `table_id` int(11) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT 0,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pl_items`
--

CREATE TABLE `pl_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `selling_price` varchar(8) DEFAULT NULL,
  `reduce_price` varchar(8) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `restaurant` int(11) DEFAULT 0,
  `menu` int(11) DEFAULT 0,
  `cuisine` int(11) DEFAULT 0,
  `sizes` text DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 0,
  `instock` tinyint(1) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `delivery_price` float DEFAULT 0,
  `delivery_time` varchar(50) DEFAULT NULL,
  `home` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pl_menus`
--

CREATE TABLE `pl_menus` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT 0,
  `restaurant` int(11) DEFAULT 0,
  `sort` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pl_orders`
--

CREATE TABLE `pl_orders` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `payment_amount` varchar(10) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `invoice_id` varchar(200) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `order_cart` text DEFAULT NULL,
  `billing_info` text DEFAULT NULL,
  `author` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 0,
  `restaurant` int(11) DEFAULT 0,
  `item` int(11) DEFAULT 0,
  `user` int(11) DEFAULT 0,
  `ip` varchar(50) DEFAULT NULL,
  `os` varchar(50) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `country_name` varchar(50) DEFAULT NULL,
  `country_code` varchar(5) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city_name` varchar(50) DEFAULT NULL,
  `delivery_date` int(11) DEFAULT NULL,
  `shipping_date` int(11) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pl_pages`
--

CREATE TABLE `pl_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` int(11) DEFAULT 0,
  `updated_at` int(11) DEFAULT 0,
  `footer` tinyint(1) DEFAULT 0,
  `link` varchar(255) DEFAULT NULL,
  `sort` smallint(6) DEFAULT 0,
  `keywords` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pl_pages`
--

INSERT INTO `pl_pages` (`id`, `title`, `content`, `created_at`, `updated_at`, `footer`, `link`, `sort`, `keywords`, `description`) VALUES
(1, 'About', '[b]Who are we?[/b]\r\niFood is a technology company that connects people with the best in their cities. We do this by empowering local businesses and in turn, generate new ways for people to earn, work and live. We started by facilitating door-to-door delivery, but we see this as just the beginning of connecting people with possibility — easier evenings, happier days, bigger savings accounts, wider nets and stronger communities.\r\n\r\n[b]Delivering good to Customers[/b]\r\nWith your favorite restaurants at your fingertips, iFood satisfies your cravings and connects you with possibilities — more time and energy for yourself and those you love.\r\n', 1472750541, 1593690346, 0, '0', 1, 'a:3:{i:0;s:4:\"key1\";i:1;s:4:\"key2\";i:2;s:4:\"key3\";}', ''),
(2, 'Contact', 'You can contact us at contact@email.com for your contact questions, opinions, suggestions or skills.\r\nKilic Ali Pasa Cad. No: 12 K: 1 karakãy, Istanbul, Turkey\r\nCana Bilisim Hizmetleri ve Ticaret A.Åž.\r\n\r\nTax Identification Number 1111438913\r\n0212 223 59 00', 1472750541, 1593691345, 0, '0', 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pl_payments`
--

CREATE TABLE `pl_payments` (
  `id` int(11) NOT NULL,
  `plan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_id` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_id` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `currency` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(11) DEFAULT 0,
  `author` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pl_plans`
--

CREATE TABLE `pl_plans` (
  `id` int(11) NOT NULL,
  `plan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `currency` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc3` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc4` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc5` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc6` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc7` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc8` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc9` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT 0,
  `restaurants` int(11) DEFAULT 0,
  `menus` int(11) DEFAULT 0,
  `items` int(11) DEFAULT 0,
  `orders` int(11) DEFAULT 0,
  `export_statistics` tinyint(1) DEFAULT 0,
  `invoices` tinyint(1) DEFAULT 0,
  `statistics` tinyint(1) DEFAULT 0,
  `stripe` tinyint(1) DEFAULT 0,
  `show_ads` tinyint(1) DEFAULT 0,
  `support` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pl_plans`
--

INSERT INTO `pl_plans` (`id`, `plan`, `price`, `currency`, `desc1`, `desc2`, `desc3`, `desc4`, `desc5`, `desc6`, `desc7`, `desc8`, `desc9`, `created_at`, `restaurants`, `menus`, `items`, `orders`, `export_statistics`, `invoices`, `statistics`, `stripe`, `show_ads`, `support`) VALUES
(1, 'Free Plan', 0.00, '$', '1 Restaurant', '3 Restaurant menus', '6 Restaurant items', '10 Orders a month', 'Paypal payment', 'Statistics', 'Export statistics', 'Invoices', 'Priority support', 0, 1, 3, 3, 3, 0, 0, 0, 0, 0, 0),
(2, 'Basic Plan', 9.99, '$', '3 Restaurant', '6 Restaurant menus', '20 Restaurant items', '20 Orders a month', 'Paypal payment', 'Statistics', 'Export statistics', 'Invoices', 'Priority support', 0, 3, 5, 12, 6, 0, 0, 0, 0, 0, 0),
(3, 'Regular Plan', 19.99, '$', '6 Restaurant', '12 Restaurant menus', '50 Restaurant items', '40 Orders a month', 'Paypal/Stripe payment', 'Statistics', 'Export statistics', 'Invoices', 'Priority support', 0, 8, 10, 18, 10, 0, 1, 1, 1, 0, 0),
(4, 'Pro Plan', 24.99, '$', 'Unlimited Restaurant', 'Unlimited Restaurant menus', 'Unlimited Restaurant items', 'Unlimited Orders a month', 'Paypal/Stripe payment', 'Statistics', 'Export statistics', 'Invoices', 'Priority support', 0, 99999999, 99999999, 99999999, 99999999, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pl_restaurants`
--

CREATE TABLE `pl_restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `delivery_time` varchar(20) DEFAULT NULL,
  `delivery_fees` varchar(8) DEFAULT NULL,
  `cuisine` varchar(255) DEFAULT NULL,
  `services` tinyint(1) DEFAULT NULL,
  `country` varchar(3) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `maps` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 0,
  `facebook` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `youtube` varchar(200) DEFAULT NULL,
  `working_hours` text DEFAULT NULL,
  `rating` float DEFAULT 0,
  `payment` varchar(10) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `neworders` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pl_reviews`
--

CREATE TABLE `pl_reviews` (
  `id` int(11) NOT NULL,
  `author` int(11) DEFAULT 0,
  `user` int(11) DEFAULT 0,
  `restaurant` int(11) DEFAULT 0,
  `item` int(11) DEFAULT 0,
  `content` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `stars` tinyint(1) DEFAULT 0,
  `created_at` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pl_subscribers`
--

CREATE TABLE `pl_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pl_taxes`
--

CREATE TABLE `pl_taxes` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT 0,
  `taxes` float DEFAULT 0,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pl_testimonials`
--

CREATE TABLE `pl_testimonials` (
  `id` int(11) NOT NULL,
  `author` int(11) DEFAULT 0,
  `content` text DEFAULT NULL,
  `created_at` int(11) DEFAULT 0,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pl_testimonials`
--

INSERT INTO `pl_testimonials` (`id`, `author`, `content`, `created_at`, `status`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.', 1591039936, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pl_users`
--

CREATE TABLE `pl_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `level` tinyint(1) UNSIGNED DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `socials` varchar(255) DEFAULT NULL,
  `social_id` varchar(255) DEFAULT NULL,
  `social_name` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) UNSIGNED DEFAULT 0,
  `country` varchar(3) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `statistics` text DEFAULT NULL,
  `moderat` varchar(255) DEFAULT '0',
  `verified` tinyint(1) UNSIGNED DEFAULT 0,
  `balance` float UNSIGNED DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `language` tinyint(1) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL,
  `trash` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `plan` tinyint(1) DEFAULT 0,
  `txn_id` varchar(200) DEFAULT NULL,
  `lastpayment` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pl_users`
--

INSERT INTO `pl_users` (`id`, `firstname`, `lastname`, `username`, `password`, `photo`, `cover`, `date`, `level`, `email`, `socials`, `social_id`, `social_name`, `gender`, `country`, `city`, `state`, `address`, `birth`, `statistics`, `moderat`, `verified`, `balance`, `description`, `language`, `updated_at`, `trash`, `plan`, `txn_id`, `lastpayment`, `phone`) VALUES
(1, NULL, NULL, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', NULL, NULL, 1698223306, 6, 'admin@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pl_withdraws`
--

CREATE TABLE `pl_withdraws` (
  `id` int(11) NOT NULL,
  `author` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `accepted_at` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pl_configs`
--
ALTER TABLE `pl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_cuisines`
--
ALTER TABLE `pl_cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_images`
--
ALTER TABLE `pl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_items`
--
ALTER TABLE `pl_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_menus`
--
ALTER TABLE `pl_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_orders`
--
ALTER TABLE `pl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_pages`
--
ALTER TABLE `pl_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_payments`
--
ALTER TABLE `pl_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_plans`
--
ALTER TABLE `pl_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_restaurants`
--
ALTER TABLE `pl_restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_reviews`
--
ALTER TABLE `pl_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_subscribers`
--
ALTER TABLE `pl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_taxes`
--
ALTER TABLE `pl_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_testimonials`
--
ALTER TABLE `pl_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_users`
--
ALTER TABLE `pl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_withdraws`
--
ALTER TABLE `pl_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pl_configs`
--
ALTER TABLE `pl_configs`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pl_cuisines`
--
ALTER TABLE `pl_cuisines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pl_images`
--
ALTER TABLE `pl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pl_items`
--
ALTER TABLE `pl_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pl_menus`
--
ALTER TABLE `pl_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pl_orders`
--
ALTER TABLE `pl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pl_pages`
--
ALTER TABLE `pl_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pl_payments`
--
ALTER TABLE `pl_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pl_plans`
--
ALTER TABLE `pl_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pl_restaurants`
--
ALTER TABLE `pl_restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pl_reviews`
--
ALTER TABLE `pl_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pl_subscribers`
--
ALTER TABLE `pl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pl_taxes`
--
ALTER TABLE `pl_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pl_testimonials`
--
ALTER TABLE `pl_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pl_users`
--
ALTER TABLE `pl_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pl_withdraws`
--
ALTER TABLE `pl_withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
