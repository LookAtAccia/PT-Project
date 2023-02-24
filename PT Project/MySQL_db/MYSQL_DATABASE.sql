-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 23, 2023 at 10:15 AM
-- Server version: 8.0.32
-- PHP Version: 8.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MYSQL_DATABASE`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$NzGMjWuwO7AYhgxO4B13zeV2wgkNFtpBekF1ixLc./0CV5YMOm04O'),
(2, 'caligula', '$2y$10$rtyt.oaFChkyN7NFoImI7OhS/6M2m/Ob7/TKdIa9YtwxzTh8ti/FG'),
(3, 'blast', '$2y$10$e0w.nJO9fVwE0Nj4EisGjuSCyVWR6HHtsLpLy5VixxUYLCENv3vny'),
(4, 'antiperspirant', '$2y$10$PFjnadLZsS/iOCmeQjvZ1OQYZrkdmQDRUWr6nssOjMkDmFBgOnd1i'),
(5, 'multinuclear', '$2y$10$xW4iL9CJF8kQPnZeA7eF0eGAD0iafA2iz6Z2xwW21Je3NKBgIninS'),
(6, 'portobellux', '$2y$10$ouB41r.xwxSiP9D.AbTFguw83keMdRsCTozwVqE4mWY8dvQrsOdYO'),
(7, 'monnalisa', '$2y$10$9RqEKXVs8PZtFnL.ta5dWuKqMhEg6fJD5fJOsNl8FrK7ua7d/zGei'),
(8, 'cyclone', '$2y$10$x2NKqewYJ25S8wu1dxiNk.SyqutJBJ5RSfWuPKmulpj5cRoZ/A41m'),
(9, 'mangoguava', '$2y$10$gGbgHuhHKQIKU5WO7eop6u3V1sQHBTPK2aJ/N0r/GzyQxaLA/4w4.'),
(10, 'kelso', '$2y$10$zc5chQfwD5l/J9LQG7n/nuwwRGkoBCvEz3ACNCDCr8enGh8yL7952'),
(11, 'root', '$2a$12$PMvyD52Bho7bKT.wJu9lGe1qo2jabWn2q5Fvw54bYQXJJrPmvrFO2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
