-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Фев 22 2026 г., 10:00
-- Версия сервера: 10.4.26-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `security`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `Id` int(11) NOT NULL COMMENT 'Код',
  `IdUser` int(11) NOT NULL COMMENT 'Код пользователя',
  `IdPost` int(11) NOT NULL COMMENT 'Код поста',
  `Messages` varchar(1000) NOT NULL COMMENT 'Сообщение'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `TimeOnline` time NOT NULL,
  `Event` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `logs`
--

INSERT INTO `logs` (`id`, `ip`, `IdUser`, `Date`, `TimeOnline`, `Event`) VALUES
(36, '', 29, '2026-01-27 17:47:35', '14:47:35', 'Челик с ником  ливнул'),
(37, '127.0.0.1', 29, '2026-01-27 17:47:37', '00:00:00', 'Челик под ником qwe успешно авторизовался'),
(38, '127.0.0.1', 29, '2026-01-27 17:47:41', '00:00:04', 'Челик с ником qwe ливнул'),
(39, '127.0.0.1', 8, '2026-01-27 17:47:46', '00:00:00', 'Челик под ником user успешно авторизовался'),
(40, '127.0.0.1', 8, '2026-01-27 17:47:47', '00:00:01', 'Челик с ником user ливнул'),
(41, '127.0.0.1', 1, '2026-01-27 17:47:52', '00:00:00', 'Челик под ником admin успешно авторизовался'),
(42, '127.0.0.1', 1, '2026-01-27 17:47:55', '00:00:03', 'Челик с ником admin ливнул'),
(43, '127.0.0.1', 29, '2026-01-27 17:47:59', '00:00:00', 'Челик под ником qwe успешно авторизовался'),
(44, '127.0.0.1', 29, '2026-01-27 17:48:00', '00:00:01', 'Челик с ником qwe ливнул'),
(45, '127.0.0.1', 8, '2026-01-27 17:48:04', '00:00:00', 'Челик под ником user успешно авторизовался'),
(46, '127.0.0.1', 8, '2026-01-27 17:48:05', '00:00:01', 'Челик с ником user ливнул'),
(47, '127.0.0.1', 1, '2026-01-27 17:48:10', '00:00:00', 'Челик под ником admin успешно авторизовался');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `img`) VALUES
(1, 'Внимание! Режим работы на 11 и 12 сентября 2020 г.', '11.09.2020 г. (пятница) занятия проводятся по расписанию звонков «пара-час». 12.09.2020 г. (суббота) занятия проводятся в дистанционном формате (в техникум приходить не нужно).', './img/img831.jpg\r\n'),
(2, 'Продолжается прием на заочное обучение', 'Пермский авиационный техникум продолжает прием документов на заочное обучение по специальностям «Производство авиационных двигателей», «Технология машиностроения», «Управление качеством продукции, процессов и услуг (по отраслям)» и «Прикладная информатика (по отраслям)».\r\n\r\nДокументы принимаются до 15 сентября 2020 г. включительно с 15:00 до 17:00. При себе иметь оригиналы и копии паспорта, документа об образовании, ИНН, СНИЛС и фотографии. Справки по телефону (342) 212-14-92.', './img/img830.jpg\r\n'),
(3, 'Расписание звонков', 'Расписание звонков в разных корпусах (Корпус А (1-2 и 3 этаж), Корпус В, Корпус С)\r\n<a href=\"./documents/Расписание звонков.docx\">Скачать</a>', './img/img831.jpg'),
(4, 'Основные принципы построения безопасных сайтов. Понятие безопасности приложений и классификация опасностей', 'Основные принципы построения безопасных сайтов. Понятие безопасности приложений и классификация опасностей\r\n<a href=\"./documents/1.docx\">Скачать</a>', './img/docx.png'),
(5, 'Источники угроз информационной безопасности и меры по их предотвращению', 'Источники угроз информационной безопасности и меры по их предотвращению\r\n<a href=\"./documents/2.doc\">Скачать</a>', './img/docx.png'),
(6, 'Регламенты и методы разработки безопасных веб-приложений', 'Регламенты и методы разработки безопасных веб-приложений\r\n<a href=\"./documents/3.pdf\">Скачать</a>', './img/docx.png');

-- --------------------------------------------------------

--
-- Структура таблицы `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Ip` varchar(255) NOT NULL,
  `DateStart` datetime NOT NULL,
  `DateNow` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `session`
--

INSERT INTO `session` (`id`, `IdUser`, `Ip`, `DateStart`, `DateNow`) VALUES
(27, 29, '127.0.0.1', '2026-01-27 17:47:37', '2026-01-27 17:47:40'),
(28, 8, '127.0.0.1', '2026-01-27 17:47:46', '2026-01-27 17:47:46'),
(29, 1, '127.0.0.1', '2026-01-27 17:47:52', '2026-01-27 17:47:52'),
(30, 29, '127.0.0.1', '2026-01-27 17:47:59', '2026-01-27 17:47:59'),
(31, 8, '127.0.0.1', '2026-01-27 17:48:04', '2026-01-27 17:48:04'),
(32, 1, '127.0.0.1', '2026-01-27 17:48:10', '2026-01-27 17:53:32');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL,
  `last_session_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `roll`, `last_session_id`) VALUES
(1, 'admin', 'Asdfg123', 1, NULL),
(8, 'user', 'Asdfg123', 0, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
