-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 04:04 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'maria', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `blog_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `type`, `category`, `title`, `description`, `blog_image`) VALUES
(1, 'Maria', 'reviews', 'Phone', 'Budget friendly phone', 'Huawei nova 2i is yet another great-value Android phone coming out of the Huawei/Honor camp. ...\r\n This Nova 2i stands out in the budget smartphone market for its good-looking metal unibody build, large 18:9 display and four cameras - two at the front and two at the rear. Performance is pretty decent for the money, too. \r\n', 'Phone.jpg'),
(2, 'Maria', 'reviews', 'Headphone', 'Sony WH-1000XM4', 'The Sony WH-1000XM4 are the best wireless headphones you can buy, thanks to their excellent noise-cancellation, supreme sound quality, and lightweight wireless design.\r\n \r\n', 'Sony.png'),
(3, 'Shenjuti', 'reviews', 'Drone', 'DJIs new drone combines a pro-quality camera with a compact frame', 'Non-camera devices with cameras on them, such as drones, tend to be held back by having annoyingly small sensors. So congratulations are due to DJI for sticking a 1-inch sensor in the DJI Air 2S, providing a significant upgrade in image quality and dynamic range compared to a lot of other drones on the market. They have done it before, with the larger Mavic 2 Pro, but this is theoretically a step down the range. We are not so sure.The Air 2S is much more compact than that drone, or any other drone with a 1-inch sensor (sit it next to a Phantom 4 for a real comparison). The DJI Intelligence systems are also coming on apace, with Active Track and avoidance sensors giving the drone more nuanced control than ever over its own trajectory. It is a huge achievement how much fits into this drone is slim, redesigned chassis.\r\n', 'Drone.jpg'),
(4, 'Shenjuti', 'question', 'Laptop', 'HP Envy 13(2021)', 'Ei Laptop ta kmn hb???', 'hp.jpg'),
(5, 'Marii', 'reviews', 'Headphone', 'Bose Noise Cancelling Headphones 700', 'Bose has really outdone itself with the Headphones 700 and a big part of these cans appeal, is the sophistication of the noise cancellation they offer, which is applied to your voice during phone calls, as well as your surroundings.\r\n ', 'Bose.png'),
(6, 'Maria', 'reviews', 'DSLR', 'Basic but brilliant for brand-new DSLR users', 'The Nikon D3500 is super affordable, has one of the sharpest APS-C sensors out there, and a neat retracting kit lens. A word of warning: there are two versions of this lens, and it is worth spending the extra $20 and getting it with VR, Nikon is image stabilization system. \r\nIt is proof that you dont have to pay a fortune to get a great camera, and we say its value for money makes it just as impressive as much more advanced (and much more expensive) alternatives. \r\nThe controls are designed to be simple for novices, and in the right hands its a match for cameras costing far more. If youre looking to get more creative with your photography, and looking for your first DSLR, the Nikon D3500 is certainly hard to beat.\r\n', 'dslr.png'),
(7, 'Mehjabin', 'question', 'Earbuds', 'Jabra Elite 3', 'Hiii all..Please help me..Etar sound quality kmn hobe?', 'Earbuds.png'),
(8, 'Mehjabin', 'reviews', 'Gaming Controller', 'Xbox Elite Wireless Controller Series 2', 'Osthir.Possitive review dilam.kinte paren.', 'Gaming_controller.jpg'),
(9, 'Mehjabin', 'reviews', 'Gaming Keyboard', 'Razer Huntsman v2 Analog', 'Combining the latest optical technology and Razers analog mechanical key switches, the Razer Huntsman v2 Analog is good enough to get a five-star rating from us. That is under-selling it. This gaming keyboard delivers the best typing and gaming experience of any keyboard we have tested in the last few months, with extremely satisfying tactile feedback and a wrist rest that is designed to let you game for longer. As far as keyboards go, it is sitting on the expensive side of things, but it is definitely worth it.\r\n\r\n', 'Keyboard.jpg'),
(10, 'Mehjabin', 'news', 'phone', 'iphone 13 pro', 'The most advanced pro camera system ever on iPhone; Super Retina XDR display with ProMotion, a massive leap in battery life; A15 Bionic, the fastest chip in a smartphone; an advanced 5G experience; and so much more', 'iphone.jpg'),
(81, 'maria', 'reviews', 'phone', 'jj', 'ffjgj', 'Deep_bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `blog_id` int(255) NOT NULL,
  `comment` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `blog_id`, `comment`) VALUES
(1, 'Maria', 2, 'joss'),
(2, 'Maria', 1, 'omg pura!!'),
(3, 'Maria', 2, 'just wow'),
(4, 'Maria', 3, 'amazing'),
(5, 'Maria', 3, 'i want this'),
(6, 'Maria', 3, 'just wow'),
(7, 'Maria', 5, 'wow'),
(8, 'Maria', 5, 'osthir'),
(9, 'Marii', 4, 'omg!!'),
(10, 'Shenjuti', 3, 'i want this'),
(11, 'Shenjuti', 7, 'mind blowing'),
(12, 'Shenjuti', 4, 'nice'),
(13, 'Mehjabin', 2, 'hahaha'),
(14, 'Mehjabin', 1, 'muslim hole amr comment e like diye jaben'),
(15, 'Marii', 4, 'seiiii'),
(16, 'Marii', 6, 'vallagche jinista'),
(17, 'Mehjabin', 4, 'price kemon?'),
(18, 'Shenjuti', 5, 'like it'),
(19, 'Marii', 4, 'purai matha nosto vai..'),
(20, 'Maria', 4, 'joss'),
(21, 'Maria', 5, 'nice'),
(22, 'Maria', 7, 'vallagche...'),
(23, 'Shenjuti', 6, 'mind blowing'),
(24, 'Shenjuti', 7, 'i want to buy this man...'),
(25, 'Maria', 7, 'amazing'),
(26, 'Mehjabin', 6, 'valona'),
(27, 'Mehjabin', 6, 'dam beshi mone holo..'),
(28, 'Marii', 6, '1st comment vaii'),
(29, 'Marii', 4, 'amio eta use kori'),
(30, 'Shenjuti', 5, 'please help me'),
(31, 'Shenjuti', 3, 'baje'),
(32, 'Maria', 1, 'joss vai'),
(33, 'Maria', 1, 'ache motamuti'),
(34, 'Mehjabin', 2, 'ak ak jaygay ak ak rokom review day ken bujhina!!'),
(35, 'Shenjuti', 1, 'wahh!!!'),
(36, 'Shenjuti', 6, 'jinista vloi mone hoitche'),
(37, 'Maria', 8, 'nice'),
(38, 'Maria', 1, 'hello all'),
(39, 'Mehjabin', 2, 'follow me'),
(40, 'Shenjuti', 7, 'hi'),
(65, 'Marii', 1, 'wow'),
(70, 'maria', 81, 'gh');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `blog_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dislikes`
--

INSERT INTO `dislikes` (`id`, `name`, `blog_id`) VALUES
(1, 'Maria', 3),
(2, 'Maria', 2),
(3, 'Shenjuti', 6),
(4, 'Marii', 4),
(5, 'Shenjuti', 6),
(6, 'Shenjuti', 6),
(37, 'Marii', 1);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `blog_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `name`, `blog_id`) VALUES
(1, 'Maria', 2),
(2, 'Maria', 6),
(3, 'Maria', 7),
(4, 'Marii', 7),
(5, 'Mehjabin', 8),
(6, 'Shenjuti', 6),
(7, 'Maria', 8),
(8, 'Shenjuti', 6),
(9, 'Marii', 10),
(10, 'Maria', 10),
(11, 'Shenjuti', 10),
(12, 'Marii', 10),
(34, 'maria', 79),
(35, 'Marii', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sort`
--

CREATE TABLE `sort` (
  `id` int(255) NOT NULL,
  `likes` int(255) NOT NULL,
  `dislikes` int(255) NOT NULL,
  `comments` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sort`
--

INSERT INTO `sort` (`id`, `likes`, `dislikes`, `comments`) VALUES
(1, 1, 1, 6),
(2, 1, 1, 5),
(3, 0, 1, 5),
(4, 0, 1, 7),
(5, 0, 0, 5),
(6, 3, 3, 6),
(7, 2, 0, 5),
(8, 2, 0, 1),
(10, 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `image`) VALUES
(1, 'Marii', 'marii@gmail.com', '123', 'me.jpg'),
(2, 'Mehjabin', 'mehjabin@gmaim.com', '456', 'ame.png'),
(3, 'Shenjuti', 'shenjuti@gmail.com', '789', 'amee.png'),
(70, 'maria', 'mari@gmail.com', '1234', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sort`
--
ALTER TABLE `sort`
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sort`
--
ALTER TABLE `sort`
  ADD CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
