-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 24-11-18 07:33
-- 서버 버전: 10.4.32-MariaDB
-- PHP 버전: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `quantumcode`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `admins`
--

CREATE TABLE `admins` (
  `idx` int(11) NOT NULL,
  `userid` varchar(145) DEFAULT NULL,
  `email` varchar(245) DEFAULT NULL,
  `username` varchar(145) DEFAULT NULL,
  `passwd` varchar(200) DEFAULT NULL,
  `regdate` datetime DEFAULT current_timestamp(),
  `level` tinyint(4) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `end_login_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `admins`
--

INSERT INTO `admins` (`idx`, `userid`, `email`, `username`, `passwd`, `regdate`, `level`, `last_login`, `end_login_date`) VALUES
(4, 'admin', 'admin@shop.com', '관리자', '33275a8aa48ea918bd53a9181aa975f15ab0d0645398f5918a006d08675c1cb27d5c645dbd084eee56e675e25ba4019f2ecea37ca9e2995b49fcb12c096a032e', '2023-01-01 17:12:32', 100, '2024-11-18 11:05:40', NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `pid` int(10) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(200) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pw` int(50) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NULL DEFAULT NULL,
  `hit` int(11) DEFAULT 0,
  `likes` int(11) DEFAULT 0,
  `category` enum('notice','free','event','qna') NOT NULL,
  `img` varchar(255) NOT NULL,
  `is_img` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`pid`, `user_id`, `title`, `content`, `name`, `pw`, `date`, `updated_date`, `hit`, `likes`, `category`, `img`, `is_img`) VALUES
