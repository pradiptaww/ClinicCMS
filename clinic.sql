-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 04:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` bigint(20) NOT NULL,
  `client_name` varchar(128) NOT NULL,
  `client_type` int(11) NOT NULL DEFAULT 1,
  `client_active_fg` int(11) NOT NULL DEFAULT 1,
  `client_desc` varchar(100) DEFAULT NULL,
  `client_address` varchar(200) DEFAULT NULL,
  `client_pic` varchar(128) DEFAULT NULL,
  `client_phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`, `client_type`, `client_active_fg`, `client_desc`, `client_address`, `client_pic`, `client_phone`) VALUES
(1, 'DENT SMILE CLINIC', 1, 1, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_poli`
--

CREATE TABLE `m_poli` (
  `poli_idx` int(11) NOT NULL,
  `poli_name` varchar(128) NOT NULL,
  `active_fg` int(11) NOT NULL DEFAULT 1,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_poli`
--

INSERT INTO `m_poli` (`poli_idx`, `poli_name`, `active_fg`, `client_id`) VALUES
(1, 'GIGI', 1, 1),
(2, 'GIGI ANAK', 1, 1),
(3, 'BEDAH ANAK', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_role`
--

CREATE TABLE `m_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_role`
--

INSERT INTO `m_role` (`role_id`, `role_name`) VALUES
(3, 'ADMIN'),
(4, 'CASHIER'),
(1, 'DOCTOR'),
(2, 'NURSE');

-- --------------------------------------------------------

--
-- Table structure for table `m_schedule`
--

CREATE TABLE `m_schedule` (
  `schedule_id` int(11) NOT NULL,
  `drg_id` int(11) NOT NULL,
  `poli_id` int(11) NOT NULL,
  `senin_fg` int(11) NOT NULL DEFAULT 0,
  `senin_st_dt1` int(11) DEFAULT NULL,
  `senin_end_dt1` int(11) DEFAULT NULL,
  `senin_st_dt2` int(11) DEFAULT NULL,
  `senin_end_dt2` int(11) DEFAULT NULL,
  `senin_st_dt3` int(11) DEFAULT NULL,
  `senin_end_dt3` int(11) DEFAULT NULL,
  `selasa_fg` int(11) NOT NULL DEFAULT 0,
  `selasa_st_dt1` int(11) DEFAULT NULL,
  `selasa_end_dt1` int(11) DEFAULT NULL,
  `selasa_st_dt2` int(11) DEFAULT NULL,
  `selasa_end_dt2` int(11) DEFAULT NULL,
  `selasa_st_dt3` int(11) DEFAULT NULL,
  `selasa_end_dt3` int(11) DEFAULT NULL,
  `rabu_fg` int(11) NOT NULL DEFAULT 0,
  `rabu_st_dt1` int(11) DEFAULT NULL,
  `rabu_end_dt1` int(11) DEFAULT NULL,
  `rabu_st_dt2` int(11) DEFAULT NULL,
  `rabu_end_dt2` int(11) DEFAULT NULL,
  `rabu_st_dt3` int(11) DEFAULT NULL,
  `rabu_end_dt3` int(11) DEFAULT NULL,
  `kamis_fg` int(11) NOT NULL DEFAULT 0,
  `kamis_st_dt1` int(11) DEFAULT NULL,
  `kamis_end_dt1` int(11) DEFAULT NULL,
  `kamis_st_dt2` int(11) DEFAULT NULL,
  `kamis_end_dt2` int(11) DEFAULT NULL,
  `kamis_st_dt3` int(11) DEFAULT NULL,
  `kamis_end_dt3` int(11) DEFAULT NULL,
  `jumat_fg` int(11) DEFAULT 0,
  `jumat_st_dt1` int(11) DEFAULT NULL,
  `jumat_end_dt1` int(11) DEFAULT NULL,
  `jumat_st_dt2` int(11) DEFAULT NULL,
  `jumat_end_dt2` int(11) DEFAULT NULL,
  `jumat_st_dt3` int(11) DEFAULT NULL,
  `jumat_end_dt3` int(11) DEFAULT NULL,
  `sabtu_fg` int(11) NOT NULL DEFAULT 0,
  `sabtu_st_dt1` int(11) DEFAULT NULL,
  `sabtu_end_dt1` int(11) DEFAULT NULL,
  `sabtu_st_dt2` int(11) DEFAULT NULL,
  `sabtu_end_dt2` int(11) DEFAULT NULL,
  `sabtu_st_dt3` int(11) DEFAULT NULL,
  `sabtu_end_dt3` int(11) DEFAULT NULL,
  `minggu_fg` int(11) NOT NULL DEFAULT 0,
  `minggu_st_dt1` int(11) DEFAULT NULL,
  `minggu_end_dt1` int(11) DEFAULT NULL,
  `minggu_st_dt2` int(11) DEFAULT NULL,
  `minggu_end_dt2` int(11) DEFAULT NULL,
  `minggu_st_dt3` int(11) DEFAULT NULL,
  `minggu_end_dt3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_schedule`
--

INSERT INTO `m_schedule` (`schedule_id`, `drg_id`, `poli_id`, `senin_fg`, `senin_st_dt1`, `senin_end_dt1`, `senin_st_dt2`, `senin_end_dt2`, `senin_st_dt3`, `senin_end_dt3`, `selasa_fg`, `selasa_st_dt1`, `selasa_end_dt1`, `selasa_st_dt2`, `selasa_end_dt2`, `selasa_st_dt3`, `selasa_end_dt3`, `rabu_fg`, `rabu_st_dt1`, `rabu_end_dt1`, `rabu_st_dt2`, `rabu_end_dt2`, `rabu_st_dt3`, `rabu_end_dt3`, `kamis_fg`, `kamis_st_dt1`, `kamis_end_dt1`, `kamis_st_dt2`, `kamis_end_dt2`, `kamis_st_dt3`, `kamis_end_dt3`, `jumat_fg`, `jumat_st_dt1`, `jumat_end_dt1`, `jumat_st_dt2`, `jumat_end_dt2`, `jumat_st_dt3`, `jumat_end_dt3`, `sabtu_fg`, `sabtu_st_dt1`, `sabtu_end_dt1`, `sabtu_st_dt2`, `sabtu_end_dt2`, `sabtu_st_dt3`, `sabtu_end_dt3`, `minggu_fg`, `minggu_st_dt1`, `minggu_end_dt1`, `minggu_st_dt2`, `minggu_end_dt2`, `minggu_st_dt3`, `minggu_end_dt3`) VALUES
(1, 14, 1, 1, 8, 11, 19, 21, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 8, 11, 19, 21, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 16, 18, 0, 0, 0, 0),
(3, 1, 2, 1, 8, 17, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 8, 17, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 8, 17, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 10, 15, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_treatments`
--

CREATE TABLE `m_treatments` (
  `treat_idx` int(11) NOT NULL,
  `treat_name` varchar(128) NOT NULL,
  `client_fg` int(11) NOT NULL DEFAULT 1,
  `poli_id` int(11) NOT NULL,
  `price_start` double DEFAULT NULL,
  `price_end` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_treatments`
--

INSERT INTO `m_treatments` (`treat_idx`, `treat_name`, `client_fg`, `poli_id`, `price_start`, `price_end`) VALUES
(1, 'PEMERIKSAAN RUTIN', 1, 1, 100000, 300000),
(2, 'PEMBERSIHAN GIGI', 1, 1, 0, 0),
(3, 'TAMBAL GIGI', 1, 1, 125000, 500000),
(4, 'PERAWATAN AKAR', 1, 1, 3000000, 7000000),
(5, 'WHITENING', 1, 1, 500000, 2000000),
(6, 'PASANG KAWAT GIGI', 1, 1, 0, 0),
(7, 'IMPLAN GIGI', 1, 1, 0, 0),
(8, 'BEDAH MULUT', 1, 1, 0, 0),
(9, 'BEDAH MULUT', 1, 2, 0, 0),
(10, 'TAMBAL GIGI', 1, 2, 0, 0),
(11, 'X-RAY', 1, 1, 0, 0),
(12, 'CROWNS & BRIDGES', 1, 1, 0, 0),
(13, 'TEST DELETE', 1, 2, 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `schedule_v`
-- (See below for the actual view)
--
CREATE TABLE `schedule_v` (
`schedule_id` int(11)
,`drg_id` int(11)
,`poli_id` int(11)
,`senin_fg` int(11)
,`senin_st_dt1` int(11)
,`senin_end_dt1` int(11)
,`senin_st_dt2` int(11)
,`senin_end_dt2` int(11)
,`senin_st_dt3` int(11)
,`senin_end_dt3` int(11)
,`selasa_fg` int(11)
,`selasa_st_dt1` int(11)
,`selasa_end_dt1` int(11)
,`selasa_st_dt2` int(11)
,`selasa_end_dt2` int(11)
,`selasa_st_dt3` int(11)
,`selasa_end_dt3` int(11)
,`rabu_fg` int(11)
,`rabu_st_dt1` int(11)
,`rabu_end_dt1` int(11)
,`rabu_st_dt2` int(11)
,`rabu_end_dt2` int(11)
,`rabu_st_dt3` int(11)
,`rabu_end_dt3` int(11)
,`kamis_fg` int(11)
,`kamis_st_dt1` int(11)
,`kamis_end_dt1` int(11)
,`kamis_st_dt2` int(11)
,`kamis_end_dt2` int(11)
,`kamis_st_dt3` int(11)
,`kamis_end_dt3` int(11)
,`jumat_fg` int(11)
,`jumat_st_dt1` int(11)
,`jumat_end_dt1` int(11)
,`jumat_st_dt2` int(11)
,`jumat_end_dt2` int(11)
,`jumat_st_dt3` int(11)
,`jumat_end_dt3` int(11)
,`sabtu_fg` int(11)
,`sabtu_st_dt1` int(11)
,`sabtu_end_dt1` int(11)
,`sabtu_st_dt2` int(11)
,`sabtu_end_dt2` int(11)
,`sabtu_st_dt3` int(11)
,`sabtu_end_dt3` int(11)
,`minggu_fg` int(11)
,`minggu_st_dt1` int(11)
,`minggu_end_dt1` int(11)
,`minggu_st_dt2` int(11)
,`minggu_end_dt2` int(11)
,`minggu_st_dt3` int(11)
,`minggu_end_dt3` int(11)
,`poli_name` varchar(128)
,`name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `t_appoints_d`
--

CREATE TABLE `t_appoints_d` (
  `idx_appoints_d` int(11) NOT NULL,
  `idx_appoints_h` int(11) NOT NULL,
  `treat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_appoints_h`
--

CREATE TABLE `t_appoints_h` (
  `idx_appoints` int(11) NOT NULL,
  `schedule_fg` int(11) NOT NULL,
  `cust_fg` int(11) NOT NULL,
  `apt_create_dt` datetime NOT NULL,
  `apt_update_dt` datetime DEFAULT NULL,
  `apt_update_by` int(11) DEFAULT NULL,
  `checkin_fg` int(11) NOT NULL DEFAULT 0,
  `checkin_dt` datetime DEFAULT NULL,
  `total_inv` double NOT NULL DEFAULT 0,
  `client_fg` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 1,
  `role_fg` int(11) DEFAULT NULL,
  `active_fg` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `client_id`, `role_fg`, `active_fg`) VALUES
(1, 'PRADIPTA WIDYA WIJAYA', 'pradiptawidyawijaya@gmail.com', 'pradiptaww', NULL, '$2y$10$lJZDlF7GKVDN4DY16ivc9OltlcmqAI9LJGl77NVZe90XR0ECabUOK', NULL, NULL, '2023-03-02 10:58:14', 1, 1, 1),
(5, 'WAHYU HIDAYAT', 'whyhid@gmail.com', '', NULL, '$2y$10$yK5JPA32EAwXO9BwyEsvjehAGcKMp2E8X5xtxH2wR50bLo.lykhxm', NULL, '2023-03-02 07:00:03', '2023-03-02 10:58:02', 1, 1, 1),
(14, 'SUWI', 'suwidadiu@gmail.com', 'SUWI', NULL, '$2y$10$D4VHnPZTpln8FySkqeEty.ibGKjUsWtlxXwm2mOVT85aW8LQ9uafS', NULL, '2023-03-03 02:18:45', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure for view `schedule_v`
--
DROP TABLE IF EXISTS `schedule_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `schedule_v`  AS SELECT `a`.`schedule_id` AS `schedule_id`, `a`.`drg_id` AS `drg_id`, `a`.`poli_id` AS `poli_id`, `a`.`senin_fg` AS `senin_fg`, `a`.`senin_st_dt1` AS `senin_st_dt1`, `a`.`senin_end_dt1` AS `senin_end_dt1`, `a`.`senin_st_dt2` AS `senin_st_dt2`, `a`.`senin_end_dt2` AS `senin_end_dt2`, `a`.`senin_st_dt3` AS `senin_st_dt3`, `a`.`senin_end_dt3` AS `senin_end_dt3`, `a`.`selasa_fg` AS `selasa_fg`, `a`.`selasa_st_dt1` AS `selasa_st_dt1`, `a`.`selasa_end_dt1` AS `selasa_end_dt1`, `a`.`selasa_st_dt2` AS `selasa_st_dt2`, `a`.`selasa_end_dt2` AS `selasa_end_dt2`, `a`.`selasa_st_dt3` AS `selasa_st_dt3`, `a`.`selasa_end_dt3` AS `selasa_end_dt3`, `a`.`rabu_fg` AS `rabu_fg`, `a`.`rabu_st_dt1` AS `rabu_st_dt1`, `a`.`rabu_end_dt1` AS `rabu_end_dt1`, `a`.`rabu_st_dt2` AS `rabu_st_dt2`, `a`.`rabu_end_dt2` AS `rabu_end_dt2`, `a`.`rabu_st_dt3` AS `rabu_st_dt3`, `a`.`rabu_end_dt3` AS `rabu_end_dt3`, `a`.`kamis_fg` AS `kamis_fg`, `a`.`kamis_st_dt1` AS `kamis_st_dt1`, `a`.`kamis_end_dt1` AS `kamis_end_dt1`, `a`.`kamis_st_dt2` AS `kamis_st_dt2`, `a`.`kamis_end_dt2` AS `kamis_end_dt2`, `a`.`kamis_st_dt3` AS `kamis_st_dt3`, `a`.`kamis_end_dt3` AS `kamis_end_dt3`, `a`.`jumat_fg` AS `jumat_fg`, `a`.`jumat_st_dt1` AS `jumat_st_dt1`, `a`.`jumat_end_dt1` AS `jumat_end_dt1`, `a`.`jumat_st_dt2` AS `jumat_st_dt2`, `a`.`jumat_end_dt2` AS `jumat_end_dt2`, `a`.`jumat_st_dt3` AS `jumat_st_dt3`, `a`.`jumat_end_dt3` AS `jumat_end_dt3`, `a`.`sabtu_fg` AS `sabtu_fg`, `a`.`sabtu_st_dt1` AS `sabtu_st_dt1`, `a`.`sabtu_end_dt1` AS `sabtu_end_dt1`, `a`.`sabtu_st_dt2` AS `sabtu_st_dt2`, `a`.`sabtu_end_dt2` AS `sabtu_end_dt2`, `a`.`sabtu_st_dt3` AS `sabtu_st_dt3`, `a`.`sabtu_end_dt3` AS `sabtu_end_dt3`, `a`.`minggu_fg` AS `minggu_fg`, `a`.`minggu_st_dt1` AS `minggu_st_dt1`, `a`.`minggu_end_dt1` AS `minggu_end_dt1`, `a`.`minggu_st_dt2` AS `minggu_st_dt2`, `a`.`minggu_end_dt2` AS `minggu_end_dt2`, `a`.`minggu_st_dt3` AS `minggu_st_dt3`, `a`.`minggu_end_dt3` AS `minggu_end_dt3`, `b`.`poli_name` AS `poli_name`, `c`.`name` AS `name` FROM ((`m_schedule` `a` join `m_poli` `b` on(`b`.`poli_idx` = `a`.`poli_id`)) join `users` `c` on(`a`.`drg_id` = `c`.`id`)) WHERE `b`.`active_fg` = 1 AND `c`.`active_fg` = 11  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `m_poli`
--
ALTER TABLE `m_poli`
  ADD PRIMARY KEY (`poli_idx`);

--
-- Indexes for table `m_role`
--
ALTER TABLE `m_role`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `rolenm_uq` (`role_name`);

--
-- Indexes for table `m_schedule`
--
ALTER TABLE `m_schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `m_treatments`
--
ALTER TABLE `m_treatments`
  ADD PRIMARY KEY (`treat_idx`);

--
-- Indexes for table `t_appoints_d`
--
ALTER TABLE `t_appoints_d`
  ADD PRIMARY KEY (`idx_appoints_d`);

--
-- Indexes for table `t_appoints_h`
--
ALTER TABLE `t_appoints_h`
  ADD PRIMARY KEY (`idx_appoints`,`cust_fg`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_poli`
--
ALTER TABLE `m_poli`
  MODIFY `poli_idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_role`
--
ALTER TABLE `m_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_schedule`
--
ALTER TABLE `m_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_treatments`
--
ALTER TABLE `m_treatments`
  MODIFY `treat_idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `t_appoints_d`
--
ALTER TABLE `t_appoints_d`
  MODIFY `idx_appoints_d` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_appoints_h`
--
ALTER TABLE `t_appoints_h`
  MODIFY `idx_appoints` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
