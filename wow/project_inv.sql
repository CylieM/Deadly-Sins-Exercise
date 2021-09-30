-- phpMyAdmin SQL Dump

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/**************** FIRST     ***************//
/******************FIRST SIN local storage, your code can be used as a token! :O*********//
/**************	SECOND SIN 	never hardcode queries (as shown below)***//


--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `bid` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`bid`, `brand_name`, `status`) VALUES
(1, 'Nike', '1'),
(11, 'Adidas', '1'),
(14, 'FILA', '1'),
(15, 'PUMA', '1'),
(16, 'Reebok', '1'),
(20, 'Timberland', '1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `parent_cat` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `parent_cat`, `category_name`, `status`) VALUES
(1, 0, 'Shoes', '1'),
(2, 0, 'Shirts', '1'),
(3, 0, 'Shorts', '1'),
(4, 1, 'Basketball Sneaker', '1'),
(6, 0, 'Gloves', '1'),
(7, 0, 'Goggles', '1'),
(8, 0, 'Headwear', '1'),
(9, 6, 'Golf gloves', '1'),
(11, 7, 'Swimming goggles', '1'),
(16, 8, 'Tennis cap', '1');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `sub_total` double NOT NULL,
  `gst` double NOT NULL,
  `discount` double NOT NULL,
  `net_total` double NOT NULL,
  `paid` double NOT NULL,
  `due` double NOT NULL,
  `payment_type` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_no`, `customer_name`, `order_date`, `sub_total`, `gst`, `discount`, `net_total`, `paid`, `due`, `payment_type`) VALUES
(32, 'baban', '2021-08-18', 31300, 3756, 1000, 34056, 40000, 0, 'Cash'),
(69, 'Martin', '2021-08-18', 10660, 1279.2, 1000, 10939.2, 20000, 0, 'Cash'),
(71, 'Kim Taehyung', '2021-08-19', 9400, 1128, 1000, 9528, 9528, 0, 'Cash'),
(72, 'Jeon Jeongguk', '2021-08-19', 26800, 3216, 0, 30016, 30016, 0, 'Cash'),
(73, 'Darcy', '2021-08-19', 14100, 1692, 0, 15792, 15792, 0, 'Cash'),
(74, 'Park Jimin', '2021-08-19', 22400, 2688, 11450, 13638, 14000, 0, 'Cash'),
(75, 'Jung Hoseok', '2021-08-19', 81800, 9816, 5000, 86616, 90000, 0, 'Cash'),
(77, 'Kujou Sara', '2021-08-19', 35600, 4272, 5000, 34872, 34872, 0, 'Cash'),
(78, 'Kamisato Ayaka', '2021-08-19', 13600, 1632, 0, 15232, 20000, 0, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_no`, `product_name`, `price`, `qty`) VALUES
(14, 32, 'Peristar Comfort Mirrored Swim Goggles', 630, 10),
(19, 69, 'Nike Air Force 1', 4700, 2),
(23, 71, 'Nike Air Force 1', 4700, 2),
(24, 72, 'Nike Air Force 1', 4700, 1),
(26, 72, 'Jordan One Take II PF', 5100, 1),
(27, 72, 'BTS Project 7 Filargb Flex Newday', 4000, 3),
(28, 73, 'Nike Air Max', 5000, 1),
(29, 73, 'BTS Project 7 Filargb Flex Newday', 4000, 1),
(30, 73, 'Jordan One Take II PF', 5100, 1),
(31, 74, 'Jordan One Take II PF', 5100, 1),
(32, 74, 'Nike Air Force 1', 4700, 1),
(33, 74, 'Peristar Comfort Mirrored Swim Goggles', 630, 20),
(34, 75, 'Nike Air Force 1', 4700, 1),
(35, 75, 'Nike Air Max', 5000, 1),
(36, 75, 'Jordan One Take II PF', 5100, 1),
(37, 75, 'BTS Project 7 Filargb Flex Newday', 4000, 1),
(38, 75, 'Peristar Comfort Mirrored Swim Goggles', 630, 100),
(41, 77, 'PUMA Suede Mayu Up Women\'s', 6200, 4),
(43, 77, 'BTS Project 7 Filargb Flex Newday', 4000, 1),
(44, 78, 'Legacy MM Basketball Shoes', 6800, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` double NOT NULL,
  `product_stock` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `p_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `cid`, `bid`, `product_name`, `product_price`, `product_stock`, `added_date`, `p_status`) VALUES
