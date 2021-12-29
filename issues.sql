-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 29, 2021 lúc 08:30 AM
-- Phiên bản máy phục vụ: 8.0.27
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bitnami_redmine`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `issues`
--

CREATE TABLE `issues` (
  `id` int NOT NULL,
  `tracker_id` int NOT NULL,
  `project_id` int NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `due_date` date DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `status_id` int NOT NULL,
  `assigned_to_id` int DEFAULT NULL,
  `priority_id` int NOT NULL,
  `fixed_version_id` int DEFAULT NULL,
  `author_id` int NOT NULL,
  `lock_version` int NOT NULL DEFAULT '0',
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `root_id` int DEFAULT NULL,
  `lft` int DEFAULT NULL,
  `rgt` int DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `closed_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `issues`
--

INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`, `closed_on`) VALUES
(14, 1, 5, 'Xây dựng chức năng kết nối database', 'Lỗi không thể kết nối được database', '2021-12-30', NULL, 12, 15, 4, NULL, 1, 0, '2021-12-24 10:08:58', '2021-12-24 10:08:58', '2021-12-24', 0, 4, NULL, 14, 1, 2, 0, '2021-12-24 17:08:58'),
(15, 1, 5, 'Xây dựng chức năng thêm', 'Lỗi đường dẫn', '2021-12-31', NULL, 12, 16, 2, NULL, 1, 0, '2021-12-24 10:09:54', '2021-12-24 10:09:54', '2021-12-24', 0, 3, NULL, 15, 1, 2, 0, '2021-12-24 17:09:54'),
(16, 1, 6, 'Lỗi hiển thị', 'Hình ảnh không thể hiển thị được', '2022-01-02', NULL, 14, 15, 2, NULL, 1, 3, '2021-12-29 05:50:59', '2021-12-29 06:00:56', '2021-12-29', 100, 4, NULL, 16, 1, 2, 0, '2021-12-29 12:50:59'),
(17, 1, 6, 'Lỗi chức năng xóa', 'Khi click vào không thể xóa sản phẩm', '2022-01-02', NULL, 14, 16, 2, NULL, 1, 1, '2021-12-29 06:35:03', '2021-12-29 06:36:54', '2021-12-29', 100, 4, NULL, 17, 1, 2, 0, '2021-12-29 13:35:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issues_project_id` (`project_id`),
  ADD KEY `index_issues_on_status_id` (`status_id`),
  ADD KEY `index_issues_on_category_id` (`category_id`),
  ADD KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  ADD KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  ADD KEY `index_issues_on_tracker_id` (`tracker_id`),
  ADD KEY `index_issues_on_priority_id` (`priority_id`),
  ADD KEY `index_issues_on_author_id` (`author_id`),
  ADD KEY `index_issues_on_created_on` (`created_on`),
  ADD KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`),
  ADD KEY `index_issues_on_parent_id` (`parent_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
