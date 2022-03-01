
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `hawksgram` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hawksgram`;

-- --------------------------------------------------------

--
--
--

CREATE TABLE `User` (
  `UserID` int NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `PhoneNum` char(10) DEFAULT NULL,
  `UserCity` varchar(45) DEFAULT NULL,
  `UserState` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 
--

INSERT INTO `User` (`UserID`, `UserName`, `PhoneNum`, `UserCity`, `UserState`) VALUES
(1, 'cchen0122', '9735906791', 'West Long Branch', 'New Jersey'),
(2, 'ssilvs', '9735212112', 'Scranton', 'Pennslyvania'),
(3, 'k.kotes', '9735240678', 'Columbus', 'Ohio'),
(4, 'ericurban', '9738321238', 'Elon', 'North Carolina'),
(5, 'rxpcrx', '8628020547', 'Sugarland', 'Texas');

-- --------------------------------------------------------

--
-- 
--

CREATE TABLE `UserCredentials` (
  `UserEmail` varchar(45) NOT NULL,
  `UserPassword` varchar(45) DEFAULT NULL,
  `LastLoginDate` date DEFAULT NULL,
  `LastLoginTime` time DEFAULT NULL,
  `UserID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 
--

INSERT INTO `UserCredentials` (`UserEmail`, `UserPassword`, `LastLoginDate`, `LastLoginTime`, `UserID`) VALUES
('chrischen012299@gmail.com', '236908475', '2020-10-25', '15:23:00.0', 1),
('shannonsil@gmail.com', '324597621', '2020-10-02', '09:56:23.0', 2),
('kk021500@gmail.com', '815743283', '2020-09-24', '12:15:14.0', 3),
('eurban@gmail.com', '193746591', '2020-08-15', '22:48:12.0', 4),
('rxpeterrx@gmail.com', '239475893', '2020-05-10', '19:27:10.0', 5);

-- --------------------------------------------------------

--
-- 
--

