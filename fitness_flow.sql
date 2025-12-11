-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2025 at 04:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness_flow`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `activity_name` varchar(100) NOT NULL,
  `duration_minutes` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `day_id`, `activity_name`, `duration_minutes`, `image_url`, `description`) VALUES
(1, 1, 'Morning Stretch', 10, 'https://png.pngtree.com/png-vector/20231211/ourmid/pngtree-muscles-map-png-image_10879859.png', 'Start your week with gentle stretching to increase flexibility.'),
(2, 1, 'Yoga Flow', 15, 'https://png.pngtree.com/png-vector/20230910/ourmid/pngtree-man-doing-yoga-fresh-png-image_9913602.png', 'Ease into movement and open up your posture.'),
(3, 2, 'Brisk Walk', 25, 'https://static.vecteezy.com/system/resources/thumbnails/066/088/616/small/a-vibrant-illustration-of-a-walking-human-figure-highlighting-skeletal-and-muscular-structures-in-bright-colors-png.png', 'Light cardio for stamina and energy.'),
(4, 2, 'Evening Meditation', 10, 'https://static.vecteezy.com/system/resources/thumbnails/072/758/950/small/woman-practicing-yoga-meditation-pose-for-relaxation-and-wellness-fitness-lifestyle-healthy-body-mind-spirit-on-transparent-background-png.png', 'Breathe and unwind your mind.'),
(5, 3, 'Dynamic Warm-up', 10, 'https://static.vecteezy.com/system/resources/thumbnails/053/716/597/small/illustration-of-a-person-in-a-plank-position-focusing-on-core-strength-and-fitness-highlighting-exercise-and-body-conditioning-png.png', 'Loosen up muscles and boost blood flow.'),
(6, 3, 'Breathing Exercise', 5, 'https://lh3.googleusercontent.com/rd-gg-dl/ABS2GSmrT86Q07C0CZtGThx0QJfCOW_IRAImKhnNzJgobOKJRXaYQujT70js-VnsVjjQV1CCoaodefouRNOshPSXlK45I_nlA3zCOZmpcrJBNY7uuBORz8xu9zq5gk56SeOda3vi7EttC2b46nYaKTtELseD5hGmyzKqTqCX56sk4Qoq7aw5GxTqvv9-uQlSGXf-TO2AkktNGlDr0uzE', 'Deep and rhythmic breathing to reset your energy.'),
(7, 4, 'Yoga Core', 20, 'https://lh3.googleusercontent.com/rd-gg-dl/ABS2GSlRHsDoHa-kFlyr-mHkv36_HfpFnoIZXZfLi9yvGq-z9Lnhg24bPhObptW5r9gm-q4jf3fE13BQPobS6cew6rjk1T4yEj1V1LZ9YP1bgnmde6iTFrGZIa3iI-7CV60_hTwzTwT5ojO0x-92psPx42FLnTVBClJviz6hTl74EaEJfD8h_ad1mXwxJbuvjwE7cRrfG6VyzFp3FCpm', 'Strengthen your abs and balance.'),
(8, 4, 'Calming Meditation', 10, 'https://images.squarespace-cdn.com/content/v1/5cd1bd0134c4e21b22183f10/1618251472126-ILOVK64FBGP23N7OWE2B/7.jpg', 'Relax your mind and body.'),
(9, 5, 'Power Walk', 20, 'https://liftmanual.com/wp-content/uploads/2023/04/walking.jpg', 'Move with purpose, stay active.'),
(10, 5, 'Full Body Stretch', 10, 'https://www.ommagazine.com/wp-content/uploads/bb-plugin/cache/anatomy1-landscape-e0110125b273136217b207ed88298ae6-5f33d3900fce1.jpg', 'Cool down before the weekend.'),
(11, 6, 'Morning Yoga', 15, 'https://www.rishikulyogshalarishikesh.com/blog/wp-content/uploads/2024/06/yoga-anatomy.jpg', 'Wake up your body and spirit.'),
(12, 6, 'Evening Walk', 30, 'https://images.pexels.com/photos/30988465/pexels-photo-30988465.jpeg?auto=compress&cs=tinysrgb&h=627&fit=crop&w=1200', 'Refresh and breathe easy.'),
(13, 7, 'Breathing & Mindfulness', 10, 'https://images.squarespace-cdn.com/content/v1/5a89e378f09ca4212d987f8c/0baa7249-55c7-429f-8253-1cfaeb759269/athletic-woman-practicing-yoga-doing-breathing-exercise-lotus-positing-beach-rock.jpg', 'Gentle morning reset.'),
(14, 7, 'Yoga Stretch', 20, 'https://cloudimages.myyogateacher.com/dgerdfai4/image/upload/v1572073938/blog/posts/ph9pqmx0xrr8zask8m8j.png', 'Calm your body for the week ahead.');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`day_id`, `day_name`) VALUES
(5, 'friday'),
(1, 'monday'),
(6, 'saturday'),
(7, 'sunday'),
(4, 'thursday'),
(2, 'tuesday'),
(3, 'wednesday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `day_id` (`day_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`day_id`),
  ADD UNIQUE KEY `day_name` (`day_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `days` (`day_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
