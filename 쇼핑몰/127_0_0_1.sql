-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 22-03-17 13:43
-- 서버 버전: 10.4.10-MariaDB
-- PHP 버전: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shopping`;

-- --------------------------------------------------------

--
-- 테이블 구조 `basket`
--

CREATE TABLE `basket` (
  `bas_num` int(11) NOT NULL COMMENT '장바구니번호',
  `bas_proname` varchar(100) NOT NULL COMMENT '상품명',
  `bas_count` int(11) NOT NULL COMMENT '상품개수',
  `bas_proprice` int(11) NOT NULL COMMENT '상품금액',
  `bas_userid` varchar(50) NOT NULL COMMENT '구매자아이디'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='장바구니';

-- --------------------------------------------------------

--
-- 테이블 구조 `catagory`
--

CREATE TABLE `catagory` (
  `idx` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `img` varchar(20) NOT NULL,
  `url` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `catagory`
--

INSERT INTO `catagory` (`idx`, `title`, `img`, `url`) VALUES
(1, '도서', 'book', 'book'),
(2, '음식', 'food', 'food'),
(3, '옷/의료', 'tshirt', 'tshirt'),
(4, '카메라', 'camera', 'camera'),
(5, '컴퓨터', 'computer', 'computer'),
(6, '스포츠', 'sports', 'sports'),
(7, 'TV', 'tv', 'tv'),
(8, '생활', 'home', 'home');

-- --------------------------------------------------------

--
-- 테이블 구조 `delivery`
--

CREATE TABLE `delivery` (
  `del_num` int(11) NOT NULL COMMENT '배송업체번호',
  `del_name` varchar(50) NOT NULL COMMENT '배송업체이름',
  `del_addr` text NOT NULL COMMENT '배송업체주소',
  `del_phone` varchar(20) NOT NULL COMMENT '배송업체전화번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='배송업체';

-- --------------------------------------------------------

--
-- 테이블 구조 `delivery_user`
--

CREATE TABLE `delivery_user` (
  `dl_num` int(11) NOT NULL COMMENT '배송번호',
  `del_num` int(10) NOT NULL COMMENT '배송업체번호',
  `del_name` varchar(50) NOT NULL COMMENT '배송업체이름',
  `dl_addr` varchar(100) NOT NULL COMMENT '배송지주소',
  `dl_name` varchar(20) NOT NULL COMMENT '배송자이름',
  `dl_phone` varchar(20) NOT NULL COMMENT '배송자전화번호',
  `dl_type` varchar(10) NOT NULL COMMENT '결제수단',
  `dl_text` varchar(100) NOT NULL COMMENT '배송요청사항'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='배송요청';

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `m_id` varchar(50) NOT NULL COMMENT '회원아이디',
  `m_pw` varchar(100) NOT NULL COMMENT '비밀번호',
  `m_phone` varchar(50) NOT NULL COMMENT '전화번호',
  `m_addr` text NOT NULL COMMENT '주소',
  `m_type` varchar(15) NOT NULL COMMENT '회원타입'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원';

-- --------------------------------------------------------

--
-- 테이블 구조 `product`
--

CREATE TABLE `product` (
  `pro_num` int(11) NOT NULL COMMENT '상품번호',
  `pro_manuname` varchar(50) NOT NULL COMMENT '제조사명',
  `pro_salname` varchar(50) NOT NULL COMMENT '판매업체명',
  `pro_name` varchar(200) NOT NULL COMMENT '상품명',
  `pro_class` varchar(20) NOT NULL COMMENT '분류',
  `pro_available` int(11) NOT NULL COMMENT '재고수량',
  `pro_price` int(11) NOT NULL COMMENT '상품가격',
  `pro_indate` date NOT NULL COMMENT '입고날짜',
  `pro_proimg` varchar(100) NOT NULL COMMENT '제품이미지',
  `pro_detailimg` varchar(100) NOT NULL COMMENT '상품상세정보',
  `pro_total` int(11) NOT NULL COMMENT '구매횟수'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `product`
--

INSERT INTO `product` (`pro_num`, `pro_manuname`, `pro_salname`, `pro_name`, `pro_class`, `pro_available`, `pro_price`, `pro_indate`, `pro_proimg`, `pro_detailimg`, `pro_total`) VALUES
(1, '삼성전자', '삼성디지털프라자', 'Samsung SSD 970 EVO M.2', '컴퓨터', 30, 70000, '2021-05-29', 'ssd970', 'ssd970_detail', 1),
(2, '삼성전자', '삼성디지털프라자', 'Samsung DDR3L 8GB RAM', '컴퓨터', 30, 31520, '2021-05-29', 'ddr3l_8g', 'ddr3l_8g_detail', 4),
(3, '삼성전자', '삼성디지털프라자', 'Samsung SSD 970 EVO M.2', '컴퓨터', 30, 70000, '2021-05-29', 'ssd970', 'ssd970_detail', 1),
(4, '삼성전자', '삼성디지털프라자', 'Samsung SSD 970 EVO M.2', '컴퓨터', 30, 70000, '2021-05-29', 'ssd970', 'ssd970_detail', 1),
(5, '삼성전자', '삼성디지털프라자', 'Samsung SSD 970 EVO M.2', '컴퓨터', 30, 70000, '2021-05-29', 'ssd970', 'ssd970_detail', 1),
(6, '삼성전자', '삼성디지털프라자', 'Samsung SSD 970 EVO M.2', '컴퓨터', 30, 70000, '2021-05-29', 'ssd970', 'ssd970_detail', 1),
(7, '삼성전자', '삼성디지털프라자', 'Samsung SSD 970 EVO M.2', '컴퓨터', 30, 70000, '2021-05-29', 'ssd970', 'ssd970_detail', 1),
(8, '삼성전자', '삼성디지털프라자', 'Samsung SSD 970 EVO M.2', '컴퓨터', 30, 70000, '2021-05-29', 'ssd970', 'ssd970_detail', 1),
(9, '삼성전자', '삼성디지털프라자', 'Samsung SSD 970 EVO M.2', '컴퓨터', 30, 70000, '2021-05-29', 'ssd970', 'ssd970_detail', 1),
(10, '삼성전자', '삼성디지털프라자', 'Samsung SSD 970 EVO M.2', '컴퓨터', 30, 70000, '2021-05-29', 'ssd970', 'ssd970_detail', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `product_op`
--

CREATE TABLE `product_op` (
  `op_num` varchar(50) NOT NULL COMMENT '옵션상품번호',
  `op_manuname` varchar(50) NOT NULL COMMENT '제조사명',
  `op_name` varchar(50) NOT NULL COMMENT '상품명',
  `op_class` int(11) NOT NULL COMMENT '품목명',
  `op_available` int(11) NOT NULL COMMENT '재고수량',
  `op_price` int(11) NOT NULL COMMENT '상품가격',
  `op_indate` date NOT NULL COMMENT '입고날짜',
  `op_proimg` varchar(100) NOT NULL COMMENT '제품이미지'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='상품옵션';

-- --------------------------------------------------------

--
-- 테이블 구조 `purchase`
--

CREATE TABLE `purchase` (
  `pur_num` varchar(100) NOT NULL COMMENT '구매번호',
  `pur_userid` varchar(50) NOT NULL COMMENT '구매아이디',
  `pur_name` varchar(100) NOT NULL COMMENT '구매상품명',
  `pur_price` int(11) NOT NULL COMMENT '구매가격',
  `pur_date` datetime NOT NULL COMMENT '구매날짜'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='구매';

-- --------------------------------------------------------

--
-- 테이블 구조 `purchase_op`
--

CREATE TABLE `purchase_op` (
  `pop_num` varchar(100) NOT NULL COMMENT '구매옵션번호',
  `pop_name` varchar(100) NOT NULL COMMENT '구매상품명',
  `pop_price` int(11) NOT NULL COMMENT '구매상품가격',
  `pop_date` datetime NOT NULL COMMENT '구매날짜'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='구매옵션';

-- --------------------------------------------------------

--
-- 테이블 구조 `recent`
--

CREATE TABLE `recent` (
  `idx` int(11) NOT NULL,
  `pro_no` varchar(100) DEFAULT NULL,
  `ip_addr` varchar(100) DEFAULT NULL,
  `creation_date` timestamp NULL DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `recent`
--

INSERT INTO `recent` (`idx`, `pro_no`, `ip_addr`, `creation_date`, `userid`) VALUES
(65, '10', '::1', '2022-03-16 15:00:00', 'guest'),
(66, '10', '::1', '2022-03-17 12:34:25', 'guest'),
(67, '10', '::1', '2022-03-17 12:36:01', 'guest');

-- --------------------------------------------------------

--
-- 테이블 구조 `review`
--

CREATE TABLE `review` (
  `rv_num` varchar(100) NOT NULL COMMENT '상품번호',
  `rv_start` int(11) NOT NULL COMMENT '별점',
  `rv_userid` varchar(10) NOT NULL COMMENT '별점아이디'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='리뷰';

-- --------------------------------------------------------

--
-- 테이블 구조 `seller`
--

CREATE TABLE `seller` (
  `sel_num` int(11) NOT NULL COMMENT '판매자번호',
  `sel_saname` varchar(100) NOT NULL COMMENT '판매업체이름',
  `sel_name` varchar(50) NOT NULL COMMENT '판매자이름',
  `sel_userid` varchar(50) NOT NULL COMMENT '판매자아이디',
  `sel_addr` varchar(100) NOT NULL COMMENT '판매자 업체주소',
  `sel_phone` varchar(20) NOT NULL COMMENT '판매업체전화번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='판매자';

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`bas_num`);

--
-- 테이블의 인덱스 `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`del_num`);

