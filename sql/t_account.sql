-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 7 月 08 日 13:40
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
-- テーブルの構造 `t_account`
--

CREATE TABLE `t_account` (
  `id` int(12) NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL DEFAULT 0,
  `is_deleted` int(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `t_account`
--

INSERT INTO `t_account` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'aaaa', '1111111', 0, 0, '2021-07-03 02:49:32', '2021-07-03 02:49:32'),
(2, 'namba', '12345', 0, 0, '2021-07-06 01:12:48', '2021-07-06 01:12:48');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `t_account`
--
ALTER TABLE `t_account`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `t_account`
--
ALTER TABLE `t_account`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
