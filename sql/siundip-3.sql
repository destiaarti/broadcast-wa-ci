-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2021 at 07:28 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siundip`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_itk`
--

CREATE TABLE `tbl_itk` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `no_passport` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `date_start` date NOT NULL,
  `date_expired` date NOT NULL,
  `itk_file` varchar(255) DEFAULT 'default.jpg',
  `passport_file` varchar(255) DEFAULT 'default.jpg',
  `status_notification` tinyint(1) NOT NULL DEFAULT 0,
  `send_notification` date DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_itk`
--

INSERT INTO `tbl_itk` (`id`, `first_name`, `last_name`, `no_passport`, `email`, `date_start`, `date_expired`, `itk_file`, `passport_file`, `status_notification`, `send_notification`, `no_hp`) VALUES
(147, 'Abe', 'Lind', '7082488', 'destiaartiw@gmail.com', '2020-10-04', '2022-02-04', 'default.png', 'default.png', 0, NULL, NULL),
(148, 'Murl', 'Kuhn', '940433', 'joany.okuneva@example.com', '2021-08-31', '2022-01-05', 'default.png', 'default.png', 0, NULL, NULL),
(149, 'Myrtis', 'Rohan', '4', 'elsa.dach@example.com', '2020-09-26', '2021-10-28', 'default.png', 'default.png', 0, NULL, NULL),
(150, 'Heaven', 'Mitchell', '5563', 'baumbach.arno@example.net', '2020-09-30', '2022-04-17', 'default.png', 'default.png', 0, NULL, NULL),
(151, 'Lane', 'Kozey', '672950', 'milan.deckow@example.com', '2020-10-02', '2022-05-08', 'default.png', 'default.png', 0, NULL, NULL),
(152, 'Sienna', 'Volkman', '48403', 'wyatt21@example.net', '2020-09-18', '2021-10-19', 'default.png', 'default.png', 0, NULL, NULL),
(153, 'Roscoe', 'Dickinson', '60', 'schaden.eliane@example.org', '2021-08-19', '2022-06-26', 'default.png', 'default.png', 0, NULL, NULL),
(154, 'Garret', 'Nolan', '531091050', 'etha.crooks@example.org', '2020-12-27', '2022-07-22', 'default.png', 'default.png', 0, NULL, NULL),
(155, 'Georgiana', 'Baumbach', '591', 'kessler.myriam@example.com', '2021-03-30', '2022-03-18', 'default.png', 'default.png', 0, NULL, NULL),
(156, 'Everett', 'Satterfield', '50', 'jessy.wuckert@example.org', '2020-09-22', '2022-05-10', 'default.png', 'default.png', 0, NULL, NULL),
(157, 'Priscilla', 'Corwin', '478010177', 'milan.waelchi@example.net', '2021-07-25', '2022-08-11', 'default.png', 'default.png', 0, NULL, NULL),
(158, 'Bennie', 'Veum', '3939', 'morar.johnathon@example.net', '2020-11-04', '2022-09-07', 'default.png', 'default.png', 0, NULL, NULL),
(159, 'Bernadette', 'Kessler', '9272', 'marcella72@example.org', '2021-07-27', '2021-12-20', 'default.png', 'default.png', 0, NULL, NULL),
(160, 'Raquel', 'Kunde', '604464', 'jschoen@example.net', '2020-12-14', '2022-04-03', 'default.png', 'default.png', 0, NULL, NULL),
(161, 'Rasheed', 'Carroll', '461959', 'roberta93@example.net', '2021-08-03', '2022-04-17', 'default.png', 'default.png', 0, NULL, NULL),
(162, 'Hester', 'Stark', '16988', 'glen79@example.com', '2021-08-23', '2022-02-04', 'default.png', 'default.png', 0, NULL, NULL),
(163, 'Hanna', 'Nicolas', '39326603', 'kirsten.stanton@example.org', '2020-12-28', '2022-02-15', 'default.png', 'default.png', 0, NULL, NULL),
(164, 'Abigail', 'Monahan', '3', 'hzulauf@example.net', '2021-02-19', '2022-05-22', 'default.png', 'default.png', 0, NULL, NULL),
(165, 'Joana', 'Streich', '276256123', 'ocummerata@example.net', '2021-05-12', '2021-12-11', 'default.png', 'default.png', 0, NULL, NULL),
(166, 'Raymond', 'Tillman', '81660826', 'cordie82@example.com', '2020-09-21', '2022-04-25', 'default.png', 'default.png', 0, NULL, NULL),
(167, 'Daniella', 'Rosenbaum', '899', 'carolanne.grimes@example.com', '2020-09-18', '2022-03-28', 'default.png', 'default.png', 0, NULL, NULL),
(168, 'Denis', 'Reynolds', '4726941', 'erich27@example.com', '2021-07-07', '2022-04-25', 'default.png', 'default.png', 0, NULL, NULL),
(169, 'Eugenia', 'Stokes', '770341908', 'camille24@example.org', '2021-03-08', '2022-06-10', 'default.png', 'default.png', 0, NULL, NULL),
(170, 'Romaine', 'Mitchell', '947', 'toy.emil@example.net', '2021-05-06', '2021-12-21', 'default.png', 'default.png', 0, NULL, NULL),
(171, 'Gerald', 'Runte', '226', 'natalia.breitenberg@example.org', '2020-11-11', '2022-01-11', 'default.png', 'default.png', 0, NULL, NULL),
(172, 'Nyah', 'Oberbrunner', '6254', 'mcdermott.hollis@example.org', '2021-02-07', '2022-06-14', 'default.png', 'default.png', 0, NULL, NULL),
(173, 'Axel', 'Berge', '138965151', 'tgreen@example.org', '2021-04-10', '2022-08-08', 'default.png', 'default.png', 0, NULL, NULL),
(174, 'Thea', 'Swaniawski', '60337204', 'bettye.west@example.com', '2021-06-11', '2022-07-14', 'default.png', 'default.png', 0, NULL, NULL),
(175, 'Francisco', 'Dickens', '612725', 'rwunsch@example.com', '2021-02-25', '2022-03-21', 'default.png', 'default.png', 0, NULL, NULL),
(176, 'Christopher', 'Rippin', '472', 'ellis.wisozk@example.net', '2021-07-28', '2022-01-26', 'default.png', 'default.png', 0, NULL, NULL),
(177, 'Colin', 'Turcotte', '348964384', 'zryan@example.com', '2021-03-18', '2022-02-01', 'default.png', 'default.png', 0, NULL, NULL),
(178, 'Halle', 'Jenkins', '34674663', 'phintz@example.net', '2021-05-25', '2022-03-30', 'default.png', 'default.png', 0, NULL, NULL),
(179, 'Dorian', 'Eichmann', '417767', 'shanny.beer@example.org', '2021-07-19', '2021-11-11', 'default.png', 'default.png', 0, NULL, NULL),
(180, 'Elvis', 'Graham', '11072539', 'stark.ken@example.net', '2021-07-21', '2022-05-22', 'default.png', 'default.png', 0, NULL, NULL),
(182, 'Madison', 'Nitzsche', '62143984', 'jessika.wiegand@example.net', '2021-02-18', '2021-10-20', 'default.png', 'default.png', 0, NULL, NULL),
(183, 'Tabitha', 'Kuhn', '6952', 'bchristiansen@example.org', '2020-09-14', '2021-10-07', 'default.png', 'default.png', 0, NULL, NULL),
(184, 'Nya', 'Block', '8', 'weldon55@example.com', '2021-01-28', '2022-06-18', 'default.png', 'default.png', 0, NULL, NULL),
(185, 'Margarita', 'Turcotte', '680810', 'ruecker.onie@example.org', '2020-09-30', '2021-11-25', 'default.png', 'default.png', 0, NULL, NULL),
(186, 'Vesta', 'Ritchie', '20', 'simone.quitzon@example.net', '2021-08-14', '2022-01-27', 'default.png', 'default.png', 0, NULL, NULL),
(187, 'Priscilla', 'Jacobi', '5217', 'edd16@example.net', '2020-10-29', '2022-07-13', 'default.png', 'default.png', 0, NULL, NULL),
(188, 'Leslie', 'Herman', '353', 'reynold39@example.org', '2021-09-03', '2021-12-04', 'default.png', 'default.png', 0, NULL, NULL),
(189, 'Evelyn', 'Ebert', '8047', 'glabadie@example.com', '2021-06-11', '2022-05-05', 'default.png', 'default.png', 0, NULL, NULL),
(190, 'Emile', 'Schaefer', '286', 'dane53@example.com', '2021-07-06', '2022-08-10', 'default.png', 'default.png', 0, NULL, NULL),
(191, 'Mckenzie', 'Cremin', '24', 'schowalter.diamond@example.net', '2021-02-11', '2022-02-09', 'default.png', 'default.png', 0, NULL, NULL),
(192, 'Major', 'Fahey', '435118', 'breanne40@example.net', '2021-03-29', '2022-03-24', 'default.png', 'default.png', 0, NULL, NULL),
(193, 'Viva', 'Roberts', '54022', 'dhane@example.org', '2020-11-17', '2022-04-12', 'default.png', 'default.png', 0, NULL, NULL),
(194, 'Alberta', 'Shanahan', '88886', 'jillian.wisoky@example.com', '2020-11-14', '2022-03-29', 'default.png', 'default.png', 0, NULL, NULL),
(195, 'Vesta', 'Strosin', '211', 'durgan.maribel@example.net', '2021-08-31', '2022-08-13', 'default.png', 'default.png', 0, NULL, NULL),
(196, 'Ruthe', 'Vandervort', '7786', 'bjenkins@example.com', '2021-06-12', '2022-01-27', 'default.png', 'default.png', 0, NULL, NULL),
(197, 'Astrid', 'Erdman', '227948', 'yoshiko57@example.net', '2021-05-20', '2021-10-21', 'default.png', 'default.png', 0, NULL, NULL),
(198, 'Derek', 'Cruickshank', '26', 'pacocha.miller@example.com', '2021-07-13', '2021-09-21', 'default.png', 'default.png', 0, NULL, NULL),
(199, 'Myles', 'Schultz', '18', 'berneice15@example.com', '2021-08-18', '2022-03-20', 'default.png', 'default.png', 0, NULL, NULL),
(200, 'Bradly', 'Feil', '958', 'vanessa.reilly@example.com', '2021-09-14', '2022-06-25', 'default.png', 'default.png', 0, NULL, NULL),
(201, 'Mauricio', 'Hand', '1408519', 'evangeline.balistreri@example.org', '2021-01-18', '2022-07-04', 'default.png', 'default.png', 0, NULL, NULL),
(202, 'destia', 'handini', '', 'admin@mail.com', '2021-09-29', '2021-10-17', NULL, NULL, 0, NULL, NULL),
(203, 'nn', 'gg', '', 'wee@mail.com', '2021-10-05', '2021-10-13', 'default.png', 'default.png', 0, NULL, NULL),
(204, 'destia', 's', '', 'destaunique@yahoo.com', '2021-10-18', '2021-10-26', 'default.png', 'default.png', 0, NULL, NULL),
(205, 'nn', 's', '5666', 'admin@mail.comb', '2021-10-11', '2021-10-12', 'default.png', 'default.png', 0, NULL, NULL),
(206, 'cek ', 'gambar', '56661', 'admin@mail.com1', '2021-10-04', '2021-10-21', 'default.png', 'default.png', 0, NULL, NULL),
(207, 'nn', 'gambar', '5666', 'destaunique@yahoo.com', '2021-10-13', '2021-10-27', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview.png', 'default.png', 0, NULL, NULL),
(208, 'aa', 'gambar', '5666', 'destaunique@yahoo.com', '2021-10-04', '2021-10-20', 'imagejpg.png', 'default.png', 0, NULL, NULL),
(209, 'destia', 'tes', '56661', 'destaunique@yahoo.com', '2021-09-29', '2021-10-13', NULL, NULL, 0, NULL, NULL),
(210, 'gambar', 'tes', '566611', 'destia@happy5.co', '2021-09-28', '2021-10-14', NULL, '185224838_482577936279944_5791905803873885458_n.jpg', 0, NULL, NULL),
(211, 'gambar', 's', '5666', 'destaunique@yahoo.com', '2021-10-06', '2021-10-28', '125175991_10219270306692597_5950350908788290664_n.jpg', '218223786_4227572410668073_4741798481798330076_n.jpg', 0, NULL, NULL),
(212, 'aa', 's', 'aa', 'aa@mail.com', '2021-10-06', '2021-10-21', 'default.jpg', 'default.jpg', 0, NULL, NULL),
(213, 'tes', 'tes', 'aa', 'destaunique@yahoo.com', '2021-09-27', '2021-10-13', 'default.jpg', 'default.jpg', 0, NULL, NULL),
(214, 'gambar', 'gambar', '56661', 'admin@mail.com', '2021-09-30', '2021-10-21', '125175991_10219270306692597_5950350908788290664_n1.jpg', 'xl.png', 0, NULL, NULL),
(215, 'aa', 's', '56661', 'admin@mail.com', '2021-10-05', '2021-10-19', NULL, '125175991_10219270306692597_5950350908788290664_n.jpg', 0, NULL, NULL),
(216, 'pa', 'a', '56661', 'destaunique@yahoo.com', '2021-09-29', '2021-10-15', NULL, 'passport89-891718_download-shopping-cart-icon-shop-cart-logo-png_png-removebg-preview1.png', 0, NULL, NULL),
(217, 'aa', 's', '56661', 'destaunique@yahoo.com', '2021-09-27', '2021-10-21', NULL, 'passport.89-891718_download-shopping-cart-icon-shop-cart-logo-png_png-removebg-preview2.png', 0, NULL, NULL),
(218, 'aa', 'gg', 'aa', 'admin@mail.com', '2021-09-28', '2021-10-14', NULL, NULL, 0, NULL, NULL),
(219, 'aa', 'gg', '56661', 'dawahyuh@student.undip.ce.ac.id', '2021-09-28', '2021-10-22', NULL, 'passport.aa1633251573', 0, NULL, NULL),
(220, 'yy', 'aa', 'aa', 'destaunique@yahoo.com', '2021-10-13', '2021-10-27', NULL, NULL, 0, NULL, NULL),
(221, 'cek ', 'gg', '56661', 'admin@mail.com', '2021-09-27', '2021-10-28', NULL, NULL, 0, NULL, NULL),
(222, 'aa', 's', '56661', 'admin@mail.com', '2021-09-29', '2021-10-19', NULL, NULL, 0, NULL, NULL),
(223, 'aa', 'tes', 'aa', 'destaunique@yahoo.com', '2021-10-05', '2021-10-28', NULL, NULL, 0, NULL, NULL),
(224, 'nn', 'gg', '56661', 'admin@mail.com', '2021-09-29', '2021-10-14', NULL, NULL, 0, NULL, NULL),
(225, 'tes ', 'a', '56661', 'admin@mail.com', '2021-09-27', '2021-10-27', 'home-icon-free-11549922775iqxl34wxso-removebg-preview.png', NULL, 0, NULL, NULL),
(226, 'gambar', 'gambar', '56661', 'destaunique@yahoo.com', '2021-09-30', '2021-10-22', '24b3b2e3-330e-45cf-9e67-d23c084b46fd.png', NULL, 0, NULL, NULL),
(227, 'aa', 'aa', 'aa', 'destaunique@yahoo.com', '2021-09-29', '2021-10-29', 'wa.png', NULL, 0, NULL, NULL),
(228, 'gambar', 'gg', 'aa', 'destaunique@yahoo.com', '2021-09-28', '2021-10-28', 'ig-removebg-preview.png', NULL, 0, NULL, NULL),
(229, 'gambar', 'gambar', '566611', 'admin@mail.com', '2021-10-05', '2021-10-20', NULL, NULL, 0, NULL, NULL),
(230, 'aa', 'gg', 'aa', 'destaunique@yahoo.com', '2021-09-26', '2021-10-23', NULL, NULL, 0, NULL, NULL),
(231, 'nn', 'gg', 'aa', 'admin@mail.com', '2021-10-01', '2021-10-15', NULL, NULL, 0, NULL, NULL),
(232, 'gambar', 'gg', '56661', 'dawahyuh@student.undip.ce.ac.id', '2021-09-27', '2021-10-27', NULL, NULL, 0, NULL, NULL),
(233, 'nn', 'gambar', '566611', 'admin@mail.com', '2021-09-27', '2021-10-21', 'default.jpg', 'default.jpg', 0, NULL, NULL),
(234, 'cek ', 's', 'aa', 'admin@mail.com', '2021-09-27', '2021-10-13', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview1.png', NULL, 0, NULL, NULL),
(235, 'cek ', 'gambar', 'aa', 'destaunique@yahoo.com', '2021-09-26', '2021-10-21', '89-891718_download-shopping-cart-icon-shop-cart-logo-png_png-removebg-preview1.png', NULL, 0, NULL, NULL),
(236, 'gambar', 'handini', '56661', 'destaunique@yahoo.com', '2021-09-27', '2021-10-22', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview2.png', '167948795_936562700218213_6402446822818348218_n.jpg', 0, NULL, NULL),
(237, 'nn', 'gg', '5666', 'admin@mail.com', '2021-09-26', '2021-10-08', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview4.png', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview3.png', 0, NULL, NULL),
(238, 'aa', 'handini', '56661', 'destaunique@yahoo.com', '2021-09-27', '2021-10-12', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview5.png', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview4.png', 0, NULL, NULL),
(239, 'gambar', 'gambar', '5666', 'destaunique@yahoo.com', '2021-09-27', '2021-10-14', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview6.png', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels.png', 0, NULL, NULL),
(240, 'tes tambah', 'tambah', '56661', 'destaunique@yahoo.com', '2021-10-05', '2021-10-29', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview7.png', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview5.png', 0, NULL, NULL),
(241, 'destia', 'tes', '56661', 'destaunique@yahoo.com', '2021-10-05', '2021-10-26', NULL, NULL, 0, NULL, NULL),
(242, 'aa', 'gg', '56661', 'destaunique@yahoo.com', '2021-09-28', '2021-10-22', '3_Pengertian_Class_Object_Method.pdf', '89-891718_download-shopping-cart-icon-shop-cart-logo-png_png-removebg-preview3.png', 0, NULL, NULL),
(243, 'Carmine', 'Bahringer', '17179', 'mabshire@example.org', '2021-04-20', '2022-03-25', NULL, NULL, 0, NULL, NULL),
(244, 'aa', 'gg', '56661', 'destaunique@yahoo.com', '2021-09-28', '2021-10-22', NULL, '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview6.png', 0, NULL, NULL),
(245, 'aa', 'gg', '56661', 'destaunique@yahoo.com', '2021-09-28', '2021-10-22', NULL, NULL, 0, NULL, NULL),
(246, 'tes tambah', 'tambah', '56661', 'destaunique@yahoo.com', '2021-10-05', '2021-10-29', NULL, '181917357_3322417747861766_4886820816736691930_n.jpg', 0, NULL, NULL),
(247, 'tes tambah', 'tambah', '', 'destaunique@yahoo.com', '2021-10-05', '2021-10-29', '89-891718_download-shopping-cart-icon-shop-cart-logo-png_png-removebg-preview2.png', '0e475bb9b17b3fa4f94f31fba1635b8f-telephone-call-icon-logo-by-vexels-removebg-preview8.png', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `role` enum('admin','admin fakultas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `phone`, `activated`, `last_login`, `created_at`, `updated_at`, `role`) VALUES
(1, 'admin', '$2y$05$OA.OoeNHoEkbGGKazYqPU.UOaI5jmgro8x2pRSV56ClTWlDf0EEn2', 'ADMIN', 'aja', 'admin@mail.com', '081906515912', 1, '2021-11-14 21:29:30', '2020-03-14 21:58:17', NULL, 'admin'),
(2, 'fakultas', '$2y$05$8GdJw3BVbmhN6x2t0MNise7O0xqLMCNAN1cmP6fkhy0DZl4SxB5iO', 'admin fakultas', 'aja', 'adminfakultas@mail.com', '081906515912', 1, '2021-11-14 21:28:01', '2020-03-14 22:00:32', NULL, 'admin fakultas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visa`
--