--
-- 테이블의 인덱스 `delivery_user`
--
ALTER TABLE `delivery_user`
  ADD PRIMARY KEY (`dl_num`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`m_id`);

--
-- 테이블의 인덱스 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_num`) USING BTREE;

--
-- 테이블의 인덱스 `product_op`
--
ALTER TABLE `product_op`
  ADD PRIMARY KEY (`op_num`);

--
-- 테이블의 인덱스 `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`pur_num`);

--
-- 테이블의 인덱스 `purchase_op`
--
ALTER TABLE `purchase_op`
  ADD PRIMARY KEY (`pop_num`);

--
-- 테이블의 인덱스 `recent`
--
ALTER TABLE `recent`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`sel_num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `basket`
--
ALTER TABLE `basket`
  MODIFY `bas_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '장바구니번호';

--
-- 테이블의 AUTO_INCREMENT `catagory`
--
ALTER TABLE `catagory`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 테이블의 AUTO_INCREMENT `delivery_user`
--
ALTER TABLE `delivery_user`
  MODIFY `dl_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '배송번호';

--
-- 테이블의 AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `pro_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '상품번호', AUTO_INCREMENT=11;

--
-- 테이블의 AUTO_INCREMENT `recent`
--
ALTER TABLE `recent`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- 테이블의 AUTO_INCREMENT `seller`
--
ALTER TABLE `seller`
  MODIFY `sel_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '판매자번호';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
