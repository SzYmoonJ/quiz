-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Lis 2022, 16:04
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `qiz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `questions_id` int(11) NOT NULL,
  `is_right` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `answers`
--

INSERT INTO `answers` (`id`, `description`, `questions_id`, `is_right`) VALUES
(1, '2', 1, 1),
(2, '100', 1, 0),
(3, '1000000', 1, 0),
(4, '589', 2, 0),
(5, '3', 2, 1),
(6, '69', 2, 0),
(7, '1', 3, 0),
(8, '4', 3, 1),
(9, '2', 3, 0),
(10, '5*1', 4, 1),
(11, '100', 4, 0),
(12, '4+1', 4, 1),
(13, '5', 4, 1),
(14, '10000', 4, 0),
(15, '69', 5, 0),
(16, '5+1', 5, 1),
(17, '7-1', 5, 1),
(18, '6', 5, 1),
(19, '1000', 5, 0),
(20, '7', 6, 1),
(21, '100', 6, 0),
(22, '5+2', 6, 1),
(23, '5', 6, 0),
(24, '8*1', 7, 1),
(25, '8', 7, 1),
(26, '4+1', 7, 0),
(27, '5', 7, 0),
(28, '9/1', 8, 1),
(29, '100', 8, 0),
(30, '9', 8, 1),
(31, '5', 8, 0),
(32, '11-1', 9, 1),
(33, '100', 9, 0),
(34, '4+1', 9, 0),
(35, '10', 9, 1),
(36, '0.11', 10, 0),
(37, '1.1', 10, 0),
(38, '11.0', 10, 1),
(39, '11', 10, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `questions`
--

INSERT INTO `questions` (`id`, `description`) VALUES
(1, '1+1=?'),
(2, '1+2=?'),
(3, '1+3=?'),
(4, '2+3=?'),
(5, '1+5=?'),
(6, '1+6=?'),
(7, '1+7=?'),
(8, '1+8=?'),
(9, '1+9=?'),
(10, '5+6=?');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `students_checks`
--

CREATE TABLE `students_checks` (
  `id` int(11) NOT NULL,
  `tests_id` int(11) NOT NULL,
  `students_id` int(11) NOT NULL,
  `questions_id` int(11) NOT NULL,
  `answers_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `students_has_tests`
--

CREATE TABLE `students_has_tests` (
  `students_id` int(11) NOT NULL,
  `tests_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `date` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tests_has_questions`
--

CREATE TABLE `tests_has_questions` (
  `id` int(11) NOT NULL,
  `tests_id` int(11) NOT NULL,
  `questions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`,`questions_id`),
  ADD KEY `fk_answers_questions1` (`questions_id`);

--
-- Indeksy dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `students_checks`
--
ALTER TABLE `students_checks`
  ADD PRIMARY KEY (`id`,`tests_id`,`students_id`,`questions_id`,`answers_id`),
  ADD KEY `fk_table1_tests1` (`tests_id`),
  ADD KEY `fk_table1_students1` (`students_id`),
  ADD KEY `fk_table1_questions1` (`questions_id`),
  ADD KEY `fk_table1_answers1` (`answers_id`);

--
-- Indeksy dla tabeli `students_has_tests`
--
ALTER TABLE `students_has_tests`
  ADD PRIMARY KEY (`students_id`,`tests_id`),
  ADD KEY `fk_students_has_tests_tests1` (`tests_id`);

--
-- Indeksy dla tabeli `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tests_has_questions`
--
ALTER TABLE `tests_has_questions`
  ADD PRIMARY KEY (`id`,`tests_id`,`questions_id`),
  ADD KEY `fk_tests_has_questions_tests1` (`tests_id`),
  ADD KEY `fk_tests_has_questions_questions1` (`questions_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT dla tabeli `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `students_checks`
--
ALTER TABLE `students_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `tests_has_questions`
--
ALTER TABLE `tests_has_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fk_answers_questions1` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `students_checks`
--
ALTER TABLE `students_checks`
  ADD CONSTRAINT `fk_table1_answers1` FOREIGN KEY (`answers_id`) REFERENCES `answers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_questions1` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_students1` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_tests1` FOREIGN KEY (`tests_id`) REFERENCES `tests` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `students_has_tests`
--
ALTER TABLE `students_has_tests`
  ADD CONSTRAINT `fk_students_has_tests_students1` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_students_has_tests_tests1` FOREIGN KEY (`tests_id`) REFERENCES `tests` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `tests_has_questions`
--
ALTER TABLE `tests_has_questions`
  ADD CONSTRAINT `fk_tests_has_questions_questions1` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tests_has_questions_tests1` FOREIGN KEY (`tests_id`) REFERENCES `tests` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
