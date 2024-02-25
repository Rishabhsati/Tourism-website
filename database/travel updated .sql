-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2023 at 04:05 PM
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
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `ffirst` varchar(20) NOT NULL,
  `flast` varchar(20) NOT NULL,
  `femail` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `fphone` int(15) NOT NULL,
  `fdesti` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `ffirst`, `flast`, `femail`, `city`, `fphone`, `fdesti`, `date`) VALUES
(17, 'Rahul', 'Bameta', 'rahul@gmail.com', 'Halduchaur', 1234567890, 'Nainital', '0000-00-00 00:00:00'),
(18, 'Rahul', 'Bameta', 'Rahul@gmail.com', 'Haldwani', 2147483647, 'Nainital', '0000-00-00 00:00:00'),
(19, 'edfced', 'vrfvgfr', 'nejenop435@nickolis.com', 'fewfcwaqsfce', 2147483647, 'lalkuan', '2023-09-08 18:19:56'),
(20, 'tourbook', 'karenge', 'nejenop435@nickolis.com', 'haldwani', 2147483647, 'dwddedewced', '2023-09-10 19:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedbk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedbk`) VALUES
(1, 'joy', 'joy123@gmail.com', 'good website'),
(2, 'amar', 'amar56@gmail.com', 'nice website'),
(3, 'adam', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(4, 'adam', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(5, 'arjun', 'arjun45@gmal.com', 'good website'),
(6, 'Hitesh', 'hitesh43jk@gmai.com', 'its good website nice user interface'),
(7, 'kiran', 'kiran35@gmail.com', 'this is a good website'),
(8, 'Rahul', 'dsadsad@gmail.com', 'wer3wr34ede4'),
(9, 'Rahul', 'rotowi9193@extemer.com', 'Badhjiya h bhai lage raho\r\n'),
(10, 'Rqahul', 'saafdytw@gmail.com', 'wdhiuwehuidwehiudhiwuhdnixh3uc8r'),
(11, 'rauqswu', 'nejenop435@nickolis.com', 'xwsdxwsdxwdxw');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `sno` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pdescription` varchar(10000) NOT NULL,
  `pi_main` varchar(1000) NOT NULL,
  `pi1` varchar(1000) NOT NULL,
  `pi2` varchar(1000) NOT NULL,
  `pi3` varchar(1000) NOT NULL,
  `package` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`sno`, `pname`, `pdescription`, `pi_main`, `pi1`, `pi2`, `pi3`, `package`) VALUES
(1, 'Nainital', 'Nainital is a Himalayan resort town in the Kumaon region of India’s Uttarakhand state, at an elevation of roughly 2,000m. Formerly a British hill station, it’s set around Nainital Lake, a popular boating site with Naina Devi Hindu Temple on its north shore. A cable car runs to Snow View observation point (at 2,270m), with vistas over the town and mountains including Nanda Devi, Uttarakhand’s highest peak.', 'images//informationimg//nainital1.jpg', 'images//informationimg//nainital2.jpg', 'images//informationimg//nainital3.jpg', 'images//informationimg//nainital4.jpg', 15000),
(2, 'Bhimtal', 'Bhimtal is a town and a nagar panchayat, near Nainital city in Nainital district in the state of Uttarakhand, India. It is situated at an altitude of 1370 meters above sea level and is about 22 kilometers from Nainital. The major attraction in Bhimtal is the Bhimtal Lake, which has an island at its centre. ', 'images//informationimg//bhimtal1.jpg', 'images//informationimg//bhimtal2.jpg', 'images//informationimg/bhimtal3.jpg', 'images//informationimg//bhimtal4.jpg', 10000),
(3, 'Auli', 'Auli is a Himalayan ski resort and hill station in the north Indian state of Uttarakhand. It’s surrounded by coniferous and oak forests, plus the Nanda Devi and Nar Parvat mountains. A long cable car links Auli to the town of Joshimath. North of Auli are the colorful Badrinath Temple, a Hindu pilgrimage site, and the Valley of Flowers National Park, with its alpine flora and wildlife like snow leopards and red foxes.', 'images//informationimg//auli1.jpg', 'images//informationimg//auli2.jpg', 'images//informationimg//auli3.jpg', 'images//informationimg//auli4.jpg', 9000),
(4, 'Ranikhet', 'Ranikhet is a hill station in Uttarakhand State, northern India. It’s known for its views of the Himalayas. Hundreds of bells adorn Jhula Devi Temple, dedicated to the Hindu goddess Durga. Fruit trees grow on the terraced orchards of Chaubatia Gardens, with views of peaks including Nanda Devi. Mahatma Gandhi stayed in a hut, Gandhi Kuti, in nearby Tarikhet village during the independence struggle.', 'images//informationimg//ranikhet1.jpg', 'images//informationimg//ranikhet2.jpg', 'images//informationimg//ranikhet3.jpg', 'images//informationimg//ranikhet4.jpg', 20000),
(5, 'Haridwar', 'Haridwar is an ancient city and important Hindu pilgrimage site in North India\'s Uttarakhand state, where the River Ganges exits the Himalayan foothills. The largest of several sacred ghats (bathing steps), Har Ki Pauri hosts a nightly Ganga Aarti (river-worshipping ceremony) in which tiny flickering lamps are floated off the steps. Worshipers fill the city during major festivals including the annual Kanwar Mela.', 'images//informationimg//haridwar1.jpg', 'images//informationimg//haridwar2.jpg', 'images//informationimg//haridwar3.jpg', 'images//informationimg//haridwar4.jpg', 19000),
(6, 'Mussorie', 'Mussoorie is a hill station and a municipal board, near Dehradun city in the Dehradun district of the Indian state Uttarakhand. It is about 35 kilometres from the state capital of Dehradun and 290 km north of the national capital of New Delhi. The hill station is in the foothills of the Garhwal Himalayan range.', 'images//informationimg//mussorie1.jpg', 'images//informationimg//mussorie2.jpg', 'images//informationimg//mussorie3.jpg', 'images//informationimg//mussorie4.jpg', 10000),
(7, 'Jim Corbett', 'Jim Corbett National Park is a forested wildlife sanctuary in northern India’s Uttarakhand State. Rich in flora and fauna, it’s known for its Bengal tigers. Animals, including tigers, leopards and wild elephants, roam the Dhikala zone. On the banks of the Ramganga Reservoir, the Sonanadi zone is home to elephants and leopards, along with hundreds of species of birds.', 'images//informationimg//corbett1.jpg', 'images//informationimg//corbett2.jpg', 'images//informationimg//corbett3.jpg', 'images//informationimg//corbett4.jpg', 5000),
(8, 'Badrinath', 'Badrinath is a town and nagar panchayat in Chamoli district in the state of Uttarakhand, India. It is a Hindu holy place, and is one of the four sites in India\'s Char Dham pilgrimage. It is also part of India\'s Chota Char Dham pilgrimage circuit and gets its name from the Badrinath Temple.', 'images//informationimg//badrinath1.jpg', 'images//informationimg//badrinath2.jpg', 'images//informationimg//badrinath3.jpg', 'images//informationimg//badrinath4.jpg', 16000),
(9, 'Dehradun', 'Dehradun is the capital of the Indian state of Uttarakhand, near the Himalayan foothills. At its core is the 6-sided Ghanta Ghar clock tower. To the southwest is Paltan Bazaar, a busy shopping area. Just east is the Sikh temple Gurdwara Nanaksar, topped with ornate white and golden domes. In Clement Town to the city’s southwest, Mindrolling Monastery is a Tibetan Buddhist center with shrine rooms in its Great Stupa.', 'images//informationimg//dehradun1.jpg', 'images//informationimg//dehradun2.jpg', 'images//informationimg//dehradun3.jpg', 'images//informationimg//dehradun4.jpg', 21000),
(10, 'Devprayag', 'Devprayag is a town and a nagar panchayat, near New Tehri city in Tehri Garhwal District in the state of Uttarakhand, India, and is the final one of the Panch Prayag of Alaknanda River where Alaknanda meets the Bhagirathi river and both rivers thereafter flow on as the Ganges river or Ganga. ', 'images//informationimg//devprayag1.jpg', 'images//informationimg//devprayag2.jpg', 'images//informationimg//devprayag3.jpg', 'images//informationimg//devpryag4.jpg', 21200),
(11, 'Nanakmatta', 'Nanakmatta is a historical town named after the Sikh pilgrimage site, Gurdwara Nanak Mata Sahib, in the state of Uttarakhand in India. ', 'images//informationimg//nanakmatta1.jpg', 'images//informationimg//nanakmatta2.jpg', 'images//informationimg//nanakmatta3.jpg', 'images//informationimg//nanakmatta4.jpg', 19000),
(12, 'Kedarnath', 'Kedarnath is a town and Nagar Panchayat in Rudraprayag district of Uttarakhand, India, known primarily for the Kedarnath Temple. It is approximately 86 kilometres from Rudraprayag, the district headquarter. Kedarnath is the most remote of the four Chota Char Dham pilgrimage sites.', 'images//informationimg//kedarnath1.jpg', 'images//informationimg//kedarnath2.jpg', 'images//informationimg//kedarnath3.jpg', 'images//informationimg//kedarnath4.jpg', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`, `date_time`) VALUES
('admin', 'ad123', '2023-07-04 01:56:49pm'),
('admin', 'ad123', '2023-07-04 02:28:47pm'),
('admin', 'ad123', '2023-07-04 02:35:27pm'),
('admin', 'ad123', '2023-07-04 02:36:51pm'),
('admin', 'ad123', '2023-07-04 03:15:08pm'),
('admin', 'ad123', '2023-07-04 03:42:03pm'),
('admin', 'ad123', '2023-07-05 01:33:03pm'),
('admin', 'ad123', '2023-07-05 02:13:08pm'),
('admin', 'ad123', '2023-07-06 01:48:39pm'),
('admin', 'Ad123456', '2023-07-06 01:49:38pm'),
('admin', 'ad123', '2023-07-06 01:49:47pm'),
('admin', 'ad123', '2023-07-08 07:44:10am'),
('Rahul', 'Rahul123', '2023-07-09 02:43:35pm'),
('Rahul', 'Rahul123', '2023-07-09 02:47:31pm'),
('Rahul', 'Rahul123', '2023-07-10 02:01:54pm'),
('admin', 'ad123', '2023-07-10 02:02:07pm'),
('Rahul', 'Rahul123', '2023-07-10 03:27:27pm'),
('Rahul', 'Rahul123', '2023-07-10 03:28:38pm'),
('Rahul', 'Rahul123', '2023-07-10 03:50:23pm'),
('Rahul', 'Rahul123', '2023-07-10 03:55:11pm'),
('Rahul', 'Rahul123', '2023-07-11 01:38:05pm'),
('Rahul', 'Rahul123', '2023-07-12 03:37:11pm'),
('Rahul', 'Rahul123', '2023-07-12 03:39:15pm'),
('Rahul', 'Rahul123', '2023-07-14 07:06:50am'),
('Rahul', 'Rahul123', '2023-07-14 08:00:05am'),
('Rahul', 'Rahul123', '2023-07-14 01:45:38pm'),
('Rahul', 'Rahul123', '2023-07-14 01:46:33pm'),
('Rahul', 'Rahul123', '2023-07-14 01:46:46pm'),
('Rahul', 'Rahul123', '2023-07-15 07:30:53am'),
('Rahul', 'Rahul123', '2023-07-15 07:36:52am'),
('Rahul', 'Rahul123', '2023-07-15 07:38:26am'),
('Rahul', 'Rahul123', '2023-07-15 07:43:43am'),
('Rahul', 'Rahul123', '2023-07-15 07:44:06am'),
('Rahul', 'Rahul123', '2023-07-15 07:44:59am'),
('Rahul', 'Rahul123', '2023-07-15 07:45:26am'),
('Rahul', 'Rahul123', '2023-07-15 07:46:45am'),
('Rahul', 'Rahul123', '2023-07-15 07:49:16am'),
('Rahul', 'Rahul123', '2023-07-15 07:49:36am'),
('Rahul', 'Rahul123', '2023-07-15 07:51:27am'),
('Rahul', 'Rahul123', '2023-07-15 07:53:41am'),
('Rahul', 'Rahul123', '2023-07-15 07:55:39am'),
('Rahul', 'Rahul123', '2023-07-15 07:58:26am'),
('Rahul', 'Rahul123', '2023-07-15 07:59:49am'),
('Rahul', 'Rahul123', '2023-07-15 08:02:08am'),
('Rahul', 'Rahul123', '2023-07-15 08:05:17am'),
('Rahul', 'Rahul123', '2023-07-15 08:08:51am'),
('Rahul', 'Rahul123', '2023-07-15 08:10:53am'),
('Rahul', 'Rahul123', '2023-07-15 08:23:57am'),
('admin', 'ad123', '2023-07-16 07:32:38am'),
('admin', 'ad123', '2023-07-16 07:33:01am'),
('admin', 'ad123', '2023-07-16 07:33:12am'),
('admin', 'ad123', '2023-07-16 07:33:20am'),
('Rahul', 'Rahul123', '2023-07-16 07:33:29am'),
('admin', 'ad123', '2023-07-16 07:33:59am'),
('Rahul', 'Rahul123', '2023-07-30 06:49:50am'),
('admin', 'ad123', '2023-07-30 06:54:05am'),
('admin', 'ad123', '2023-07-30 06:55:13am'),
('Rahul', 'Rahul123', '2023-08-04 02:09:55pm'),
('admin', 'ad123', '2023-08-04 02:10:29pm'),
('Rahul', 'Rahul123', '2023-08-04 02:12:29pm'),
('admin', 'ad123', '2023-08-04 02:13:14pm'),
('Rahul', 'Rahul123', '2023-08-04 02:14:15pm'),
('admin', 'ad123', '2023-08-04 02:21:29pm'),
('Rahul', 'Rahul123', '2023-08-04 02:24:16pm'),
('admin', 'ad123', '2023-08-24 02:16:22pm'),
('admin', 'ad123', '2023-08-24 02:17:56pm'),
('Rahul', 'Rahul123', '2023-08-24 02:18:12pm'),
('Rahul', 'Rahul123', '2023-08-24 03:17:05pm'),
('admin', 'ad123', '2023-08-24 03:18:51pm'),
('Rahul', 'Rahul123', '2023-08-28 09:00:44am'),
('admin', 'ad123', '2023-08-28 09:03:29am'),
('Rahul', 'Rahul123', '2023-08-29 07:08:29am'),
('Rahul', 'Rahul123', '2023-08-29 07:12:11am'),
('Rahul', 'Rahul123', '2023-08-29 01:44:48pm'),
('admin', 'ad123', '2023-08-29 01:54:37pm'),
('admin', 'ad123', '2023-08-29 01:55:42pm'),
('Rahul', 'Rahul123', '2023-08-29 02:01:07pm'),
('admin', 'ad123', '2023-08-29 02:11:08pm'),
('Rahul', 'Rahul123', '2023-08-29 02:38:00pm'),
('admin', 'ad123', '2023-08-29 02:38:37pm'),
('Rahul', 'Rahul123', '2023-08-29 02:41:04pm'),
('admin', 'ad123', '2023-08-29 02:41:42pm'),
('Rahul', 'Rahul123', '2023-08-29 02:42:22pm'),
('admin', 'ad123', '2023-08-29 03:14:28pm'),
('Rahul', 'Rahul123', '2023-08-29 03:15:26pm'),
('Rahul', 'Rahul123', '2023-08-30 06:10:35am'),
('admin', 'ad123', '2023-08-30 06:12:34am'),
('Rahul', 'Rahul123', '2023-08-30 06:14:13am'),
('admin', 'ad123', '2023-08-30 06:14:38am'),
('Rahul', 'Rahul123', '2023-08-30 06:15:27am'),
('admin', 'ad123', '2023-08-30 06:16:26am'),
('Rahul', 'Rahul123', '2023-08-30 07:09:20am'),
('admin', 'ad123', '2023-08-30 07:11:07am'),
('Rahul', 'Rahul123', '2023-08-30 07:15:01am'),
('admin', 'ad123', '2023-08-30 07:15:44am'),
('Rahul', 'Rahul123', '2023-08-30 08:55:06am'),
('admin', 'ad123', '2023-08-30 08:57:45am'),
('admin', 'ad123', '2023-09-06 01:51:49pm'),
('admin', 'ad123', '2023-09-06 02:48:16pm'),
('Rahul', 'Rahul123', '2023-09-08 02:49:39pm'),
('admin', 'ad123', '2023-09-08 03:12:00pm'),
('Rahul', 'Rahul123', '2023-09-09 03:47:30pm'),
('Rahul', 'Rahul123', '2023-09-09 03:54:39pm'),
('Rahul', 'Rahul123', '2023-09-10 03:53:35pm'),
('Rahul', 'Rahul123', '2023-09-10 03:54:49pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
