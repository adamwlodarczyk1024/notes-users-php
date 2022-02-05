-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Lut 2022, 13:27
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `demo`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notes`
--

CREATE TABLE `notes` (
  `sno` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `users` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `notes`
--

INSERT INTO `notes` (`sno`, `title`, `description`, `date`, `users`) VALUES
(6, 'Lorem Ipsum 1 ', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', '2022-02-05 13:18:44', 'user'),
(8, 'Lorem Ipsum 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sollicitudin magna eget enim dictum, ut viverra mauris pellentesque. Sed ornare sit amet arcu eget ullamcorper. Cras vitae quam nec elit sollicitudin ornare at non mauris. Cras sed fermen', '2022-02-05 13:20:11', 'user'),
(10, 'Lorem Ipsum 3', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur sed ipsum eget nulla tincidunt bibendum. Donec eleifend hendrerit laoreet. Nullam nec dui diam. ', '2022-02-05 13:20:42', 'user'),
(29, 'Title 1', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur sed ipsum eget nulla tincidunt bibendum. Donec eleifend hendrerit laoreet. Nullam nec dui diam. ', '2022-02-05 13:25:51', 'admin'),
(31, 'Title 2 ', 'Etiam posuere ipsum non lobortis placerat. Nulla pharetra a felis ac viverra. Pellentesque ut mattis tortor. Pellentesque sed ligula ut metus tempor aliquam id ornare neque. Sed posuere, tortor ultrices tincidunt malesuada, elit erat ultrices lorem, quis ', '2022-02-05 13:26:12', 'admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$L4F9BorBLUoxMW0x3A2HReifGfjnGwQn2jPwidh.30ZhWm.DGZqKS', '2021-12-27 19:39:13'),
(2, 'user', '$2y$10$L4F9BorBLUoxMW0x3A2HReifGfjnGwQn2jPwidh.30ZhWm.DGZqKS', '2021-12-27 19:44:51');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`sno`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `notes`
--
ALTER TABLE `notes`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
