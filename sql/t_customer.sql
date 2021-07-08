-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 7 月 08 日 13:43
-- サーバのバージョン： 10.4.19-MariaDB
-- PHP のバージョン: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d08_10_002`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `t_customer`
--

CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL,
  `last_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rubi_last_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rubi_first_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` int(8) NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` int(12) NOT NULL,
  `job` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(7) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `t_customer`
--

INSERT INTO `t_customer` (`id`, `last_name`, `first_name`, `rubi_last_name`, `rubi_first_name`, `email`, `birthday`, `sex`, `tel`, `job`, `zip`, `address`, `created_at`, `updated_at`) VALUES
(2, 'aaa', 'bbb', 'aaa', 'bbb', 'test@test', 19000101, '女性', 921111111, '会社員', 8100000, '福岡市中央区大手門', '2021-06-30 21:12:51', '2021-06-30 21:12:51'),
(3, 'aaa', 'bbb', 'aaa', 'bbb', 'test@test', 19000101, '男性', 921111111, '自営業', 8100000, '福岡市中央区大手門', '2021-06-30 22:19:27', '2021-06-30 22:19:27'),
(7, 'aaa', 'bbb', 'aaa', 'bbb', 'broccolibroccolibroccoli@gmail.com', 19000101, '女性', 921111111, '公務員', 1234567, '福岡市中央区大手門', '2021-07-03 14:15:53', '2021-07-03 14:15:53'),
(8, 'mori', 'hanako', 'もり', 'はなこ', 'hanako@aaa.co.jp', 20000101, '女性', 921111111, '自由業', 1234567, '福岡市中央区大手門', '2021-07-06 17:19:05', '2021-07-06 17:19:05');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `t_customer`
--
ALTER TABLE `t_customer`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `t_customer`
--
ALTER TABLE `t_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
