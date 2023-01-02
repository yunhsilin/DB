-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-01-02 18:29:36
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `111-1project`
--

-- --------------------------------------------------------

--
-- 資料表結構 `application`
--

CREATE TABLE `application` (
  `Numbering` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Member_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Pet_number` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Shelter_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `application`
--

INSERT INTO `application` (`Numbering`, `Date`, `Member_ID`, `Pet_number`, `Shelter_name`) VALUES
('ap202301010001', '2023-01-01', 'p00000', '202301020001', '新北市板橋區公立動物之家');

-- --------------------------------------------------------

--
-- 資料表結構 `belong_to`
--

CREATE TABLE `belong_to` (
  `Pet_number` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Shelter_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `belong_to`
--

INSERT INTO `belong_to` (`Pet_number`, `Shelter_name`) VALUES
('202211290001', '臺中市動物之家南屯園區'),
('202212270001', '金門縣動物收容中心'),
('202212300001', '雲林縣流浪動物收容所'),
('202301020001', '新北市板橋區公立動物之家');

-- --------------------------------------------------------

--
-- 資料表結構 `investigation_location`
--

CREATE TABLE `investigation_location` (
  `Application_numbering` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Type_of_Location` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Size_of_Place` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `investigation_location`
--

INSERT INTO `investigation_location` (`Application_numbering`, `Type_of_Location`, `Size_of_Place`) VALUES
('ap202301010001', '大樓', 65);

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `Personal_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Sex` enum('F','M') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `Tel.` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Birth_date` date NOT NULL,
  `Email` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `District` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Town` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Street` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Num_of_pet` int(10) UNSIGNED NOT NULL,
  `WAdmin_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`Personal_ID`, `Name`, `Sex`, `Tel.`, `Birth_date`, `Email`, `Password`, `City`, `District`, `Town`, `Street`, `Num_of_pet`, `WAdmin_ID`) VALUES
('p00000', '金材昱', 'M', '0978556313', '1983-04-02', 'jaeuck@gmail.com', 'jaeuck000', '台北市', '中正區', 'xxx', '公園路1004號', 2, 'WebAdmin00'),
('p00001', '黃曉明', 'M', '0935745853', '1979-08-11', 'xiaom@gmail.com', 'xiaom001', '宜蘭縣', '五結鄉', '成興村', '利寶路60號', 0, 'WebAdmin00'),
('p00002', '金正恩', 'M', '0988519744', '1985-05-23', 'nuclear@gmail.com', 'nuclear002', '台中市', '西屯區', 'xxx', '河南路二段711號', 3, 'WebAdmin00'),
('p00003', '麥糖糖', 'F', '0941298890', '1970-06-25', 'mcfree@gmail.com', 'mcfree003', '雲林縣', '斗南鎮', 'xxx', '延平路二段455號', 0, 'WebAdmin00'),
('p00004', '陳小美', 'F', '0912534688', '1992-02-07', 'bmbm@gmail.comm', 'bmbm004', '金門縣', '金湖鎮', 'xxx', '漁村160號', 1, 'WebAdmin00');

-- --------------------------------------------------------

--
-- 資料表結構 `pet`
--