CREATE TABLE `Photos` (
  `PhotoID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `PhotoDate` date DEFAULT NULL,
  `PhotoTime` time DEFAULT NULL,
  `PhotoDesc` varchar(45) DEFAULT NULL,
  `LikeCount` int DEFAULT NULL,
  `DislikeCount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
--
--

INSERT INTO `Photos` (`PhotoID`, `UserID`, `PhotoDate`, `PhotoTime`, `PhotoDesc`, `LikeCount`, `DislikeCount`) VALUES
(1, 1, '2020-10-24', '9:37:15.0', 'Soccer Field', 142, 19),
(2,	1, '2020-10-01', '17:20:51.0', 'Moon', 192, 10),
(3,	2, '2020-09-15', '11:59:03.0', 'City Skyline at Night', 111, 5),
(4,	2, '2020-09-24', '12:30:51.0', 'Portrait of Tom Brady', 28, 9),
(5,	2, '2020-08-02', '4:20:00.0', 'Starry Sky on the Beach', 49, 21),
(6,	3, '2020-09-20', '9:37:15.0', 'Portrait of hiker', 82, 13),
(7,	3, '2020-09-15','9:37:15.0', 'Portrait of atronaut', 239, 17),
(8,	3, '2020-08-13','9:37:15.0', 'Forest', 172, 84),
(9,	4, '2020-08-15','9:37:15.0', 'Saturn', 29, 2),
(10, 4, '2020-08-07','9:37:15.0', 'Mars', 48, 3),
(11, 5, '2020-05-10','9:37:15.0', 'Football Stadium', 10, 12),
(12, 5, '2020-04-10','9:37:15.0', 'Portrait of President Leahy', 27, 7),
(13, 5, '2020-03-11','9:37:15.0', 'Space Station', 12, 0),
(14, 5,	'2020-02-05','9:37:15.0', 'Mt. Everest', 8, 1),
(15, 5,	'2020-01-01','9:37:15.0', 'Portrait of Trump', 0, 8);

-- --------------------------------------------------------

--
--
--
CREATE TABLE `PhotoComments` (
  `CommentID` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `PhotoID` int DEFAULT NULL,
  `CommentText` varchar(45) DEFAULT NULL,
  `CommentLikes` int DEFAULT NULL,
  `CommentDislikes` int DEFAULT NULL,
  `CommentDate` date DEFAULT NULL,
  `CommentTime` time DEFAULT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
--
--

INSERT INTO `PhotoComments` (`CommentID`, `UserID`, `PhotoID`, `CommentText`, `CommentLikes`, `CommentDislikes`, `CommentDate`, `CommentTime`) VALUES
('1', '1', '7', 'I love space!', '12', '3', '2020-09-16', '12:30:15.0'),
('2', '2', '1', 'Who\'s playing?', '56', '21', '2020-10-25', '7:42:01.0'),
('3', '2', '6', 'How was the weather?', '3', '1', '2020-09-25', '4:23:41.0'),
('4', '3', '2', 'It looks amazing tonight!', '34', '15', '2020-10-01', '18:42:21.0'),
('5', '3', '5', 'Beautiful!', '12', '0', '2020-08-03', '15:12:00.0'),
('6', '3', '3', 'The city is so nice right now!', '92', '10', '2020-09-20', '13:19:41.0'),
('7', '4', '4', 'MVP!', '5', '17', '2020-09-24', '12:31:00.0'),
('8', '4', '8', 'Where\'s that?', '72', '12', '2020-08-29', '21:51:39.0'),
('9', '4', '15', 'Ew!', '24', '0', '2020-01-02', '12:35:51.0'),
('10', '4', '9', 'Look at those rings!', '14', '2', '2020-09-03', '1:41:15.0'),
('11', '5', '14', 'Must be chilly!', '6', '18', '2020-03-14', '23:15:27.0'),
('12', '5', '10', 'Wow that\'s red!', '41', '28', '2020-08-13', '14:16:25.0'),
('13', '5', '13', 'Amazing!', '11', '4', '2020-03-27', '12:13:14.0'),
('14', '5', '11', 'Go Giants!', '4', '17', '2020-06-12', '9:15:20.0'),
('15', '5', '12', 'Leahy!', ' 24', '9', '2020-07-30', '15:20:45.0'),
('16', '5', '1', 'Those are amazing seats!', '91', '31', '2020-11-15', '2:15:30.0');
-- --------------------------------------------------------

--
--
--
CREATE TABLE `PhotoCategories` (
  `PhotoCategories` int NOT NULL,
  `CategoryName` varchar(45) DEFAULT NULL,
  `PhotoID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
--
--

INSERT INTO `PhotoCategories` (`PhotoCategories`, `CategoryName`, `PhotoID`) VALUES
('1', 'Athletics', '1'),
('2', 'Athletics', '4'),
('3', 'Athletics', '11'),
('4', 'Space', '2'),
('5', 'Space', '3'),
('6', 'Space', '5'),
('7', 'Space', '7'),
('8', 'Space', '9'),
('9', 'Space', '10'),
('10', 'Space', '13'),
('11', 'Night', '3'),
('12', 'Night', '5'),
('13', 'Portrait', '4'),
('14', 'Portrait', '6'),
('15', 'Portrait', '7'),
('16', 'Portrait', '12'),
('17', 'Portrait', '15'),
('18', 'Nature', '5'),
('19', 'Nature', '5'),
('20', 'Nature', '8'),
('21', 'Nature', '14');


-- --------------------------------------------------------

--
--
--

CREATE TABLE `Categories` (
  `CategoryName` varchar(45) NOT NULL,
  `CategoryDesc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
--
--

INSERT INTO `Categories` (`CategoryName`, `CategoryDesc`) VALUES
('Sports', 'Physical Activity'),
('Nature', 'The Natural World'),
('Night', 'Between sunset and sunrise'),
('Space', 'Outer Space and Celestial Bodies'),
('Portrait', 'Likeness of an individual');

--
--
--

--
--
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName_UNIQUE` (`UserID`);

--
-- 
--
ALTER TABLE `UserCredentials`
  ADD PRIMARY KEY (`UserEmail`),
  ADD KEY `fk_userID_userCredentials_idx_idx` (`UserID`);

--
--
--
ALTER TABLE `Photos`
  ADD PRIMARY KEY (`PhotoID`),
  ADD KEY `fk_userID_photo_idx_idx` (`UserID`);
  
--
-- 
--
ALTER TABLE `PhotoCategories`
  ADD PRIMARY KEY (`PhotoCategories`),
  ADD KEY `fk_photoid_photocategories_idx_idx` (`PhotoID`),
  ADD KEY `fk_catname_cat_idx_idx` (`CategoryName`);

--
-- 
--
ALTER TABLE `PhotoComments`
	ADD PRIMARY KEY (`CommentID`),
    ADD KEY `fk_photoID_photocomments_idx_idx` (`PhotoID`),
    ADD KEY `fk_userID_photocomennts_idx` (`UserID`);
    
---
---
---
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`CategoryName`);

--
--
--
ALTER TABLE `UserCredentials`
  ADD CONSTRAINT `fk_userID_userCredentials_idx_idx` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 
--
ALTER TABLE `Photos`
  ADD CONSTRAINT `fk_userID_photos_idx_idx` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 
--
ALTER TABLE `PhotoCategories`
  ADD CONSTRAINT `fk_photoid_photocategories_idx_idx` FOREIGN KEY (`PhotoID`) REFERENCES `Photo` (`PhotoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_catname_cat_idx_idx` FOREIGN KEY (`CategoryName`) REFERENCES `Categories` (`CategoryName`) ON DELETE NO ACTION ON UPDATE NO ACTION;
  
  --
-- 
--
ALTER TABLE `PhotoComments`
  ADD CONSTRAINT `fk_photoID_photocomments_idx_idx` FOREIGN KEY (`PhotoID`) REFERENCES `Photo` (`PhotoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userID_photocomments_idx_idx` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
