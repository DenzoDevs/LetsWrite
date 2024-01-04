-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 10:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `letswrite`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(16, 'The Hibiscus', 8, 11, '\"The Purple Hibiscus\" is a novel written by Nigerian author Chimamanda Ngozi Adichie. The story is set in post-colonial Nigeria and revolves around the life of a young girl named Kambili Achike. Kambili comes from a wealthy and devoutly Catholic family, headed by her father, Eugene, a respected and tyrannical figure in the community.\r\n\r\nEugene is a strict and abusive father, enforcing his religious beliefs on his family. The family\'s dynamics change when Kambili and her brother, Jaja, visit their aunt, Ifeoma, and cousins in Nsukka. In this more liberal and nurturing environment, Kambili begins to experience a different way of life and comes to appreciate freedom of thought and expression.\r\n\r\nAs the narrative unfolds, the family returns home, and tensions escalate between Eugene and his children. Kambili\'s journey is a coming-of-age tale that explores themes of religious fanaticism, oppression, freedom, and the search for one\'s identity. The title \"The Purple Hibiscus\" symbolizes the beauty and resilience that can emerge from difficult circumstances. The novel provides a poignant portrayal of the complexities within Nigerian society and the impact of colonialism on traditional values.', '2024-01-04 13:46:03', '2024-01-04 19:55:27', 1, '[value-9]', '9e044ea0ed5817381b189680f392bafejpeg', 2, 'chrisdenzel', '[value-13]'),
(17, 'Shilling against the Dollar', 7, 13, '<p style=\"margin-top: 1rem; line-height: 1.7; padding: 0px; border: 0px;\">Kenya will pay an extra Sh1.9 billion in subscriptions to the African Union (AU) and other international organisations due to the drop in the value of the shilling against world currencies.</p><p style=\"margin-top: 1rem; line-height: 1.7; padding: 0px; border: 0px;\">The National Assembly’s Finance and National Planning committee heard that the AU and Other International Organisations Subscriptions Fund is set to rise by Sh1.886 billion on account of the shilling drop compared to other hard currencies.</p><p style=\"margin-top: 1rem; line-height: 1.7; padding: 0px; border: 0px;\">The money has been factored in the Supplementary Estimates I that was tabled in Parliament two weeks ago. The Fund, which is domiciled at the Treasury, covers the payment of international subscriptions made by the government to various international organisations through the different ministries.</p><p style=\"margin-top: 1rem; line-height: 1.7; padding: 0px; border: 0px;\">All payments made to international bodies are centralised at the National Treasury, with ministries forwarding invoices for their subscriptions.</p>', '2024-01-04 19:25:55', '2024-01-04 20:01:12', 1, 'Shilling-against-the-Dollar', 'a77dab9209de6d8442e1f1d6b5ee0284.jpg', 2, 'bizguru', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(6, 'Politics', 'Politics', '2024-01-02 18:31:00', '2024-01-04 12:26:15', 1),
(7, 'Business', 'Business', '2024-01-02 18:40:00', '2024-01-04 12:26:15', 1),
(8, 'Literature', 'Literature', '2024-01-04 12:20:16', '2024-01-04 12:26:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(5, 16, 'justdenzo', 'christopher.mutethia@strathmore.edu', 'Great Read!!', '2024-01-04 19:55:27', 1),
(6, 17, 'bizguru', 'christopher.mutethia@strathmore.edu', 'The shilling is collapsing rapidly....', '2024-01-04 19:58:58', 1),
(7, 17, 'Denzo', 'christopher.mutethia@strathmore.edu', 'dollarsignsssss', '2024-01-04 20:01:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(11, 8, 'African Literature', 'Kenyan Literature', '2024-01-04 12:35:33', NULL, 1),
(12, 6, 'International Politics', 'Europe Based', '2024-01-04 12:36:50', NULL, 1),
(13, 7, 'Kenya Business', 'Kenyan Business Affairs.', '2024-01-04 19:24:23', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `userType` enum('Admin','Author','Sadmin') DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `UserName`, `Password`, `EmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 'Admin', '2023-12-28 18:30:00', '2023-12-30 16:23:15'),
(3, 'subadmin', 'f97c5d29941bfb1b2fdab0874906ab82', 'sudamin@gmail.in', 'Sadmin', '2023-12-28 18:28:11', '2024-01-02 13:26:51'),
(4, 'suadmin2', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 'Sadmin', '2023-12-28 18:28:32', '2024-01-02 12:58:58'),
(5, 'chrisdenzel', 'f97c5d29941bfb1b2fdab0874906ab82', 'chrisden640@gmail.com', 'Author', '2024-01-02 14:23:33', NULL),
(6, 'rst', 'c81e728d9d4c2f636f067f89cc14862c', 'chrisden640@gmail.com', 'Sadmin', '2024-01-03 14:34:29', NULL),
(7, 'bizguru', '72852f08e694216044a8d7701dfcea39', 'businessbloom@gmail.com', 'Author', '2024-01-04 19:16:27', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `subcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `users` (`UserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