(1, 1, 1, 'Nike Air Force 1', 4700, 92, '2021-08-18', '1'),
(2, 1, 1, 'Nike Air Max', 5000, 190, '2021-08-16', '1'),
(3, 1, 1, 'Jordan One Take II PF', 5100, 43, '2021-08-16', '1'),
(4, 1, 14, 'BTS Project 7 Filargb Flex Newday', 4000, 92, '2021-08-18', '1'),
(5, 11, 11, 'Peristar Comfort Mirrored Swim Goggles', 630, 843, '2021-08-18', '1'),
(6, 4, 15, 'Legacy MM Basketball Shoes', 6800, 97, '2021-08-19', '1'),
(7, 1, 15, 'PUMA Suede Mayu Up Women\'s', 6200, 500, '2021-08-19', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `usertype` enum('Admin','Other') NOT NULL,
  `register_date` date NOT NULL,
  `last_login` datetime NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `usertype`, `register_date`, `last_login`, `notes`) VALUES
(8, 'Cylie', 'cylie@gmail.com', '$2y$08$OoxXiD/M6Oe9vhsBmucgLeW8vu8Nru7rJsMR.tJ0pddES3VeF1Rd2', 'Admin', '2021-08-09', '2021-08-09 00:00:00', ''),
(10, 'Test', 'cylie1@gmail.com', '$2y$08$y4GkFrFtaSjEW6eQPgggPOeQXOsD0sljrpuDcBv0sNRXclcoGpv/u', 'Admin', '2021-08-09', '2021-08-09 07:08:45', ''),
(11, 'Cylie Magalso', 'cylie12345@gmail.com', '$2y$08$DII4.iQG8sVI7G8g3WIPZuYojpt7v0WcHLoF852o/iFroEfMKbzoG', 'Admin', '2021-08-09', '2021-08-09 00:00:00', ''),
(12, 'Cylie Mags', 'cylie123@gmail.com', '$2y$08$qIv0oRh21diwHPQ1HLMUleIPizqeNrFSjXGJYQ45zHJibZKKY8Kza', 'Admin', '2021-08-09', '2021-08-17 08:08:55', ''),
(13, 'Mich', 'mich@gmail.com', '$2y$08$TfpVgEwj3wE0F1e/quXmYO0Soz31eTn/5wXhg.8rGgcYv2tq7Ov9y', 'Admin', '2021-08-12', '2021-08-19 05:08:28', ''),
(14, 'Michelle Mamites', 'mamites@gmail.com', '$2y$08$OE9hKMGBd5Gl.yVf81/Y0eMB05zv4GJiKJVZJ5ARRz2ZjpnoaN8gm', 'Admin', '2021-08-15', '2021-08-15 08:08:19', ''),
(15, 'test', 'test@gmail.com', '$2y$08$V8O9BDNXJeVtXnlEN1dQ3eic13/dIZl4BMdcX60/CR7uvizoYr.qS', 'Other', '2021-08-17', '2021-08-17 07:08:14', ''),
(16, 'Martin', 'tomo@gmail.com', '$2y$08$stqmhMzYs5C67WHKSBAK2O7ZKXmqBkEKATvEOybqkJeXTD4TiNbqm', 'Admin', '2021-08-18', '2021-08-18 05:08:58', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_no` (`invoice_no`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD KEY `cid` (`cid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_ibfk_1` FOREIGN KEY (`invoice_no`) REFERENCES `invoice` (`invoice_no`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `brands` (`bid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