CREATE TABLE `pet` (
  `Containment_Number` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Sex` enum('F','M') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `Wafer` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `Adoption_Status` enum('適合領養','暫時不適合認養') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Category` enum('貓','犬','其他') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '其他',
  `Announcement_Time` date NOT NULL,
  `Varity` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Length_of_Stay` int(10) UNSIGNED DEFAULT NULL,
  `Rescue_Location` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Size` enum('大','中','小') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '小',
  `Member_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Shelter_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pet`
--

INSERT INTO `pet` (`Containment_Number`, `Sex`, `Wafer`, `Adoption_Status`, `Description`, `Category`, `Announcement_Time`, `Varity`, `Length_of_Stay`, `Rescue_Location`, `Size`, `Member_ID`, `Shelter_name`) VALUES
('202301020001', 'M', 'N', '適合領養', '未絕育', '貓', '2023-01-02', '混種貓', 0, '集英里錦西街', '小', NULL, '新北市板橋區公立動物之家'),
('202212300001', 'M', 'N', '適合領養', '動物名嘟嘟', '犬', '2022-12-30', '柴', 3, '明志動物醫院', '中', NULL, '雲林縣流浪動物收容所'),
('202211290001', 'F', 'N', '暫時不適合認養', '進所原因政府處理案件', '其他', '2022-11-29', '兔', 34, '蘇澳鎮', '小', NULL, '臺中市動物之家南屯園區'),
('202212270001', 'F', 'N', '適合領養', NULL, '貓', '2022-12-27', '虎斑', 6, '金城鎮', '中', NULL, '金門縣動物收容中心');

-- --------------------------------------------------------

--
-- 資料表結構 `shelter`
--

CREATE TABLE `shelter` (
  `Name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Tel.` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Nursing_Num` int(11) DEFAULT NULL,
  `Max_of_Containment` int(11) DEFAULT NULL,
  `City` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `District` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Town` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Street` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SAdmin_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `WAdmin_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `shelter`
--

INSERT INTO `shelter` (`Name`, `Tel.`, `Nursing_Num`, `Max_of_Containment`, `City`, `District`, `Town`, `Street`, `SAdmin_ID`, `WAdmin_ID`) VALUES
('新北市板橋區公立動物之家', '02-89662158', 204, 347, '新北市', '板橋區', 'xxx', '板城路28-1號', 'BQAdmin01', 'WebAdmin00'),
('臺中市動物之家南屯園區', '04-23850976', 223, 400, '臺中市', '南屯區', 'xxx', '中台路601號', 'TGNTAdmin01', 'WebAdmin00'),
('金門縣動物收容中心', '082-336625', 110, 200, '金門縣', '金湖鎮', 'xxx', '裕民農莊20號', 'GMAdmin01', 'WebAdmin00'),
('雲林縣流浪動物收容所', '05-5523300', 300, 373, '雲林縣', '斗六市', 'xxx', '雲林路二段517號', 'YLAdmin01', 'WebAdmin00');

-- --------------------------------------------------------

--
-- 資料表結構 `shelter_admin`
--

CREATE TABLE `shelter_admin` (
  `ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `WAdmin_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `shelter_admin`
--

INSERT INTO `shelter_admin` (`ID`, `Password`, `WAdmin_ID`) VALUES
('BQAdmin01', 'BQAdmin01', 'WebAdmin00'),
('GMAdmin01', 'GMAdmin01', 'WebAdmin00'),
('TGNTAdmin01', 'TGNTAdmin01', 'WebAdmin00'),
('YLAdmin01', 'YLAdmin01', 'WebAdmin00');

-- --------------------------------------------------------

--
-- 資料表結構 `web_admin`
--

CREATE TABLE `web_admin` (
  `ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `web_admin`
--

INSERT INTO `web_admin` (`ID`, `Password`) VALUES
('WebAdmin00', 'Webadmin00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`Numbering`);

--
-- 資料表索引 `belong_to`
--
ALTER TABLE `belong_to`
  ADD PRIMARY KEY (`Pet_number`,`Shelter_name`) USING BTREE;

--
-- 資料表索引 `investigation_location`
--
ALTER TABLE `investigation_location`
  ADD PRIMARY KEY (`Application_numbering`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`Personal_ID`),
  ADD UNIQUE KEY `unique` (`Tel.`,`Email`) USING BTREE;

--
-- 資料表索引 `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`Containment_Number`);

--
-- 資料表索引 `shelter`
--
ALTER TABLE `shelter`
  ADD PRIMARY KEY (`Name`),
  ADD UNIQUE KEY `unique` (`Tel.`) USING BTREE;

--
-- 資料表索引 `shelter_admin`
--
ALTER TABLE `shelter_admin`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `web_admin`
--
ALTER TABLE `web_admin`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
