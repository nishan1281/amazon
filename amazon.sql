USE 'amazon';
-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2016 at 03:48 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(255) NOT NULL,
  `source` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `edition_and_price` varchar(100) NOT NULL,
  `book_details` varchar(100) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `is_ok` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `source`, `type`, `title`, `rating`, `content`, `author`, `edition_and_price`, `book_details`, `img_url`, `is_ok`) VALUES
(1, 'NA', 'books', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `url`
--

CREATE TABLE IF NOT EXISTS `url` (
  `url_id` int(255) NOT NULL,
  `value` varchar(1000) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `url`
--

INSERT INTO `url` (`url_id`, `value`, `status`) VALUES
(1, '123', '0'),
(2, 'http://www.amazon.in/Predator-Wilbur-Smith/dp/0008171386/ref=sr_1_33/277-6909490-5979024?s=books', '0'),
(3, 'http://www.amazon.in/MINE-Billionaire-Romance-Mia-Carson-ebook/dp/B01FURPIEU/ref=sr_1_34/277-6909490-5979024?s=books', '0'),
(4, 'http://www.amazon.in/Lost-Temple-Vishesh-Sharma-ebook/dp/B014TC2UWK/ref=sr_1_35/277-6909490-5979024?s=books', '0'),
(5, 'http://www.amazon.in/Private-India-Ashwin-Sanghi/dp/0099586398/ref=sr_1_36/277-6909490-5979024?s=books', '0'),
(6, 'http://www.amazon.in/Day-Jackal-Frederick-Forsyth/dp/009955271X/ref=sr_1_37/277-6909490-5979024?s=books', '0'),
(7, 'http://www.amazon.in/Book-Thief-Markus-Zusak-ebook/dp/B0031R5K72/ref=sr_1_38/277-6909490-5979024?s=books', '0'),
(8, 'http://www.amazon.in/White-Fang-Jack-London-ebook/dp/B0084AVKZ2/ref=sr_1_39/277-6909490-5979024?s=books', '0'),
(9, 'http://www.amazon.in/Treasure-Island-Wisehouse-Classics-Illustrations-ebook/dp/B01FLMWTAK/ref=sr_1_40/277-6909490-5979024?s=books', '0'),
(10, 'http://www.amazon.in/Farewell-Arms-Ernest-Hemingway/dp/0099910101/ref=sr_1_41/277-6909490-5979024?s=books', '0'),
(11, 'http://www.amazon.in/CROW-Boston-Underworld-Book-1-ebook/dp/B01BL9GFK2/ref=sr_1_42/277-6909490-5979024?s=books', '0'),
(12, 'http://www.amazon.in/Time-Machine-Wisehouse-Classics-ebook/dp/B01BBKKVVU/ref=sr_1_43/277-6909490-5979024?s=books', '0'),
(13, 'http://www.amazon.in/Sherlock-Holmes-Journals-June-Thomson-ebook/dp/B00KW2OZ1Q/ref=sr_1_44/277-6909490-5979024?s=books', '0'),
(14, 'http://www.amazon.in/Popular-Places-Planet-Awesome-Picture-ebook/dp/B00O365L74/ref=sr_1_45/277-6909490-5979024?s=books', '0'),
(15, 'http://www.amazon.in/LEGENDS-Fifteen-Tales-Sword-Sorcery-ebook/dp/B019NCMOV8/ref=sr_1_46/277-6909490-5979024?s=books', '0'),
(16, 'http://www.amazon.in/Nirmala-Munshi-Premchand-ebook/dp/B005P6GMD8/ref=sr_1_47/277-6909490-5979024?s=books', '0'),
(17, 'http://www.amazon.in/Revenant-Film-tie--Michael-Punke/dp/0008124027/ref=sr_1_48/277-6909490-5979024?s=books', '0'),
(18, 'http://www.amazon.in/Hitched-Heir-Billionaires-Ella-Slade-ebook/dp/B01F9FRYUY/ref=sr_1_49?s=books', '0'),
(19, 'http://www.amazon.in/Katil-Kaun-Surender-Mohan-Pathak/dp/9332427054/ref=sr_1_50?s=books', '0'),
(20, 'http://www.amazon.in/Time-Kill-John-Grisham/dp/0099134012/ref=sr_1_51?s=books', '0'),
(21, 'http://www.amazon.in/Plants-vs-Zombies-Story-Adventure-ebook/dp/B00NTQXSA6/ref=sr_1_52?s=books', '0'),
(22, 'http://www.amazon.in/Dance-Dragons-Part-Song-Fire/dp/0007466064/ref=sr_1_53?s=books', '0'),
(23, 'http://www.amazon.in/Eye-Ra-Michael-Asher-ebook/dp/B00TIJG1MA/ref=sr_1_54?s=books', '0'),
(24, 'http://www.amazon.in/Firm-John-Grisham/dp/0099830000/ref=sr_1_55?s=books', '0'),
(25, 'http://www.amazon.in/Feast-Crows-Song-Fire-Book-ebook/dp/B004P1JEXE/ref=sr_1_56?s=books', '0'),
(26, 'http://www.amazon.in/Slaughterhouse-Childrens-Crusade-Duty-Dance-Classics/dp/0099800209/ref=sr_1_57?s=books', '0'),
(27, 'http://www.amazon.in/Rogue-Operator-Dylan-1-Special-Thrillers-ebook/dp/B00C3U21F2/ref=sr_1_58?s=books', '0'),
(28, 'http://www.amazon.in/Da-Vinci-Code-Robert-Langdon/dp/0552149519/ref=sr_1_59?s=books', '0'),
(29, 'http://www.amazon.in/Complete-MAUS-Art-Spiegelman/dp/0141014083/ref=sr_1_60?s=books', '0'),
(30, 'http://www.amazon.in/Catch-22-Joseph-Heller-ebook/dp/B0050OMJIW/ref=sr_1_61?s=books', '0'),
(31, 'http://www.amazon.in/Blindsided-Thriller-Jay-Giles-ebook/dp/B004GXB2DG/ref=sr_1_62?s=books', '0'),
(32, 'http://www.amazon.in/Batman-vs-Superman-Greatest-Battles/dp/1401256988/ref=sr_1_63?s=books', '0'),
(33, 'http://www.amazon.in/Invisible-Man-Grotesque-Wisehouse-Classics-ebook/dp/B01BBKKUCA/ref=sr_1_64?s=books', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`url_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `url`
--
ALTER TABLE `url`
  MODIFY `url_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
