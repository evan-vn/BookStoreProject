-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2024 at 12:54 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `image` longblob DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `price` float NOT NULL,
  `publish_date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `author`, `description`, `image`, `isbn`, `last_update_date`, `price`, `publish_date`, `title`, `category_id`, `image_path`) VALUES
(6, 'Darrel L. Graham', 'The authors present the complete guide to ANSI standard C language programming. Written by the developers of C, this new version helps readers keep up with the finalized ANSI standard for C while showing how to take advantage of C\'s rich set of operators, economy of expression, improved control flow, and data structures. ', NULL, '0131103628', NULL, 45.9, '1998-03-18', 'C Programming Language', 12, '/images/books/C_proramming_language.jpg'),
(7, 'Susie Tate', 'As a scruffy, disorganised daydreamer, Lucy Mayweather is like a fish out of water at the high-powered offices of her brother’s billionaire best friend. When she agreed to work for Felix, she had no idea quite how cut-throat his world – or he – would be. She just wanted to escape her reclusive life and be close to her childhood crush, hoping he might notice her.', NULL, 'B0D644VWTD', NULL, 10.5, '2024-06-27', 'Daydreamer', 9, '/images/books/day_dreamer.jpg'),
(8, 'Hope Start', 'Accidentally Alaska: A Wild Awakening by Hope Star\r\nVacation to Transformation: A young woman\'s two-week Alaskan escape becomes a life-changing adventure. Swap scorching Oklahoma plains for Alaska\'s untamed beauty – a world without stores, electricity, or running water.', NULL, ' B0D7SVH9HY', NULL, 29, '2024-11-01', 'Accidentally Alaska', 2, '/images/books/alaska.jpg'),
(10, 'James Clear', ' No matter your goals, Atomic Habits offers a proven framework for improving - every day. James Clear, one of the world\'s leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, break bad ones, and master the tiny behaviors that lead to remarkable results.', NULL, 'B07RFSSYBH', NULL, 15, '2018-10-16', 'Atomic Habits', 6, '/images/books/atomic_habit.jpg'),
(11, 'Charles Martin', ' When MacThomas Pockets finished his last tour as part of the Scottish Special Forces, he was hired to consult for a film director to finesse some scenes that weren’t working. In a twist he never saw coming, he ended up moving to L.A. to work as the bodyguard for movie star Maybe Joe Sue.', NULL, 'B0BZT899W7', NULL, 12.93, '2023-03-15', 'The Last Exchange', 4, '/images/books/thelastexchange.jpg'),
(12, 'David Baldacci', ' Every day without fail, Travis Devine puts on a cheap suit, grabs his faux-leather briefcase, and boards the 6:20 commuter train to Manhattan, where he works as an entry-level analyst at the city’s most prestigious investment firm. In the mornings, he gazes out the train window at the lavish homes of the uberwealthy, dreaming about joining their ranks. In the evenings, he listens to the fiscal news on his phone, already preparing for the next grueling day in the cutthroat realm of finance. Then one morning Devine’s tedious routine is shattered by an anonymous email: She is dead.', NULL, 'B09VR4LQNY', NULL, 10.99, '2022-07-12', 'The 6:20 Man', 7, '/images/books/the_620_man.jpg'),
(13, 'Michael Terpin', ' Bitcoin has been the best performing asset class of all time—better than gold, silver, real estate, and the stock market. Its value has risen from one tenth of a cent in 2009 to a new high of over $70,000. But misconceptions about its reliability have prevented most people from creating life-changing wealth.\r\n', NULL, '151078215X', NULL, 32.99, '2024-02-18', 'Bitcoin Supercycle', 12, '/images/books/bitcoin.jpeg'),
(14, 'John P. Ellington', ' Nestled between the smoky, rolling peaks of Southern Appalachia lies the town of Brevard, North Carolina. When Chris Avery’s family moves to Brevard in the early 1970s, Chris quickly becomes immersed in a world untouched by the mire of life outside the mountains.', NULL, '979-8989508808', NULL, 14.54, '2024-02-01', 'Whispering Winds Of Appalachia', 2, '/images/books/whispering.jpeg'),
(15, 'Joel P. Kramer', ' In contrast to the biblical skepticism common today, Where God Came Down: The Archaeological Evidence emphasizes agreement between the Bible and archaeology. Using Scripture as his primary ancient text and interpretive tool, author Joel Kramer examines the archaeological record for ten locations recorded in the Bible.', NULL, ' 0998037419', NULL, 26.99, '2020-10-14', 'Where God Came Down', 2, '/images/books/wheregod.jpg'),
(16, 'Lucy Score', ' Bearded, bad-boy barber Knox prefers to live his life the way he takes his coffee: Alone. Unless you count his basset hound, Waylon. Knox doesn’t tolerate drama, even when it comes in the form of a stranded, runaway bride. Naomi wasn’t just running away from her wedding. She was riding to the rescue of her estranged twin, to Knockemout, Virginia, a rough-around-the-edges town where disputes are settled the old-fashioned way....With fists and beer. Usually in that order.', NULL, 'B09TPW7SPN', NULL, 20.99, '2022-03-01', 'Things We Never Got Over', 9, '/images/books/things_we_never_got_over.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bookorders`
--