(25, '', '하하', '아룡함니꺼', NULL, NULL, '2024-11-12 07:26:09', NULL, NULL, NULL, 'notice', '', NULL),
(31, '', '공지1', '공지1', NULL, NULL, '2024-11-13 07:56:25', NULL, NULL, NULL, 'notice', '', NULL),
(32, '', '자유1', '자유1', NULL, NULL, '2024-11-13 07:56:36', NULL, NULL, NULL, 'free', '', NULL),
(33, '', '이벤트1', '이벤트1', NULL, NULL, '2024-11-13 07:56:45', NULL, NULL, NULL, 'event', '', NULL),
(34, '', '질문1', '질문1', NULL, NULL, '2024-11-13 07:56:57', NULL, NULL, NULL, 'qna', '', NULL),
(35, '', '조회1', '조회1', NULL, NULL, '2024-11-13 08:18:18', NULL, NULL, NULL, 'notice', '', NULL),
(37, '', '123124214124', '12412351351513513', NULL, NULL, '2024-11-13 08:31:28', NULL, 2, NULL, 'event', '', NULL),
(38, '', '이벤트 추천1122', '이벤트 추천1122', NULL, NULL, '2024-11-13 08:43:51', NULL, 3, 15, 'event', '', NULL),
(39, '', '공지 추천1', '공지 추천1', NULL, NULL, '2024-11-13 08:53:47', NULL, 1, 5, 'notice', '', NULL),
(40, '', '질문 추천', '질문 추천', NULL, NULL, '2024-11-13 08:56:08', NULL, 1, 7, 'qna', '', NULL),
(41, '', '추천2', '추천2', NULL, NULL, '2024-11-13 08:58:07', NULL, 1, 3, 'notice', '', NULL),
(42, '', '99', '99', NULL, NULL, '2024-11-13 08:58:43', NULL, 1, 0, 'qna', '', NULL),
(43, '', '자유 추천', '자유 추천', NULL, NULL, '2024-11-13 09:00:12', NULL, 2, 3, 'free', '', NULL),
(44, '', '88', '88', NULL, NULL, '2024-11-13 09:02:03', NULL, 1, 5, 'free', '', NULL),
(45, '', '77', '77', NULL, NULL, '2024-11-13 09:03:06', NULL, 2, 5, 'notice', '', NULL),
(46, '', '66', '66', NULL, NULL, '2024-11-13 09:05:18', NULL, 1, 5, 'notice', '', NULL),
(47, '', '55', '55', NULL, NULL, '2024-11-13 09:07:32', NULL, 1, 3, 'notice', '', NULL),
(48, '', '11', '11', NULL, NULL, '2024-11-13 09:09:02', NULL, 2, 20, 'notice', '', NULL),
(49, '', '44', '44', NULL, NULL, '2024-11-13 09:10:51', NULL, 1, 2, 'qna', '', NULL),
(50, '', '11', '11', NULL, NULL, '2024-11-14 07:34:15', NULL, 0, 0, 'notice', '', NULL),
(51, '', '99', '99', NULL, NULL, '2024-11-14 07:34:44', NULL, 1, 0, 'notice', '', NULL),
(52, '', '11', '11', NULL, NULL, '2024-11-14 08:05:49', NULL, 0, 0, 'notice', '', NULL),
(53, '', '11', '11', NULL, NULL, '2024-11-14 08:15:00', NULL, 2, 0, 'free', '', NULL),
(54, '', '33', '33', NULL, NULL, '2024-11-14 08:16:01', NULL, 0, 0, 'qna', '', NULL),
(55, '', '222', '222', NULL, NULL, '2024-11-14 08:35:37', NULL, 0, 0, 'free', '', NULL),
(56, '', '666', '666', NULL, NULL, '2024-11-14 08:38:29', NULL, 1, 0, 'free', '', NULL),
(57, '', '4124', '4124', NULL, NULL, '2024-11-14 08:54:14', NULL, 1, 0, 'notice', '0', NULL),
(58, '', '123213', '12312312', NULL, NULL, '2024-11-14 09:06:28', NULL, 1, 0, 'event', 'C:/xampp1/htdocs/qc/admin/board/upload/', NULL),
(59, '', '12421411', '12312311', NULL, NULL, '2024-11-14 09:06:41', NULL, 2, 0, 'event', 'C:/xampp1/htdocs/qc/admin/board/upload/', NULL),
(60, '', '1251515', '31461436143', NULL, NULL, '2024-11-14 09:08:33', NULL, 0, 0, 'free', '', NULL),
(61, NULL, '24', '15', NULL, NULL, '2024-11-17 12:42:14', NULL, 0, 0, 'free', '', NULL),
(62, NULL, '24', '15', NULL, NULL, '2024-11-17 12:44:06', NULL, 0, 0, 'free', '', NULL),
(63, NULL, '1', '1', NULL, NULL, '2024-11-17 12:44:14', NULL, 0, 0, 'notice', '', NULL),
(64, NULL, '1', '1', NULL, NULL, '2024-11-17 12:44:40', NULL, 0, 0, 'notice', '', NULL),
(65, NULL, '2', '2', NULL, NULL, '2024-11-17 12:44:49', NULL, 0, 0, 'notice', '', NULL),
(66, NULL, '1', '1', NULL, NULL, '2024-11-17 12:45:12', NULL, 0, 0, 'notice', '', NULL),
(67, NULL, '1', '1', NULL, NULL, '2024-11-17 12:47:30', NULL, 0, 0, 'notice', '', NULL),
(68, NULL, '1', '1', NULL, NULL, '2024-11-17 12:47:39', NULL, 0, 0, 'notice', '', NULL),
(69, NULL, '1', '1', NULL, NULL, '2024-11-17 12:56:24', NULL, 0, 0, 'notice', '', NULL),
(70, NULL, '파일', '파일', NULL, NULL, '2024-11-17 12:59:12', NULL, 1, 0, 'notice', 'C:/xampp/htdocs/qc/admin/board/upload/images.jpg', NULL),
(71, NULL, '2', '2', NULL, NULL, '2024-11-17 13:03:50', NULL, 1, 0, 'notice', 'sdgs6.png', NULL),
(72, NULL, '1', '1', NULL, NULL, '2024-11-17 13:05:26', NULL, 1, 0, 'notice', 'sdgs1.png', NULL),
(73, NULL, '1', '1', NULL, NULL, '2024-11-17 13:05:51', NULL, 1, 0, 'free', 'sdgs9.png', NULL),
(74, NULL, '1', '1', NULL, NULL, '2024-11-17 13:06:29', NULL, 1, 0, 'notice', 'C:/xampp/htdocs/qc/admin/board/upload/sdgs3.png', NULL),
(75, NULL, '파일2', '파일2', NULL, NULL, '2024-11-17 13:10:15', NULL, 1, 0, 'notice', 'sdgs17.png', NULL),
(76, NULL, '파일3', '파일3', NULL, NULL, '2024-11-17 13:11:29', NULL, 1, 0, 'notice', './upload/sdgs7.png', NULL),
(77, NULL, '파일4', '파일4', NULL, NULL, '2024-11-17 13:12:13', NULL, 1, 0, 'notice', './upload/sdgs17.png', NULL),
(78, NULL, '이미지 첨부', '이미지 첨부', NULL, NULL, '2024-11-17 13:19:02', NULL, 0, 0, 'notice', './upload/sdgs1.png', 0),
(79, NULL, '첨부 2', '첨부 2', NULL, NULL, '2024-11-17 13:21:13', NULL, 0, 0, 'notice', './upload/sdgs10.png', 1),
(80, NULL, '1', '1', NULL, NULL, '2024-11-17 13:30:48', NULL, 1, 0, 'notice', './upload/board.sql', 0),
(81, NULL, '2', '2', NULL, NULL, '2024-11-17 13:31:29', NULL, 1, 0, 'notice', './upload/sdgs9.png', 1),
(82, NULL, '9', '9', NULL, NULL, '2024-11-17 13:47:24', NULL, 1, 0, 'notice', './upload/sdgs7.png', 1),
(83, NULL, '1', '1', NULL, NULL, '2024-11-17 13:50:55', NULL, 0, 0, 'notice', './upload/', 0),
(84, NULL, '1', '1', NULL, NULL, '2024-11-17 13:54:05', NULL, 0, 0, 'notice', './upload/', 0),
(85, NULL, 'test', 'test', NULL, NULL, '2024-11-17 13:54:29', NULL, 1, 0, 'notice', './upload/', 0),
(86, NULL, 'test2', 'test2', NULL, NULL, '2024-11-17 13:56:59', NULL, 1, 0, 'notice', './upload/images.jpg', 1),
(87, NULL, 'test2', 'test2', NULL, NULL, '2024-11-17 13:57:06', NULL, 1, 0, 'notice', './upload/images.jpg', 1),
(88, NULL, 'test3', 'test3', NULL, NULL, '2024-11-17 13:57:56', NULL, 1, 0, 'free', './upload/sdgs.png', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `board_event`
--

CREATE TABLE `board_event` (
  `eb_pid` int(11) NOT NULL,
  `eb_title` varchar(255) NOT NULL,
  `eb_content` text NOT NULL,
  `eb_event_date` date DEFAULT NULL,
  `eb_user_id` varchar(10) DEFAULT NULL,
  `eb_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `eb_updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `eb_like` int(11) DEFAULT NULL,
  `eb_hit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `board_free`
--

CREATE TABLE `board_free` (
  `fb_pid` int(11) NOT NULL,
  `fb_title` varchar(255) NOT NULL,
  `fb_content` text NOT NULL,
  `fb_user_id` varchar(10) DEFAULT NULL,
  `fb_pw` varchar(50) NOT NULL,
  `fb_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `fb_updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fb_hit` int(11) DEFAULT NULL,
  `fb_like` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `board_free`
--

INSERT INTO `board_free` (`fb_pid`, `fb_title`, `fb_content`, `fb_user_id`, `fb_pw`, `fb_date`, `fb_updated_date`, `fb_hit`, `fb_like`) VALUES
(1, 'test', 'test', NULL, '', '2024-11-11 07:48:18', '2024-11-11 07:48:33', 1, NULL),
(2, '1234', '1234', NULL, '', '2024-11-11 07:54:49', '2024-11-11 08:28:19', 24, 9);

-- --------------------------------------------------------

--
-- 테이블 구조 `board_images`
--

CREATE TABLE `board_images` (
  `imgid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `board_like`
--

CREATE TABLE `board_like` (
  `pid` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `board_notice`
--

CREATE TABLE `board_notice` (
  `nb_pid` int(11) NOT NULL,
  `nb_title` varchar(255) NOT NULL,
  `nb_content` text NOT NULL,
  `nb_user_id` varchar(10) DEFAULT NULL,
  `nb_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `nb_updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nb_like` int(11) DEFAULT NULL,
  `nb_hit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `board_notice`
--

INSERT INTO `board_notice` (`nb_pid`, `nb_title`, `nb_content`, `nb_user_id`, `nb_date`, `nb_updated_date`, `nb_like`, `nb_hit`) VALUES
(1, 'test11', 'test11', NULL, '2024-11-11 07:55:07', '2024-11-11 07:56:00', 11, 13);

-- --------------------------------------------------------

--
-- 테이블 구조 `board_qna`
--

CREATE TABLE `board_qna` (
  `qb_pid` int(11) NOT NULL,
  `qb_title` varchar(255) NOT NULL,
  `qb_content` text NOT NULL,
  `qb_user_id` varchar(10) DEFAULT NULL,
  `qb_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `qb_updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `qb_like` int(11) DEFAULT NULL,
  `qb_hit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `board_qna`
--

INSERT INTO `board_qna` (`qb_pid`, `qb_title`, `qb_content`, `qb_user_id`, `qb_date`, `qb_updated_date`, `qb_like`, `qb_hit`) VALUES
(1, 'test', 'test', NULL, '2024-11-11 07:48:54', '2024-11-11 07:54:16', NULL, 2);

-- --------------------------------------------------------

--
-- 테이블 구조 `board_reply`
--

CREATE TABLE `board_reply` (
  `pid` int(11) NOT NULL,
  `b_pid` int(11) NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `pw` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `board_reply`
--

INSERT INTO `board_reply` (`pid`, `b_pid`, `user_id`, `pw`, `content`, `date`) VALUES
(1, 59, '', '', '     1234411', '2024-11-16 22:54:46'),
(2, 59, '', '', ' 1231231111', '2024-11-16 22:54:50'),
(3, 59, '', '', ' 1231231111', '2024-11-16 22:56:24'),
(4, 59, '', '', ' 1231231111', '2024-11-16 22:56:24'),
(5, 59, '', '', ' 1231231111', '2024-11-16 22:56:25'),
(6, 59, '', '', ' 1231231111', '2024-11-16 22:56:25'),
(7, 59, '', '', ' 1231231111', '2024-11-16 22:56:29'),
(8, 59, '', '', ' 1231231111', '2024-11-16 22:57:41'),
(9, 59, '', '', ' 1231231111', '2024-11-16 22:57:42'),
(10, 58, '', '', '  1231231111112', '2024-11-16 23:21:51'),
(11, 59, '', '', ' 1231231111', '2024-11-16 23:22:13'),
(12, 37, '', '', ' 1231231111', '2024-11-16 23:28:50'),
(13, 59, '', '', ' 1231231111', '2024-11-17 00:10:07'),
(14, 59, '', '', ' 1231231111', '2024-11-17 00:10:33'),
(15, 59, '', '', ' 1231231111', '2024-11-17 00:10:57'),
(16, 38, '', '', '이벤트 추천11', '2024-11-17 00:33:31'),
(17, 38, '', '', '  112234', '2024-11-17 00:36:43'),
(18, 58, '', '', '11', '2024-11-17 00:41:40'),
(19, 59, '', '', ' 1122', '2024-11-17 00:46:41');

-- --------------------------------------------------------

--
-- 테이블의 덤프 데이터 `coupons`
--

INSERT INTO `coupons` (`cid`, `coupon_name`, `coupon_image`, `coupon_type`, `coupon_price`, `coupon_ratio`, `status`, `startdate`, `enddate`, `userid`) VALUES
(1, '회원가입 웰컴 쿠폰', 'welcome.jpg', '정액', 5000, NULL, 1, '2024-11-18 15:25:55', '2025-12-31', 'admin'),
(2, '블랙프라이데이 할인', 'black_friday.jpg', '정률', NULL, 15, 1, '2024-11-18 15:25:55', '2024-11-30', 'admin'),
(3, '여름방학 특가', 'summer.jpg', '정액', 7000, NULL, 1, '2024-11-18 15:25:55', '2025-06-30', 'user1'),
(4, '크리스마스 선물 쿠폰', 'christmas.jpg', '정률', NULL, 20, 1, '2024-11-18 15:25:55', '2024-12-25', 'user2'),
(5, '새해 맞이 할인', 'new_year.jpg', '정액', 10000, NULL, 1, '2024-11-18 15:25:55', '2025-01-15', 'admin'),
(6, '봄맞이 이벤트', 'spring.jpg', '정률', NULL, 10, 0, '2024-11-18 15:25:55', '2025-03-31', 'user3'),
(7, '번개 할인 쿠폰', 'flash_sale.jpg', '정액', 3000, NULL, 1, '2024-11-18 15:25:55', '2024-12-31', 'user4'),
(8, '발렌타인데이 스페셜', 'valentine.jpg', '정률', NULL, 25, 1, '2024-11-18 15:25:55', '2025-02-14', 'user5'),
(9, '생일 축하 쿠폰', 'birthday.jpg', '정액', 8000, NULL, 0, '2024-11-18 15:25:55', '2025-07-31', 'user6'),
(10, '수강 기념 할인', 'anniversary.jpg', '정률', NULL, 30, 1, '2024-11-18 15:25:55', '2025-05-01', 'admin'),
(11, '프리미엄 강의 할인', 'exclusive.jpg', '정액', 1500, NULL, 1, '2024-11-18 15:25:55', '2025-08-31', 'user7'),
(12, '신학기 프로모션', 'back_to_school.jpg', '정률', NULL, 12, 0, '2024-11-18 15:25:55', '2024-12-01', 'user8'),
(13, '겨울방학 특별 할인', 'winter.jpg', '정액', 4000, NULL, 1, '2024-11-18 15:25:55', '2025-02-28', 'user9'),
(14, '사이버 먼데이 쿠폰', 'cyber_monday.jpg', '정률', NULL, 18, 1, '2024-11-18 15:25:55', '2024-11-27', 'admin'),
(15, '충성 고객 감사 쿠폰', 'loyalty.jpg', '정액', 6000, NULL, 0, '2024-11-18 15:25:55', '2025-10-31', 'user10'),
(16, '연말 프로모션', 'festival.jpg', '정률', NULL, 22, 1, '2024-11-18 15:25:55', '2024-12-31', 'user11'),
(17, '재고 정리 할인', 'clearance.jpg', '정액', 3500, NULL, 1, '2024-11-18 15:25:55', '2025-03-15', 'user12'),
(18, '휴일 특별 할인', 'holiday.jpg', '정률', NULL, 14, 0, '2024-11-18 15:25:55', '2024-12-20', 'user13'),
(19, '신규 회원 전용 쿠폰', 'new_user.jpg', '정액', 9000, NULL, 1, '2024-11-18 15:25:55', '2025-09-30', 'user14'),
(20, '강의 패키지 할인', 'shopping_spree.jpg', '정률', NULL, 17, 1, '2024-11-18 15:25:55', '2025-04-30', 'user15'),
(21, '주말 한정 할인', 'weekend.jpg', '정액', 2000, NULL, 0, '2024-11-18 15:25:55', '2025-05-31', 'user16'),
(22, '시간 한정 특별 쿠폰', 'limited_time.jpg', '정률', NULL, 28, 1, '2024-11-18 15:25:55', '2025-07-15', 'user17'),
(23, '관리자 전용 프로모션', 'promo.jpg', '정액', 12000, NULL, 1, '2024-11-18 15:25:55', '2025-11-30', 'admin'),
(24, '대박 할인 쿠폰', 'mega_discount.jpg', '정률', NULL, 35, 1, '2024-11-18 15:25:55', '2025-12-31', 'user18'),
(25, '할로윈 스페셜 쿠폰', 'halloween.jpg', '정액', 2500, NULL, 1, '2024-11-18 15:25:55', '2024-10-31', 'user19');

-- --------------------------------------------------------

--
-- 테이블 구조 `coupons_usercp`
--

CREATE TABLE `coupons_usercp` (
  `ucid` int(11) NOT NULL,
  `couponid` int(11) NOT NULL COMMENT '쿠폰아이디',
  `userid` varchar(100) NOT NULL COMMENT '유저아이디',
  `status` int(11) DEFAULT 1 COMMENT '상태',
  `use_max_date` datetime DEFAULT NULL COMMENT '만료일',
  `regdate` datetime DEFAULT current_timestamp() COMMENT '발급일',
  `usedate` date DEFAULT NULL COMMENT '사용일',
  `reason` varchar(100) NOT NULL COMMENT '쿠폰사용강의'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `coupons_usercp`
--

INSERT INTO `coupons_usercp` (`ucid`, `couponid`, `userid`, `status`, `use_max_date`, `regdate`, `usedate`, `reason`) VALUES
(1, 1, 'user1', 1, '2025-12-31 23:59:59', '2024-11-18 15:31:50', NULL, 'Python 기초 강의'),
(2, 2, 'user2', 0, '2024-11-30 23:59:59', '2024-11-18 15:31:50', '2024-11-15', 'JavaScript 심화 과정'),
(3, 3, 'user3', 1, '2025-06-30 23:59:59', '2024-11-18 15:31:50', NULL, 'HTML/CSS 기초'),
(4, 4, 'user4', 1, '2024-12-25 23:59:59', '2024-11-18 15:31:50', NULL, 'React 기본 강의'),
(5, 5, 'user5', 0, '2025-01-15 23:59:59', '2024-11-18 15:31:50', '2025-01-10', 'Node.js 프로그래밍'),
(6, 6, 'user6', 1, '2025-03-31 23:59:59', '2024-11-18 15:31:50', NULL, 'Spring Boot 실습'),
(7, 7, 'user7', 0, '2024-12-31 23:59:59', '2024-11-18 15:31:50', '2024-12-20', 'Vue.js 입문'),
(8, 8, 'user8', 1, '2025-02-14 23:59:59', '2024-11-18 15:31:50', NULL, 'SQL 데이터베이스 기초'),
(9, 9, 'user9', 0, '2025-07-31 23:59:59', '2024-11-18 15:31:50', '2025-07-15', 'Docker 활용'),
(10, 10, 'user10', 1, '2025-05-01 23:59:59', '2024-11-18 15:31:50', NULL, 'Java 고급 프로그래밍'),
(11, 11, 'user11', 1, '2025-08-31 23:59:59', '2024-11-18 15:31:50', NULL, 'C++ 알고리즘'),
(12, 12, 'user12', 0, '2024-12-01 23:59:59', '2024-11-18 15:31:50', '2024-11-28', 'Git/GitHub 실습'),
(13, 13, 'user13', 1, '2025-02-28 23:59:59', '2024-11-18 15:31:50', NULL, 'Python 데이터 분석'),
(14, 14, 'user14', 1, '2024-11-27 23:59:59', '2024-11-18 15:31:50', NULL, 'Kotlin 개발'),
(15, 15, 'user15', 0, '2025-10-31 23:59:59', '2024-11-18 15:31:50', '2025-10-15', 'Android 앱 개발'),
(16, 16, 'user16', 1, '2024-12-31 23:59:59', '2024-11-18 15:31:50', NULL, 'AWS 클라우드 기초'),
(17, 17, 'user17', 0, '2025-03-15 23:59:59', '2024-11-18 15:31:50', '2025-03-05', 'TypeScript 입문'),
(18, 18, 'user18', 1, '2024-12-20 23:59:59', '2024-11-18 15:31:50', NULL, 'Data Science 강의'),
(19, 19, 'user19', 1, '2025-09-30 23:59:59', '2024-11-18 15:31:50', NULL, 'Machine Learning 기본'),
(20, 20, 'user20', 0, '2025-04-30 23:59:59', '2024-11-18 15:31:50', '2025-04-20', 'GraphQL 실습'),
(21, 21, 'user21', 1, '2025-05-31 23:59:59', '2024-11-18 15:31:50', NULL, 'React Native 개발'),
(22, 22, 'user22', 1, '2025-07-15 23:59:59', '2024-11-18 15:31:50', NULL, 'Go 언어 기초'),
(23, 23, 'user23', 1, '2025-11-30 23:59:59', '2024-11-18 15:31:50', NULL, 'Swift 프로그래밍'),
(24, 24, 'user24', 0, '2025-12-31 23:59:59', '2024-11-18 15:31:50', '2025-12-20', 'Flutter 앱 개발'),
(25, 25, 'user25', 1, '2024-10-31 23:59:59', '2024-11-18 15:31:50', NULL, 'Unity 게임 개발');

-- --------------------------------------------------------

--
-- 테이블 구조 `lecture_category`
--

CREATE TABLE `lecture_category` (
  `lcid` int(11) NOT NULL COMMENT '카테고리 고유번호',
  `code` varchar(20) NOT NULL COMMENT '카테고리코드',
  `pcode` varchar(20) DEFAULT NULL COMMENT '카테고리 부모코드',
  `ppcode` varchar(20) DEFAULT NULL COMMENT '카테고리 최상위 코드',
  `name` varchar(100) NOT NULL COMMENT '카테고리 이름',
  `step` tinyint(4) NOT NULL COMMENT '카테고리 분류 단계'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='강의 카테고리';

--
-- 테이블의 덤프 데이터 `lecture_category`
--

INSERT INTO `lecture_category` (`lcid`, `code`, `pcode`, `ppcode`, `name`, `step`) VALUES
(23, 'A0001', '', '', 'Web', 1),
(24, 'A0002', '', '', 'App', 1),
(25, 'B0001', 'A0001', '', 'Front', 2),
(26, 'B0002', 'A0001', '', 'Back', 2),
(27, 'B0001', 'A0002', '', 'dev', 2),
(36, 'C0001', 'B0001', 'A0001', 'html', 3),
(37, 'C0002', 'B0001', 'A0001', 'CSS', 3),
(38, 'C0003', 'B0001', 'A0002', 'java', 3),
(39, 'C0001', 'B0002', 'A0001', 'react', 3),
(40, 'C0004', 'B0001', 'A0001', 'javascript', 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `lecture_list`
--

CREATE TABLE `lecture_list` (
  `lid` int(11) NOT NULL COMMENT '강의 고유번호',
  `category` varchar(100) NOT NULL COMMENT '강의 카테고리',
  `title` varchar(500) NOT NULL COMMENT '강의 제목',
  `cover_image` varchar(100) DEFAULT NULL COMMENT '강의 커버 이미지',
  `tid` varchar(100) NOT NULL COMMENT '강사이름',
  `isfree` tinyint(4) NOT NULL COMMENT '무료강의',
  `ispremium` tinyint(4) NOT NULL COMMENT '프리미엄강의',
  `ispopular` tinyint(4) NOT NULL COMMENT '인기강의',
  `isrecom` tinyint(4) NOT NULL COMMENT '추천강의',
  `tuition` double NOT NULL COMMENT '수강료',
  `dis_tuition` double DEFAULT NULL COMMENT '할인 수강료',
  `regist_day` date NOT NULL COMMENT '수강시작일',
  `expiration_day` date DEFAULT NULL COMMENT '수강마감일',
  `sub_title` varchar(250) DEFAULT NULL COMMENT '강의 요약',
  `description` text NOT NULL COMMENT '강의 설명',
  `learning_obj` text DEFAULT NULL COMMENT '강의 목표',
  `difficult` varchar(11) NOT NULL COMMENT '난이도',
  `lecture_tag` varchar(250) DEFAULT NULL COMMENT '강의관련 스킬',
  `pr_video` varchar(100) DEFAULT NULL COMMENT '홍보 영상',
  `regdate` datetime NOT NULL DEFAULT current_timestamp() COMMENT '작성시간',
  `status` tinyint(4) NOT NULL COMMENT '상태'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='강의 목록 테이블';

--
-- 테이블의 덤프 데이터 `lecture_list`
--

INSERT INTO `lecture_list` (`lid`, `category`, `title`, `cover_image`, `tid`, `isfree`, `ispremium`, `ispopular`, `isrecom`, `tuition`, `dis_tuition`, `regist_day`, `expiration_day`, `sub_title`, `description`, `learning_obj`, `difficult`, `lecture_tag`, `pr_video`, `regdate`, `status`) VALUES
(6, 'A0001B0001C0004', '자바스크립트 강의', '/qc/admin/upload/20241118045329161037.png', 'admin', 0, 1, 0, 0, 10000, 8000, '2024-11-20', '2025-02-20', '쉬워요', '<p>설명 드립니다</p>', '목표입니다', '2', 'js', '/qc/admin/upload/20241118045329149502.mp4', '2024-11-18 12:53:29', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `lecture_video`
--

CREATE TABLE `lecture_video` (
  `lvid` int(11) NOT NULL COMMENT '강의영상 고유번호',
  `lid` int(11) NOT NULL COMMENT '연결된 강의 고유번호',
  `video_lecture` varchar(100) NOT NULL COMMENT '강의 영상 파일경로',
  `video_desc` text DEFAULT NULL COMMENT '강의 설명',
  `regdate` datetime NOT NULL DEFAULT current_timestamp() COMMENT '등록 시간'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='강의 영상 테이블';

-- --------------------------------------------------------

--
-- 테이블 구조 `members`
--

CREATE TABLE `members` (
  `mid` int(15) NOT NULL,
  `name` varchar(111) NOT NULL,
  `id` varchar(45) NOT NULL,
  `birth` date NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(45) NOT NULL,
  `number` int(25) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT current_timestamp(),
  `member_detail` text DEFAULT NULL,
  `cover_image` varchar(111) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `progress` double DEFAULT NULL,
  `last_login` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `teachers`
--

CREATE TABLE `teachers` (
  `tid` int(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `id` varchar(45) NOT NULL,
  `birth` date NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `number` int(45) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT current_timestamp(),
  `cover_image` varchar(200) DEFAULT NULL,
  `teacher_detail` text DEFAULT NULL,
  `grade` int(15) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `notyet` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`pid`);

--
-- 테이블의 인덱스 `board_event`
--
ALTER TABLE `board_event`
  ADD PRIMARY KEY (`eb_pid`);

--
-- 테이블의 인덱스 `board_free`
--
ALTER TABLE `board_free`
  ADD PRIMARY KEY (`fb_pid`);

--
-- 테이블의 인덱스 `board_images`
--
ALTER TABLE `board_images`
  ADD PRIMARY KEY (`imgid`);

--
-- 테이블의 인덱스 `board_like`
--
ALTER TABLE `board_like`
  ADD PRIMARY KEY (`pid`);

--
-- 테이블의 인덱스 `board_notice`
--
ALTER TABLE `board_notice`
  ADD PRIMARY KEY (`nb_pid`);

--
-- 테이블의 인덱스 `board_qna`
--
ALTER TABLE `board_qna`
  ADD PRIMARY KEY (`qb_pid`);

--
-- 테이블의 인덱스 `board_reply`
--
ALTER TABLE `board_reply`
  ADD PRIMARY KEY (`pid`);

--
-- 테이블의 인덱스 `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`cid`);

--
-- 테이블의 인덱스 `coupons_usercp`
--
ALTER TABLE `coupons_usercp`
  ADD PRIMARY KEY (`ucid`);


--
-- 테이블의 인덱스 `lecture_category`
--
ALTER TABLE `lecture_category`
  ADD PRIMARY KEY (`lcid`);

--
-- 테이블의 인덱스 `lecture_list`
--
ALTER TABLE `lecture_list`
  ADD PRIMARY KEY (`lid`);

--
-- 테이블의 인덱스 `lecture_video`
--
ALTER TABLE `lecture_video`
  ADD PRIMARY KEY (`lvid`);

--
-- 테이블의 인덱스 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`mid`);

--
-- 테이블의 인덱스 `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`tid`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `admins`
--
ALTER TABLE `admins`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- 테이블의 AUTO_INCREMENT `board_event`
--
ALTER TABLE `board_event`
  MODIFY `eb_pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `board_free`
--
ALTER TABLE `board_free`
  MODIFY `fb_pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `board_images`
--
ALTER TABLE `board_images`
  MODIFY `imgid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `board_like`
--
ALTER TABLE `board_like`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `board_notice`
--
ALTER TABLE `board_notice`
  MODIFY `nb_pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `board_qna`
--
ALTER TABLE `board_qna`
  MODIFY `qb_pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `board_reply`
--
ALTER TABLE `board_reply`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 테이블의 AUTO_INCREMENT `coupons_usercp`
--
ALTER TABLE `coupons_usercp`
  MODIFY `ucid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;
--
-- 테이블의 AUTO_INCREMENT `lecture_category`
--
ALTER TABLE `lecture_category`
  MODIFY `lcid` int(11) NOT NULL AUTO_INCREMENT COMMENT '카테고리 고유번호', AUTO_INCREMENT=41;

--
-- 테이블의 AUTO_INCREMENT `lecture_list`
--
ALTER TABLE `lecture_list`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT '강의 고유번호', AUTO_INCREMENT=7;

--
-- 테이블의 AUTO_INCREMENT `lecture_video`
--
ALTER TABLE `lecture_video`
  MODIFY `lvid` int(11) NOT NULL AUTO_INCREMENT COMMENT '강의영상 고유번호';

--
-- 테이블의 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `mid` int(15) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `teachers`
--
ALTER TABLE `teachers`
  MODIFY `tid` int(15) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
