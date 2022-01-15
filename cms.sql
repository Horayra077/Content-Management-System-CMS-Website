-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 09:15 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Local Business'),
(2, 'Institution'),
(3, 'Technology'),
(5, 'Entertainment'),
(7, 'Travel'),
(21, 'Fashion'),
(22, 'Food'),
(23, 'Politics'),
(25, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 11, 'Abu Hurayra', 'horayra5@gmail.com', 'This food was awesome and also delicious!', 'approved', '2021-11-03'),
(3, 2, 'redwoan', 'redwoan@gmail.com', 'qwertyuiop', 'approved', '2021-11-06'),
(4, 16, 'tashfia', 'tashfia@gmail.com', 'poiuytrewq', 'unapproved', '2021-11-06'),
(7, 11, 'mashrafi', 'mashrafi@gmail.com', 'The food was bad!', 'approved', '2021-11-06'),
(10, 11, 'moshle', 'moshle@gmail.com', 'The food was not bad, mashrafi.', 'approved', '2021-11-06'),
(40, 2, 'tashfia', 'tashfia@gmail.com', 'Good for middle class student', 'unapproved', '2021-11-07'),
(41, 20, 'abu', 'abu@gmail.com', 'fdhsdjnrs', 'approved', '2021-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(2, 2, 'East West University', 'Horayra', '2021-11-07', 'unnamed.jpg', 'East West University, is a private university located in Aftabnagar, Dhaka of Bangladesh. It was established in 1996 under the Private University Act of 1992.\r\nThe culture of private universities in Bangladesh started in the early 1990s. During that period, the government felt that the existing public universities were not sufficient to meet the demand for tertiary education in the country. Moreover, to maintain their quality of education, most of the public universities in Bangladesh kept themselves selective and as a result, each year a large number of students failed to get admitted into higher educational institutions.\r\n\r\nThese issues led the government to permit the establishment of private universities, and on 9 August 1992, the Private University Act (Act 34) 1992 was passed.\r\n\r\nEast West University was established in 1996 as a non-profit organization. The university is the first major project of the Progoti Foundation for Education and Development (PFED), a non-profit, non-political, charitable organization maintained by a group of academics, business leaders, professionals and education enthusiasts led by Mohammed Farashuddin, economist and former governor of Bangladesh Bank.[5]\r\n\r\nBBA, BSc in computer science and BA in English at the previous campus at 45, Mohakhali Commercial Area, Dhaka. The university has some 10,400 students, in its Aftab Nagar Campus, Dhaka.\r\n       ', 'Institution, ewu, university', '3', 'published'),
(3, 3, 'Docker', 'Lucas White', '2021-11-07', 'Docker.jpg', 'Docker is a framework for developing programs that operate in containers, which are compact execution environments that share a kernel but execute in isolation. Docker is an open-source containerization strategy that has aided in the widespread adoption of the technology.\r\n\r\nDocker is well-known for its compatibility with continuous integration and deployment (CI/CD). Containerized apps may be easily moved from on-premises to cloud environments or from a developer’s computer to a server. This adds to the deployment process’s simplicity. ', 'Docker, framework, open-source,computer, programs', '', 'published'),
(11, 22, 'BUTTERNUT SQUASH BLACK BEAN CHILI', 'Colleen', '2021-11-02', 'Butternut-Squash-Black-Bean-Chilli-3.jpg', 'Black Bean Butternut Squash Chili is a delicious vegetarian chili. And it is so hearty and filling, that even carnivores will feel satisfied after eating this for dinner. Some of the best chili recipes that I have made are vegetarian, and this one is no exception. A big pot of homemade chili is just the easiest go to dish for a one pot meal. Either vegetarian, or meat based. The spices and seasonings are what really matter in a chili pot, so beans and or meat take a backseat to all the delicious flavours that make a chili pot memorable.\r\n\r\nA vegetarian chili is a great way to use a whole load lot of veggies in one dish, keeping things super nutritious. And the chili spices bring all of those veggies and beans together in a delicious way. We do not need a lot of added fat for a vegetarian chili version, which is a huge nutritional bonus. I know that every home cook has their own way with chili recipes. So go with what you love, because chili gives you so much freedom to create something delicious. But I am encouraging you to try a meatless version, because they can be truly delicious on their own, especially with a slice of Cornbread.    ', 'vegetarian, chili, food, recipe', '4', 'published'),
(16, 21, 'Keep Your Fitness During the Winter With This Jogger Look', 'Cody Andrew', '2021-11-02', 'F1.jpg', 'Once temperatures start to drop it is always tempting to stay home and stay warm instead of heading out for a jog. To keep your fitness routine up, all you need are some great workout pieces. I just picked up this jacket and joggers combo and they are perfect for hitting the pavement, even on the coldest days. Below are a few more pieces to keep you warm this winter.    ', 'Fashion, winter,  jacket', '4', 'published'),
(17, 7, 'Bali Indonesia', 'Land of the Gods', '2021-11-02', 'Image3.webp', 'Also known as the Land of the Gods, Bali appeals through its sheer natural beauty of looming volcanoes and lush terraced rice fields that exude peace and serenity. It is also famous for surfers paradise! Bali enchants with its dramatic dances and colorful ceremonies, its arts, and crafts, to its luxurious beach resorts and exciting nightlife. And everywhere, you will find intricately carved temples.\r\n ', 'Indonesia, bali, travel', '4', 'published'),
(20, 25, 'Lionel Messi', 'Horayra', '2021-12-04', 'FFurdr3XoAAEDZG.jfif', 'Lionel Messi showing off his Ballon dOr collection', 'leonel, leo, messi, ballon dor, ballon, dor,', '1', 'published'),
(21, 1, 'Blazer Fashion', 'Horayra', '2022-01-05', 'IMG_9572 C1.jpg', 'There are different ways to style Blazer for men. Blazers can be a perfect addition to almost any outfit from casual to formal, to really put a look together. Moreover, the classic Jackets or Blazers can give a versatile look when it is teamed with Modern casual elements.  ', 'blazer, fashion', '', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'horayra', '1234', 'Abu', 'Horyar', 'horayra5@gmail.com', '', 'admin', ''),
(2, 'sadbin', '123', 'Sadbin', 'Shakil', 'sadbin97@gmail.com', '', 'subscriber', ''),
(4, 'shezan', '321', 'Rakibul', 'Shezan', 'rakibulshezan97@gmail.com', '', 'subscriber', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