CREATE TABLE `tbl_visa` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `visa_type` enum('perpanjangan','kedatangan') NOT NULL,
  `visa_number` varchar(10) NOT NULL,
  `date_expired` date NOT NULL,
  `send_notification` date DEFAULT NULL,
  `status_notification` tinyint(1) NOT NULL DEFAULT 0,
  `date_start` date NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `visa_file` varchar(255) NOT NULL DEFAULT 'default.png',
  `cap_file` varchar(255) NOT NULL DEFAULT 'default.png',
  `email` varchar(200) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_visa`
--

INSERT INTO `tbl_visa` (`id`, `first_name`, `visa_type`, `visa_number`, `date_expired`, `send_notification`, `status_notification`, `date_start`, `last_name`, `visa_file`, `cap_file`, `email`, `no_hp`) VALUES
(4, 'ssa', 'kedatangan', '119', '2021-08-02', '2021-08-11', 0, '2021-08-30', 'as', 'default.png', 'default.png', 'destiaartiw@gmail.com', '6262'),
(5, 'testwee', 'kedatangan', 'HB1221', '2021-08-04', '2021-10-27', 1, '2021-08-01', 'BB2', 'maxresdefault.jpg', 'tnt4.jpg', 'aa@mail.com', '0895601281515'),
(6, 'test5', 'perpanjangan', 'HB121', '2021-08-04', '2021-08-04', 1, '2021-08-01', 'BB5', 'default.png', 'default.png', NULL, '0895601281515'),
(7, 'bii5', 'perpanjangan', '8UBA665', '2021-09-08', '2021-08-03', 0, '2021-08-03', 'UU55', 'default.png', 'default.png', NULL, '0895601281515'),
(8, 'aa555', 'perpanjangan', 'aa5', '2021-08-03', '2021-08-24', 0, '2021-08-10', 'aa555', 'default.png', 'default.png', NULL, '0895601281515'),
(9, 'ssa555', 'kedatangan', 'aasaqq55', '2021-08-02', '2021-08-11', 0, '2021-08-30', '55as', 'default.png', 'default.png', NULL, '0895601281515'),
(10, 'test25', 'perpanjangan', 'HB12215', '2021-08-04', '2021-08-04', 15, '2021-08-01', 'BB25', 'default.png', 'default.png', NULL, '0895601281515'),
(11, 'test6', 'perpanjangan', 'HB1216', '2021-08-04', '2021-08-04', 1, '2021-08-01', 'BB6', 'default.png', 'default.png', NULL, '0895601281515'),
(12, 'bii6', 'perpanjangan', '8UBA666', '2021-09-08', '2021-08-03', 0, '2021-08-03', 'UU6', 'default.png', 'default.png', NULL, '0895601281515'),
(13, 'aa6', 'perpanjangan', '6aa', '2021-08-03', '2021-08-24', 0, '2021-08-10', 'aa', 'default.png', 'default.png', NULL, '0895601281515'),
(14, 'ssa', 'kedatangan', 'aasaqq', '2021-08-02', '2021-08-11', 0, '2021-08-30', 'as', 'default.png', 'default.png', NULL, '0895601281515'),
(15, 'test2', 'perpanjangan', 'HB1221', '2021-08-04', '2021-08-04', 1, '2021-08-01', 'BB2', 'default.png', 'default.png', NULL, '0895601281515'),
(16, 'test5', 'perpanjangan', 'HB121', '2021-08-04', '2021-08-04', 1, '2021-08-01', 'BB5', 'default.png', 'default.png', NULL, '0895601281515'),
(17, 'bii5', 'perpanjangan', '8UBA665', '2021-09-08', '2021-08-03', 0, '2021-08-03', 'UU55', 'default.png', 'default.png', NULL, '0895601281515'),
(18, 'aa555', 'perpanjangan', 'aa5', '2021-08-03', '2021-08-24', 0, '2021-08-10', 'aa555', 'default.png', 'default.png', NULL, '0895601281515'),
(19, 'ssa555', 'kedatangan', 'aasaqq55', '2021-08-02', '2021-08-11', 0, '2021-08-30', '55as', 'default.png', 'default.png', NULL, '0895601281515'),
(20, 'test25', 'perpanjangan', 'HB12215', '2021-08-04', '2021-08-04', 15, '2021-08-01', 'BB25', 'default.png', 'default.png', NULL, '0895601281515'),
(21, 'destia1', '', '93939', '2021-10-28', NULL, 0, '2021-10-05', 'handini', 'afiliasi_q4.png', 'afiliasi_q5.png', 'destia@happy5.co', '0895601281515'),
(22, 'destia2', 'perpanjangan', '939391', '2021-10-19', NULL, 0, '2021-10-14', 'handini', 'kalung.jpg', 'logo_sidebar.png', 'destaunique@yahoo.com', '0895601281515'),
(23, '', 'perpanjangan', '', '0000-00-00', '2021-10-27', 1, '0000-00-00', '', 'default.png', 'default.png', NULL, NULL),
(24, '', 'perpanjangan', '', '0000-00-00', '2021-10-27', 1, '0000-00-00', '', 'default.png', 'default.png', NULL, NULL),
(25, '', 'perpanjangan', '', '0000-00-00', '2021-10-27', 1, '0000-00-00', '', 'default.png', 'default.png', NULL, NULL),
(26, '', 'perpanjangan', '', '0000-00-00', '2021-10-27', 1, '0000-00-00', '', 'default.png', 'default.png', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_itk`
--
ALTER TABLE `tbl_itk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_visa`
--
ALTER TABLE `tbl_visa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_itk`
--
ALTER TABLE `tbl_itk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_visa`
--
ALTER TABLE `tbl_visa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