CREATE TABLE `bookorders` (
  `book_order_id` int(11) NOT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `shipping_fee` float NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subtotal` float NOT NULL,
  `tax` float NOT NULL,
  `total` float NOT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookorders`
--

INSERT INTO `bookorders` (`book_order_id`, `address_line1`, `address_line2`, `city`, `country`, `first_name`, `last_name`, `order_date`, `payment_method`, `phone`, `shipping_fee`, `state`, `status`, `subtotal`, `tax`, `total`, `zipcode`, `customer_id`) VALUES
(1, '123 Book St', 'Apt 4B', 'Greensboro', 'USA', 'John', 'Doe', '2023-04-25', 'Credit Card', '555-1234', 5.99, 'NC', 'Processing', 20, 1.5, 26.99, '27401', 1),
(2, '123 Main St', 'Apt 4B', 'Winston-Salem', 'USA', 'John', 'Doe', '2023-04-10', 'Credit Card', '123-456-7890', 5, 'NC', 'Processing', 45, 0, 50, '27101', 2),
(3, '456 Oak St', 'Unit 7', 'Greensboro', 'USA', 'Jane', 'Smith', '2023-04-11', 'PayPal', '987-654-3210', 5, 'NC', 'Completed', 70, 0, 75, '27403', 1),
(4, '789 Pine St', '', 'Charlotte', 'USA', 'Alice', 'Johnson', '2023-04-12', 'Debit Card', '555-123-4567', 10, 'NC', 'Shipped', 90, 0, 100, '28202', 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Science'),
(2, 'Fiction'),
(3, 'Non-Fiction'),
(4, 'Mystery'),
(5, 'Fantasy'),
(6, 'Self-Help'),
(7, 'Thriller'),
(9, 'Romance'),
(12, 'Computer & Technology');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `address_line1`, `address_line2`, `city`, `country`, `email`, `first_name`, `last_name`, `password`, `phone`, `register_date`, `state`, `zipcode`) VALUES
(1, '123 Main St', 'Apt 4B', 'Winston-Salem', 'USA', 'john.doe@example.com', 'John', 'Brad', 'password123', '123-456-7890', '2023-12-01', 'NC', '27101'),
(2, '456 Oak St', '', 'Winston-Salem', 'USA', 'jane.smith@example.com', 'Jane', 'Smith', 'securePass678', '234-567-8901', '2023-12-02', 'NC', '27102');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `order_detail_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_detail_id`, `quantity`, `subtotal`, `book_id`, `book_order_id`) VALUES
(2, 2, 29.99, 6, 1),
(4, 2, 30, 6, 1),
(5, 1, 20.5, 7, 1),
(6, 1, 30, 6, 2),
(7, 1, 15, 8, 2),
(8, 1, 15, 8, 3),
(9, 1, 20.5, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date_review` date DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `comment`, `date_review`, `headline`, `rating`, `book_id`, `customer_id`) VALUES
(1, 'This book changed my life, highly recommended, and I have learned a lot from them', '2023-12-04', 'Amazing Read!', 5, 6, 1),
(2, 'Loved the characters and plot, but a bit long.', '2023-12-05', 'Great Story', 4, 7, 2),
(3, 'Highly recommend', '2024-09-03', 'Fantacy!', 4, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `full_name`, `password`) VALUES
(1, 'alice@example.com', 'Alice Johnson', 'password123'),
(52, 'admintest@yahoo.com', 'Admin Admin', 'passowd1'),
(352, 'testtest@gmail.com', 'Testing Edit', 'passowd123'),
(502, 'testingnewone@gmail.com', 'John Smith', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `users_seq`
--

CREATE TABLE `users_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_seq`
--

INSERT INTO `users_seq` (`next_val`) VALUES
(601);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `UKg0286ag1dlt4473st1ugemd0m` (`title`),
  ADD KEY `FKam9riv8y6rjwkua1gapdfew4j` (`category_id`);

--
-- Indexes for table `bookorders`
--
ALTER TABLE `bookorders`
  ADD PRIMARY KEY (`book_order_id`),
  ADD KEY `FK59tib1wuv79g3phyvkxcgr49b` (`customer_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FKfqkuxjksst0r1xgmo524qybi5` (`book_id`),
  ADD KEY `FKl1mcva7rk6ic4sv1lesohnyhy` (`book_order_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FKgiq1y1159fhcjfigdijlsvdx2` (`book_id`),
  ADD KEY `FK4sm0k8kw740iyuex3vwwv1etu` (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bookorders`
--
ALTER TABLE `bookorders`
  MODIFY `book_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FKam9riv8y6rjwkua1gapdfew4j` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `bookorders`
--
ALTER TABLE `bookorders`
  ADD CONSTRAINT `FK59tib1wuv79g3phyvkxcgr49b` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FKfqkuxjksst0r1xgmo524qybi5` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `FKl1mcva7rk6ic4sv1lesohnyhy` FOREIGN KEY (`book_order_id`) REFERENCES `bookorders` (`book_order_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK4sm0k8kw740iyuex3vwwv1etu` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `FKgiq1y1159fhcjfigdijlsvdx2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
