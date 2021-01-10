-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 06:28 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kshitij`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@ktj.in', 'pass1234');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
  `college_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `college_name`) VALUES
(2, 'A C Tech, Anna University, Chennai'),
(3, 'A D Patel Institute Of Technology, Anand, Gujarat'),
(4, 'A N College'),
(5, 'Aarupadai Veedu Institut, e Of TechnologyPaiyanoor, Tamil Nadu'),
(6, 'ABACUS INSTITUTE OF ENGINEERING & MANAGEMENT,MOGRA,BANDEL'),
(7, 'ABES Engineering College, Ghaziabad'),
(8, 'ABIT, Cuttack, Orissa'),
(9, 'ABV-IIITM, Gwalior'),
(10, 'Academy Of Architecture, Mumbai'),
(11, 'Academy of Business & Engineering Sciences'),
(12, 'Academy Of Management And Information Technology, Bhubaneswar'),
(13, 'Academy Of Technocrats, Berhampur, Orissa'),
(14, 'Academy Of Technology, Hooghly, West Bengal'),
(15, 'Accman Institute Of Management, Greater Noida'),
(16, 'ACE Engineering College, Ghatkesar, Andhra Pradesh'),
(17, 'ACE Engineering College, Hyderabad'),
(18, 'Acharya Institute Of Technology, Bangalore'),
(19, 'Acharya Nagarjuna University,andhra Pradesh'),
(20, 'Acropolis Institute Of Technology And Research, Indore, M.P.'),
(21, 'Adesh Institute Of Engineering And Technology, Faridkot, Punjab'),
(22, 'Aditya Engineering College, Surampalem, Andhra Pradesh'),
(23, 'Aeronautical Engineering College, Dundigal, Andhra Pradesh'),
(24, 'AIIMS, Delhi'),
(25, 'AIIMS, Patna'),
(26, 'AISSMS College Of Engineering Pune'),
(27, 'AITAM, Tekkali, Andhra Pradesh'),
(28, 'Ajay Binay Institute Of Technology, Cuttack, Orissa'),
(29, 'Ajay Kumar Garg Engineering College, Ghaziabad'),
(30, 'Ajmer Institute Of Technology, Ajmer, Rajasthan'),
(31, 'Alagappa Chettiar College Of Engineering And Technology, Karaikudi, Tamil Nadu'),
(32, 'Allahabad Agricultural Institute Deemed University, Allahabad'),
(33, 'Alliance Business School, Bangalore'),
(34, 'Alwar Institute Of Engineering And Technology, Alwar, Rajasthan'),
(35, 'Ambala College Of Engineering And Applied Research, Ambala, Punjab'),
(36, 'Ambedkar Institute Of Technology For Handicapped, Kanpur'),
(37, 'Ambedkar University Delhi'),
(38, 'AMC Engineering College, Bangalore'),
(39, 'Amina Institute Of Technology, Hyderabad'),
(40, 'Amity Business School, Lucknow'),
(41, 'Amity Institute of Nuclear Science & Technology'),
(42, 'Amity Institute of Renewable and Alternate Energy'),
(43, 'Amity Institute of Space Science and Technology'),
(44, 'Amity Institute of Telecom Technology & Management'),
(45, 'Amity Law School, Delhi'),
(46, 'Amity School Of Engineering And Technology, Delhi'),
(47, 'Amity School Of Engineering, Noida'),
(48, 'Amrita College Of Engineering, Amritapuri, Kerala'),
(49, 'Amrita School Of Engineering, Bangalore'),
(50, 'Amrita School Of Engineering, Coimbatore, Tamil Nadu'),
(51, 'Anand Engineering College, Agra'),
(52, 'Andhra University College of Engineering'),
(53, 'Andhra University College of Engineering for Women'),
(54, 'Anil Neerukonda Institute Of Technology And Sciences, Visakhapatnam'),
(55, 'Anna University, Chennai, Tamil Nadu'),
(56, 'Anna University, Coimbatore, Tamil Nadu'),
(57, 'Annamacharya Institute Of Technology And Sciences, Rajampet, Andhra Pradesh'),
(58, 'Ansal Institute Of Technology, Gurgaon'),
(59, 'Anurag Group of Institutions'),
(60, 'Apeejay College Of Engineering, Gurgaon'),
(61, 'Apeejay Institute Of Management, Jalandhar, Punjab'),
(62, 'Apex Institute Of Engineering And Technology, Jaipur'),
(63, 'Apex Institute Of Technology And Management, Bhubaneswar'),
(64, 'Apollo Engineering College, Chennai'),
(65, 'Arasan Ganesan Polytechnic College, Sivakasi, Tamil Nadu'),
(66, 'Army Institute Of Law, Mohali, Punjab'),
(67, 'Army Institute Of Management, Kolkata'),
(68, 'Army Institute Of Technology And Management, Greater Noida'),
(69, 'Army Institute Of Technology, Pune'),
(70, 'Arya College Of Engineering And IT, Jaipur'),
(71, 'Arya School Of Managment & IT, Bhubaneswar, Orissa'),
(72, 'Aryabhatta College'),
(73, 'Aryabhatta Knowledge University'),
(74, 'Aryavart Institute of Technology & Management'),
(75, 'Asansol Engineering College, Asansol, West Bengal'),
(76, 'Ashoka Institute Of Management &Technology, Nashik, Maharashtra'),
(77, 'Asia Pacific Institute Of Information Technology, Panipat, Haryana'),
(78, 'Asian School Of Business Management, Bhubaneswar'),
(79, 'Astral Institute Of Technology And Research, Indore, M.P.'),
(80, 'Asutosh College, Kolkata'),
(81, 'Atharva College Of Engineering, Mumbai'),
(82, 'Audisankara College Of Engineering And Technology, Nellore, Andhra Pradesh'),
(83, 'Auroras Technological And Research Institute, Hyderabad5'),
(84, 'Avanthi Institute Of Engineering & Technology, Visakhapatnam'),
(85, 'Azad Institute Of Engineering And Technology, Lucknow'),
(86, 'B M S College Of Engineering, Bangalore'),
(87, 'B. P. Poddar Institute Of Management & Technology, Kolkata'),
(88, 'B. R. Ambedkar Bihar University'),
(89, 'B.B.S College Of Engineering And Technology, Allahabad'),
(90, 'B.I.T., Sindri, Jharkhand'),
(91, 'B.I.T.M. Santiniketan, West Bengal'),
(92, 'B.I.T.S. Goa'),
(93, 'B.I.T.S. Hyderabad'),
(94, 'B.I.T.S. Pilani'),
(95, 'B.J. Medical College, Ahmedabad'),
(96, 'B.L.D.E.As C.E.T, Bijapur, Karnataka'),
(97, 'B.N. College of Engineering & Technology, Lucknow'),
(98, 'B.P. Poddar Institute Of Management And Technology, Kolkata'),
(99, 'B.P.U.T., Rourkela'),
(100, 'B.V.C. Engineering College, Amalapuram, Andhra Pradesh'),
(101, 'B.V.R.I.T, Narsapur'),
(102, 'Baba Banda Singh Bahadur Engineering College , Fatehgarh Saheb'),
(103, 'BABA INSTITUTE OF TECHNOLOGY AND SCIENCES'),
(104, 'Babu Banarsi Das Institute of Engineering Technology & Research Centre'),
(105, 'Babu Mohan Lal Arya Smarak Engineering College, Agra'),
(106, 'Badruka College Post Graduate Centre, Hyderabad'),
(107, 'Balaji Institute Of Technology And Science ,Narsampet, Warangal'),
(108, 'Balasore College Of Engineering And Technology, Balasore, Orissa'),
(109, 'Banaras Institute Of Engineering & Technology'),
(110, 'Banasthali University, Rajasthan'),
(111, 'Bangalore Institute Of Legal Studies, Bangalore'),
(112, 'Bangalore Institute Of Technology, Bangalore'),
(113, 'Bannari Amman Institute Of Technology, Sathyamangalam, Tamil Nadu'),
(114, 'Bansal College Of Engineering Bhopal (M.P.)'),
(115, 'Bapatla Engineering College, Guntur'),
(116, 'Barkatullah University Institute Of Technology, Bhopal'),
(117, 'BBS College Of Engineering & Technology, Allahabad'),
(118, 'Beant College Of Engineering & Technology, Gurudashpur'),
(119, 'Bengal College Of Engineering & Technology,Durgapur'),
(120, 'Indian Institute of Engineering Science and Technology, Shibpur,Howrah'),
(121, 'Bengal Institute of Technology, Kolkata'),
(122, 'Bhabha Institute of Technology, Kanpur'),
(123, 'Bharat Institute Of Engineering And Technology, Hyderabad'),
(124, 'Bharath Engineering College, Chennai'),
(125, 'Bharathidasan Institute Of Management(BIM), Trichy'),
(126, 'Bharati Vidyapeeth College Of Engineering, Delhi'),
(127, 'Bhawanipur Gujrati Education Society, Kolkata'),
(128, 'Bhilai Institute Of Technology, Bhilai, Chhattisgarh'),
(129, 'Bhoj Reddy College Of Engineering For Women, Hyderabad'),
(130, 'Bhupendra Narayan Mandal University'),
(131, 'Bhutta College Of Engineering And Technology, Ludhiana'),
(132, 'Biff & Bright Computer Academy, Jaipur'),
(133, 'Bikaner Engineering College, Rajasthan'),
(134, 'Birbhum Institute of Engineering and Technology, Suri'),
(135, 'Birla Vishvakarma Mahavidhyala, Vidyanagar'),
(136, 'BIT Meerut, Uttar Pradesh'),
(137, 'BIT Mesra, Jharkhand'),
(138, 'BJB Autonomous College, Bhubaneswar'),
(139, 'BMIT,Jaipur,Rajasthan'),
(140, 'BMS College Of Engineering, Bangalore'),
(141, 'BPIT Rohini, Delhi'),
(142, 'Brainware Business School, Kolkata'),
(143, 'Brainware Group of Institutions'),
(144, 'BRCM College Of Engineering & Technology, Haryana'),
(145, 'BSIT, Hyderabad'),
(146, 'BSK College, Dhanbad'),
(147, 'Budge Budge Institute of Technology'),
(148, 'BUIE, West Bengal'),
(149, 'Bundelkhand Institute of Engineering & Technology'),
(150, 'BV Bhavans Rajaji Vidyashram School, Chennai'),
(151, 'BV Bhoomaraddi College Of Engineering & Technology, Hubli'),
(152, 'C E T, Bhubaneswar'),
(153, 'C V Raman College Of Engineering, Bhubaneswar'),
(154, 'C.C.E.T Chandigarh'),
(155, 'C.D.L.M.E.C,Sirsa'),
(156, 'C.I.T.M,Faridabad,Haryana'),
(157, 'C.R.Reddy College Of Engineering, Andhra Pradesh'),
(158, 'C.S.I.T Durg, Chhattisgarh'),
(159, 'Calcutta Institute Of Engineering & Management, Kolkata'),
(160, 'Calcutta Institute of Technology'),
(161, 'Camellia Institute Of Technology, Madhayamgram'),
(162, 'Campus Law Center, Delhi University'),
(163, 'Catalyst Institute of Management and Advance Global Excellence'),
(164, 'Catalyst Institute of Management and Advance Global Excellence'),
(165, 'CBIT, Hyderabad'),
(166, 'CCSNIAM, Rajasthan'),
(167, 'CEB, Bhubaneswar'),
(168, 'CECRI, Karaikudi, Tamil Nadu'),
(169, 'Central college for Engineering and Management, Raipur'),
(170, 'Central Institute of Plastics Engineering and Technology'),
(171, 'Central Polytechnic College,Chennai'),
(172, 'Centre For Converging Technologies, University Of Rajasthan'),
(173, 'Centurion School Of Rural Enterprise And Management, Parlakhemundi'),
(174, 'Centurion University'),
(175, 'CEPT University, Ahmedabad'),
(176, 'CET, AAI-DU, Allahabad'),
(177, 'Chaitanya Engineering College,Visakhapatnam'),
(178, 'Chalapathi Institute Of Engineering And Technology, Guntur'),
(179, 'Chameli Devi Institute Of Technology And Management, Bhopal'),
(180, 'Chanakya National Law University'),
(181, 'Chandragupt Institute of Management'),
(182, 'Chandragupt Institute of Management'),
(183, 'Channabasaveshwara Institute Of Technology, Bangalore'),
(184, 'Charotar University of Science and Technology, Petlad'),
(185, 'Charotar University of Science and Technology, Petlad'),
(186, 'Chhattisgarh Institute of Technology, Korba'),
(187, 'Chitkara Institute Of Engineering And Technology, Rajpura(Punjab)'),
(188, 'Chouksey Engineering College, Bilaspur'),
(189, 'Christ University, Bangalore'),
(190, 'Christu Jyothi Institute Of Technology And Science, Jangaon'),
(191, 'CIET Raipur'),
(192, 'CITM, Faridabad'),
(193, 'Cluster Innovation Centre, delhi university'),
(194, 'CMR Group of Institutions'),
(195, 'CMR Institute Of Technology, Bangalore'),
(196, 'College Of Agricultural Engineering, PAU Ludhiana'),
(197, 'College Of Business, Rourkela'),
(198, 'College Of Engineering , Amravati'),
(199, 'College Of Engineering , Trivandrum'),
(200, 'College Of Engineering & Technology, Moradabad'),
(201, 'College of Engineering and Management, Kolaghat'),
(202, 'College Of Engineering, Chennai'),
(203, 'College Of Engineering, Nanded'),
(204, 'College Of Engineering, Pune'),
(205, 'College Of Engineering, Roorkee'),
(206, 'College Of Food Science & Technology,ANGRAU'),
(207, 'College of Science & Engineering Jhansi'),
(208, 'College Of Science Technology And Agriculture,Ballygunge,Kolkata'),
(209, 'College Of Technology, Pantnagar'),
(210, 'Compucom Institute Of It & Management,Jaipur,Rajasthan'),
(211, 'Crescent Engineering College, Chennai'),
(212, 'CSJM University Institute of Engineering & Technology'),
(213, 'CSJM University Jaipur'),
(214, 'CTAE, Udaipur, Rajasthan'),
(215, 'Cummins College Of Engineering For Women'),
(216, 'CUSAT, Kerala'),
(217, 'CVR College of Engineering,hyderabad'),
(218, 'CVSR, Hyderabad'),
(219, 'D N Patel College Of Engineeering, Shahada, Maharashtra'),
(220, 'D Y Patil College Of Engineering, Pune'),
(221, 'D.M.S.S.V.H. College Of Engineering, Machilipatnam'),
(222, 'DA-IICT, Gandhinagar'),
(223, 'Dadi Institute of Engineering and Technology, Vizag'),
(224, 'DAITM , Kolkata'),
(225, 'Daulat Ram College'),
(226, 'DAV College Of Engineering, Jalandhar'),
(227, 'Dayal Bagh College, Agra'),
(228, 'Dayanand College, Hisar, Haryana'),
(229, 'Dayanand Sagar College Of Engineering, Bangalore'),
(230, 'DDIT, Nadiad'),
(231, 'Deen Dayal Upadhyaya College'),
(232, 'Dehradun Institute Of Technology, Dehradun'),
(233, 'Delhi College of Arts and Commerce'),
(234, 'Delhi College Of Engineering'),
(235, 'Delhi School Of Economics, Delhi'),
(236, 'Delhi Technological University'),
(237, 'Deptartment Of Law Calcutta University, Kolkata'),
(238, 'Deptartment Of Laws, Punjab University, Chandigarh'),
(239, 'DES Law College, Pune'),
(240, 'Deshbandu college'),
(241, 'Dev Bhoomi Institute of Technology,Dehradun'),
(242, 'Development Management Institute'),
(243, 'Dhanalakshmi College Of Engineering, Chennai'),
(244, 'Dhaneswar Rath Institute Of Engineering & Management Studies, Cuttack'),
(245, 'Dharmsinh Desai University, Nadiad'),
(246, 'Digvijay Mahavidyalaya, Rajnandgaon, Chhattisgarh'),
(247, 'DIMAT Raipur'),
(248, 'DJ Sanghvi College Of Engineering,Mumbai'),
(249, 'Don Bosco School, Agartala'),
(250, 'Don Bosco School,Liluah'),
(251, 'Doon Valley Institute Of Engineering & Technology, Kurukshetra'),
(252, 'Dr M C Saxena College of Engineering & Technology'),
(253, 'Dr S and SS Ghandhy Government Engineering College, Surat'),
(254, 'Dr. Ambedkar Institute Of Technology, Bangalore'),
(255, 'Dr. B.C.Roy Engineering College, Durgapur'),
(256, 'Dr. CV Raman University, Bilaspur'),
(257, 'Dr. J.J. Magdum College Of Engineering, Jaysingpur'),
(258, 'Dr. K. N. Modi Institute of Engineering & Technology'),
(259, 'Dr. M.C. Saxena College Of Engineering And Technology, Lucknow'),
(260, 'Dr. MGR Educational & Research Institute, Chennai'),
(261, 'Dr. Ram Manohar Lohiya National Law University, Lucknow'),
(262, 'Dr. sudhir chandra sur degree engineering college'),
(263, 'Dr.B.R.Ambedkar National Institute Of Technology, Jalandhar'),
(264, 'Dr.Mahalingam College Of Engineering & Technology, Pollachi, Tamil Nadu'),
(265, 'DRK Institute Of Science And Technology, Hyderabad'),
(266, 'Dronacharya College of Engineering,Gurgaon'),
(267, 'Dumkal Institute Of Technology, Murshidabad, West Bengal'),
(268, 'Durgapur Institute Of Advanced Technology & Management, Durgapur'),
(269, 'Eastern Academy Of Science & Technology, Bhubaneswar'),
(270, 'Educational Multimedia Research Centre, Indore'),
(271, 'F.G.I.E.T., Rae Bareli'),
(272, 'Faculty Of Architecture, Lucknow'),
(273, 'Faculty Of Engineering & Technology, Raja Balwant Singh College, Agra'),
(274, 'Faculty Of Engineering And Technology Jadavpur University'),
(275, 'Faculty Of Law BHU, Varanasi'),
(276, 'Faculty Of Law Mumbai University, Mumbai'),
(277, 'Father Agnel, Mumbai'),
(278, 'FMS, Delhi'),
(279, 'FORE School Of Management Studies, Delhi'),
(280, 'Fr. C. R .I.T, Vashi'),
(281, 'Future Institute of Engineering and Management'),
(282, 'Future Institute Of Engineering And Management, Kolkata'),
(283, 'G D Rungta College Of Engineering & Technology, Bhilai'),
(284, 'G H Patel College Of Engineering And Technology, Anand'),
(285, 'G M Institute of Technology, Davangere'),
(286, 'G. Narayanamma Institute Of Technology And Science, Hyderabad'),
(287, 'G.B. Pant Engg. College, Pauri-Garhwal'),
(288, 'G.H Raisoni College Of Engineering, Nagpur'),
(289, 'G.H.I.T.M. Puri'),
(290, 'G.I.E.T Gunupur'),
(291, 'G.I.F.T., Bhubaneswar'),
(292, 'G.I.T.A, Bhubaneswar'),
(293, 'G.M.R Institute Of Technology,Rajam'),
(294, 'G.Pullareddy Engineering College, Kurnool'),
(295, 'Galgotia College of Engineering & Technology, greater noida'),
(296, 'Gandhi Engineering College, Bhubaneswar'),
(297, 'Garden City College, Bangalore'),
(298, 'Gargi College'),
(299, 'Gautam Buddha University, Greater Noida'),
(300, 'Gaya Engineering College, Gaya'),
(301, 'Gayatri Vidya Parishad School of Engineering, Visakhapatnam'),
(302, 'GBU School of Engineering'),
(303, 'GBU School of Information & Communication Technology'),
(304, 'GCT Coimbatore'),
(305, 'GEC, Mysore'),
(306, 'GEC, Raipur'),
(307, 'GEC, Thrissur'),
(308, 'Geethanjali College Of Engineering And Technology, Hyderabad'),
(309, 'Genba Sopanrao Moze College Of Engineering, Yerwada'),
(310, 'GGITS, Jabalpur'),
(311, 'Ghaziabad Institute of Management & Technology'),
(312, 'Ghousia College Of Engineering, Karnataka'),
(313, 'Gian Jyoti Institute Of Management & Technology, Mohali'),
(314, 'GIIT, Brahmapur'),
(315, 'GIT, Jaipur'),
(316, 'Gitam University,Visakhapatnam'),
(317, 'GITS, Udaipur, Rajasthan'),
(318, 'GLA College, Mathura'),
(319, 'GLBITM, Greater Noida'),
(320, 'Global Academy Of Technology, Bangalore'),
(321, 'GNIOT Group, Noida'),
(322, 'Gokaraju Rangaraju Institute Of Engineering And Technology, Miyapur'),
(323, 'Government Collage Of Enggineering, Aurangabad'),
(324, 'Government College Of Engineering And Ceramic Technology, Kolkata'),
(325, 'Government College Of Engineering, Tirunelveli'),
(326, 'Government Engineering College, Ajmer, Rajasthan'),
(327, 'Government Engineering College, Bilaspur, Chhattisgarh'),
(328, 'Government Engineering College, Jaffarpur'),
(329, 'Government Engineering College, Kozhikode'),
(330, 'Government Engineering College, Raipur, Chhattisgarh'),
(331, 'Government Law College, Mumbai'),
(332, 'Goyal Institute of Technology and Management, Lucknow'),
(333, 'Great Lakes Institute Of Management, Chennai'),
(334, 'GRIET, Hyderabad'),
(335, 'Gudlavalleru College of Engineering'),
(336, 'Gujarat National Law University, Gandhinagar'),
(337, 'Guru Ghasidas University, Bhilai'),
(338, 'Guru Nanak Dev Engineering College, Ludhiana'),
(339, 'Guru Nanak Dev University, Amritsar (Punjab)'),
(340, 'Guru Nanak Engineering College, Rangareddy'),
(341, 'Guru Nanak Institute Of Technology'),
(342, 'Guru Premsukh College Of Engineering, Delhi'),
(343, 'Guru Premsukh College Of Engineering, Delhi'),
(344, 'Guru Tegh Bahadur Institute Of Technology, Delhi'),
(345, 'Gurunanak Institute Of Technology, Sodepur'),
(346, 'Gyan Ganga Institute of Technology and Management, Bhopal'),
(347, 'Gyan Vihar School Of Engineering & Technology , Jaipur'),
(348, 'GZSCET Bhatinda'),
(349, 'H R Institute Of Technology, Ghaziabad'),
(350, 'Haldia Institute Of Technology, Kolkata'),
(351, 'Harcourt Butler Technological Institute Kanpur'),
(352, 'HCTM Technical Campus'),
(353, 'Heramba Chandra College,Kolkata'),
(354, 'Heritage Institute Of Technology, Kolkata'),
(355, 'Hidayatullah National Law University, Raipur'),
(356, 'HIMCS, Farah, Mathura'),
(357, 'Hindu College, Delhi'),
(358, 'Hindustan College Of Science And Technology,Mathura'),
(359, 'Hindustan Institute Of Technology And Science, Chennai'),
(360, 'Hindustan Institute Of Technology, Greater Noida'),
(361, 'Hitkarini College of Engineering and Technology,jabalpur'),
(362, 'HITS Hyderabad'),
(363, 'Hooghly Engineering & Technology College, Hooghly'),
(364, 'I.E.R.T Allahabad'),
(365, 'I.G.I.T, Sarang'),
(366, 'I.M.T, Ghaziabad'),
(367, 'I.T.E.R, Bhubaneswar'),
(368, 'I.T.M Gwalior'),
(369, 'IACR, Rayagada'),
(370, 'IBS Gurgaon'),
(371, 'IBS Mumbai'),
(372, 'ICFAI Institute Of Science And Technology, Hyderabad'),
(373, 'ICFAI University, Dehradun'),
(374, 'Ideal Institute Of Engineering College,Kalyani'),
(375, 'Ideal Institute of technology, Ghaziabad'),
(376, 'IEC College Of Engineering And Technology, Greater Noida'),
(377, 'IEET, Baddi'),
(378, 'IES IPS Academy, Indore, M.P.'),
(379, 'IET DAVV, Indore'),
(380, 'IET Khandari,agra'),
(381, 'IET,Bundelkhand University'),
(382, 'IFMR, Chennai'),
(383, 'IFTM School of Computer Engineering & Applications'),
(384, 'IFTM School of Engineering & Technology'),
(385, 'IFTM School of Social Science'),
(386, 'IIFM, Bhopal'),
(387, 'IIIT Allahabad'),
(388, 'IIIT Bangalore'),
(389, 'IIIT Bhubaneswar'),
(390, 'IIIT Bhubaneswar'),
(391, 'IIIT Hyderabad'),
(392, 'IIIT Jabalpur'),
(393, 'IIIT Kolkata'),
(394, 'IIIT Sricity'),
(395, 'IIITD&M,Kancheepuram'),
(396, 'IIITM, Gwalior'),
(397, 'IILM Noida'),
(398, 'IIM Ahmedabad'),
(399, 'IIM Bangalore'),
(400, 'IIM Calcutta'),
(401, 'IIM Indore'),
(402, 'IIM Kozhikode'),
(403, 'IIM Lucknow'),
(404, 'IIMET Jaipur'),
(405, 'IISER Kolkata'),
(406, 'IISER Mohali'),
(407, 'IIST, Tiruvananthapuram'),
(408, 'IIT BHU, Varanasi.'),
(409, 'IIT Bhubaneswar'),
(410, 'IIT Bombay'),
(411, 'IIT Delhi'),
(412, 'IIT Gandhinagar'),
(413, 'IIT Hyderabad'),
(414, 'IIT Indore'),
(415, 'IIT Kanpur'),
(416, 'IIT Kharagpur'),
(417, 'IIT Madras'),
(418, 'IIT Madras'),
(419, 'IIT Mandi'),
(420, 'IIT Patna'),
(421, 'IIT Rajasthan'),
(422, 'IIT Roorkee'),
(423, 'IIT Ropar'),
(424, 'IITE, Ahmedabad'),
(425, 'IITT College Of Engineering, Nawanshehar, Punjab'),
(426, 'ILS Law College, Pune'),
(427, 'IMI, New Delhi'),
(428, 'IMPS, Malda'),
(429, 'IMR, Jalgaon'),
(430, 'IMS Ghaziabad'),
(431, 'IMT Nagpur'),
(432, 'India Gandhi National Open University, Bhubaneswar'),
(433, 'Indian Agricultural Research Institute'),
(434, 'Indian Institute of Foreign Trade'),
(435, 'Indian Institute of Management'),
(436, 'Indian Maritime University'),
(437, 'Indian Statistical Institute, Kolkata'),
(438, 'INDIRA GANDHI DELHI TECHNICAL UNIVERSITY FOR WOMEN,DELHI'),
(439, 'Indraprastha Institute of Information Technology, delhi iiit, delhi'),
(440, 'Institute Of Aeronautical Engineering, Hyderabad'),
(441, 'Institute Of Company Secretaries Of India, Delhi'),
(442, 'Institute Of Engineering & Management, Kolkata'),
(443, 'Institute of Engineering & Technology Lucknow'),
(444, 'Institute of Engineering and Technology, Ahmedabad'),
(445, 'Institute of Infrastructure, Technology, Research and Management, Ahmedabad'),
(446, 'Institute Of Professional Education And Research Bhopal'),
(447, 'Institute Of Technology And Marine Engineering, West Bengal'),
(448, 'IPTG, Gandhinagar'),
(449, 'ISB, Salt Lake, Kolkata'),
(450, 'ISM, Dhanbad'),
(451, 'ITM Vocational University, Vadodara'),
(452, 'ITS Ghaziabad'),
(453, 'J.B.Institute Of Engineering & Technology, Hyderabad'),
(454, 'J.D.C.T., Indore'),
(455, 'J.I.E.T, Cuttack'),
(456, 'J.T.M.C.O.E Faizpur'),
(457, 'Jabalpur Engineering College, Jabalpur'),
(458, 'Jacob School of Biotechnology & Bio-Engineering'),
(459, 'Jadavpur University, Kolkata'),
(460, 'Jagad Guru Dattatraya College Of Technology, Indore'),
(461, 'Jagannath Gupta Institute Of Engineering & Technology, Jaipur'),
(462, 'Jagannath Institute For Technology & Management, Orissa'),
(463, 'Jagannath International Management School (Vasant Kunj Branch)(GGSIPU)'),
(464, 'Jai Narayan College of Technology, Bhopal'),
(465, 'Jai Prakash University'),
(466, 'Jaipur Engg College And Research Centre, Jaipur'),
(467, 'Jaipuria Institute Of Management, Jaipur'),
(468, 'Jalpaiguri Government College, Jalpaiguri'),
(469, 'Jamia Hamdard'),
(470, 'Jamia Millia Islamia, Delhi'),
(471, 'Jamnalal Bajaj Management College, Mumbai'),
(472, 'Jawaharlal Nehru University, New Delhi'),
(473, 'Jayaraj Chelladurai College, Madurai'),
(474, 'Jaypee Institute Of Engineering & Technology, Guna, M.P'),
(475, 'Jaypee Institute Of Information Technology, Noida'),
(476, 'Jaypee University Of Information And Technology, Solan'),
(477, 'Jesus and Mary College'),
(478, 'JIET, Cuttack'),
(479, 'JIS College Of Engineering, Kalyani'),
(480, 'JK Institute of Engineering, Bilaspur'),
(481, 'JMIT Radaur'),
(482, 'JNTU Hyderabad'),
(483, 'JNTU Kakinada'),
(484, 'JNTU Karimnagar'),
(485, 'Joginpally B.R.Engineering College, Hyderabad'),
(486, 'JSPM\'s Jayawantrao Sawant College of Engineering'),
(487, 'JSS Academy Of Technical Education, Bangalore'),
(488, 'JSS Academy Of Technical Education, Noida'),
(489, 'JSSMC, Mysore'),
(490, 'K N S Institute Of Technology, Bangalore'),
(491, 'K. J. Somaiya'),
(492, 'K.D.K.C.E., Nagpur'),
(493, 'K.I.S.D, Bhubaneshwar'),
(494, 'K.L.College Of Engineering, Vijayawada'),
(495, 'K.L.E. Societys College Of Engineering And Technology, Belgaum, Karnataka'),
(496, 'K.L.N.College Of Engineering,Madurai'),
(497, 'K.S. Rangasamy College Of Technology, Tiruchengode'),
(498, 'Kakatiya Institute Of Technology And Science, Warangal'),
(499, 'Kalinga Institute Of Industrial Technology,Bhubaneswar'),
(500, 'Kalyani Government College, Kalyani'),
(501, 'Kalyani Government Engineering College (KGEC)'),
(502, 'Kameshwar Singh Darbhanga Sanskrit University'),
(503, 'Kamla Nehru Institute Of Technology, Sultanpur'),
(504, 'Kamla Raheja Vidyanidhi Institute For Architecture, Mumbai'),
(505, 'Kanchi Pallavan Engineering College, Chennai, Tamil Nadu'),
(506, 'Kanpur Institute Of Technology(KIT), Kanpur'),
(507, 'Kaushik College Of Engineering, Vishakapatnam'),
(508, 'Kavikulguru Institute Of Technology & Science(WTS), Nagpur'),
(509, 'KC College of Engineering, Thane'),
(510, 'KEC, Bhubaneswar'),
(511, 'KIET,Kakinada'),
(512, 'KIIT College Of Engineering, Gurgaon'),
(513, 'Kirodimal Institute of Technology, Raigarh'),
(514, 'Konark Institute Of Science And Technology,Bhubaneswar'),
(515, 'Kongu College Of Engineering, Erode, Tamil Nadu'),
(516, 'Koustuv Institute Of Technology,Bhubaneswar'),
(517, 'KPCMCH, Jadavpur'),
(518, 'Krishna Engineering College,Ghaziabad'),
(519, 'Krishna Institute Of Engineering And Technology, Ghaziabad'),
(520, 'Krupajal Engineering College, Bhubaneswar'),
(521, 'Kumaraguru College Of Technology, Coimbatore'),
(522, 'L.S.Raheja School Of Architecture, Mumbai'),
(523, 'Lady Shri Ram College'),
(524, 'Laki Reddy Bali Reddy College Of Engineering, Andhra Pradesh'),
(525, 'Lakshi Chand Institute of Technology, Bilaspur'),
(526, 'Lakshmi Institute Of Technology, Indore'),
(527, 'Lakshmi Narain College Of Technology, Bhopal'),
(528, 'Lal Bahadur Shastri Institute Of Management, New Delhi'),
(529, 'Laxminarayan Institute Of Technology, Nagpur'),
(530, 'LCET, Ludhiana'),
(531, 'LD College of Engineering, Ahmedabad'),
(532, 'LDRP Institute of Technology and Research, Gandhinagar'),
(533, 'LIBA,Chennai'),
(534, 'Lingayas Institute Of Management And Technology,Faridabad'),
(535, 'LIT, Nagpur'),
(536, 'LNCT,Indore'),
(537, 'Lokmanya Tilak College Of Engineering,Mumbai'),
(538, 'Lovely Institute Of Technology, Jalandhar'),
(539, 'Lovely Professional University, Phagwara(Punjab)'),
(540, 'Loyola,Chennai'),
(541, 'LS Raheja College, Mumbai'),
(542, 'Lukhdhirji Engineering College, Morbi'),
(543, 'M A College Of Engineering,Kothamnagalam'),
(544, 'M G I T , Hyderabad'),
(545, 'M P Christian College Of Engineering & Technology, Bhilai'),
(546, 'M.A.I.T, Delhi'),
(547, 'M.A.N.I.T , Bhopal'),
(548, 'M.B.M.Engineering Collage,Jodhpur'),
(549, 'M.C.K.V.I.E., Kolkata'),
(550, 'M.E.R.I., Kolkata'),
(551, 'M.H.Saboo Siddik College Of Engineering, Mumbai'),
(552, 'M.I.E.T Nagpur'),
(553, 'M.I.E.T, Bhubaneswar'),
(554, 'M.I.T,Bishnupur(W.B.)'),
(555, 'M.I.T.S Gwalior'),
(556, 'M.J.C.E.T, Hyderabad'),
(557, 'M.M Engeering College Mullana (Ambala)'),
(558, 'M.N.I.T, Jaipur'),
(559, 'M.S.Ramaiah Institute Of Technology, Bangalore'),
(560, 'Madhav Institute Of Technology & Science, Gwalior'),
(561, 'Madras Institute Of Technology, Anna University'),
(562, 'MAEERs Maharashtra Academy Of Engineering(Alandi),Pune'),
(563, 'Magadh Mahila College, Patna'),
(564, 'Mahakal institute of technology,Ujjain'),
(565, 'Maharaj Vijayaram Gajapathi Raj College Of Engineering, Vizianagaram'),
(566, 'Maharaja Agrasen Institute of technology'),
(567, 'Maharaja Engineering College,Avinashi'),
(568, 'Maharaja Prithivi Engineering College, Avinashi, Coimbatore'),
(569, 'Maharaja Sayyajirao University, Vadodra'),
(570, 'Maharaja Surajmal Institute Of Technology,Delhi'),
(571, 'Maharana Pratap College Of Technology, Gwalior'),
(572, 'Maharashtra Institute Of Technology, Pune'),
(573, 'Maharishi Arvind Institute Of Engineering And Technology, Jaipur'),
(574, 'Mahatma Gandhi Mission?s College of Management & Technology'),
(575, 'Mahaveer Institute Of Science And Technology, Keshogiri'),
(576, 'Mahavir Institute Of Engineering & Technology, Bhubaneswar'),
(577, 'Mailam Engineering College'),
(578, 'Maitreyi College'),
(579, 'Malla Reddy Institute Of Technology, Hyderabad'),
(580, 'Malout Institute Of Management And Information Technology,Malout,Punjab'),
(581, 'MANAGE, HYDERABAD'),
(582, 'Management Development Institute, Gurgaon'),
(583, 'Manav Rachna College Of Engineering, Faridabad'),
(584, 'Manipal Institute Of Technology , Manipal'),
(585, 'Manipal Institute Of Technology, Sikkim.'),
(586, 'MATS University, Raipur'),
(587, 'Medi-caps Institute Of Technology & Management, Indore'),
(588, 'Meenakshi Sundararajan Engineering College, Chennai'),
(589, 'Meghnad Saha Institute Of Technology, Kolkata'),
(590, 'MES College Of Engineering, Kuttippuram'),
(591, 'MEWAR UNIVERSITY, GANGRAR, CHITTORGARH'),
(592, 'MIC College Of Technology, Vijayawada'),
(593, 'Miranda House, Delhi University'),
(594, 'Mirza Ghalib College,Gaya'),
(595, 'MITCOE,PUNE'),
(596, 'MITM, Indore'),
(597, 'MITS,Rayagada,Orissa'),
(598, 'Mittal Group of Institutes, Bhopal'),
(599, 'MJCET, Hyderabad'),
(600, 'MLR Institute Of Technology, Hyderabad'),
(601, 'MLSU,Rajasthan'),
(602, 'MMM Engineering College, Gorakhpur'),
(603, 'MNIT Allahabad'),
(604, 'Model Engineering College, Cochin'),
(605, 'Modern Education Societys College Of Engineering Pune'),
(606, 'Modi Institute Of Technology,Laxmangarh,Rajasthan'),
(607, 'Mohamed Sathak A.J.College Of Engineering, Chennai'),
(608, 'MP Christian College Of Engineering And Technology, Bhilai'),
(609, 'MPCT Gwalior'),
(610, 'MSU, Tirunelveli'),
(611, 'Mudra Institute Of Communication Ahmedabad'),
(612, 'Murshidabad College Of Engineering And Technology, Berhampore'),
(613, 'MVGR College Of Engg'),
(614, 'MVSR Engineering College, Ranga Reddy'),
(615, 'N.I.E.C, LUCKNOW'),
(616, 'N.I.E.T. Sattennapalli'),
(617, 'N.I.F.F.T Ranchi'),
(618, 'N.I.S.T ,Berhampur ,Orissa'),
(619, 'N.I.T Bhopal'),
(620, 'N.I.T Jalandhar'),
(621, 'N.I.T Jamshedpur'),
(622, 'N.I.T Kurukshetra'),
(623, 'N.I.T Patna'),
(624, 'N.I.T Raipur'),
(625, 'N.I.T Rourkela'),
(626, 'N.I.T Warangal'),
(627, 'N.I.T. Calicut'),
(628, 'N.I.T. Durgapur'),
(629, 'N.I.T. Tiruchirapalli'),
(630, 'N.I.T.K. Surathkal'),
(631, 'Nalanda Institute Of Technology,Bhubaneswar'),
(632, 'Nalanda Open University'),
(633, 'Nalla Malla Reddy College Of Engineering, Hyderabad'),
(634, 'NALSAR University Of Law, Hyderabad'),
(635, 'Nandha Engineering College,Erode'),
(636, 'Naraina Group of Institutions, Kanpur'),
(637, 'Narasaraopet Engineering College,Narasaraopet,Andhra Pradesh'),
(638, 'Narula Institute Of Technology, Kolkata'),
(639, 'National Engineering College,Kovilpatti'),
(640, 'National Institute of Fashion Technology'),
(641, 'national institute of fashion technology, delhi'),
(642, 'National Institute Of Industrial Engineering(NITIE),Mumbai'),
(643, 'National Institute Of Pharmaceutical Education And Research,Mohali'),
(644, 'National Institute of Science and Technology,Brahmapur'),
(645, 'National Law Institute University, Bhopal'),
(646, 'National Law School Of India University, Bangalore'),
(647, 'National Law University, Bangalore'),
(648, 'National Law University, Jodhpur'),
(649, 'National Power Training Institute(ER),Durgapur'),
(650, 'National School of Drama'),
(651, 'Navrachana University, Vadodara'),
(652, 'Nehru College Of Aeronautics And Applied Sciences,Coimbatore'),
(653, 'Neotia Institute Of Technology Management And Science'),
(654, 'Netaji Subhas Institute of Technology'),
(655, 'Netaji Subhash Engineering College, Kolkata'),
(656, 'Netaji Subhash Institute Of Technology, Delhi'),
(657, 'New Govt Polytechnic'),
(658, 'NIASoM,Pune'),
(659, 'Nikhil Institute Of Engineering And Management, Mathura'),
(660, 'NIPER'),
(661, 'NIPER , MOHALI'),
(662, 'NIRMA, Ahmedabad'),
(663, 'NITTE Meenakshi Institute Of Technology,Bangalore'),
(664, 'NL Dalmia Management Institute Of Studies And Research, Mumbai'),
(665, 'NM Institute Of Engineering And Technology,Bhubaneswar'),
(666, 'NMIMS MPSTME Shirpur'),
(667, 'Noida Institute of Engineering and Technology'),
(668, 'NPTI Bangalore'),
(669, 'Nri Institute Of Information Science And Technology,Bhopal'),
(670, 'NSHM, Durgapur'),
(671, 'O.E.C. Bhubaneswar'),
(672, 'O.I.S.T, Indore'),
(673, 'OPJIT Raigarh'),
(674, 'Oriental Institute Of Technology And Science, Bhopal'),
(675, 'Orissa School Of Mining Engineering,Keonjhar'),
(676, 'Osmania University College Of Engineering, Hyderabad'),
(677, 'P V P Siddhartha Institute Of Technology, Vijayawada'),
(678, 'P.A.College Of Engineering, Dakshina Kannada, Karnataka'),
(679, 'P.E.T Engineering College , Vallioor'),
(680, 'P.I.E.T. Nagpur'),
(681, 'P.S.G. College Of Technology, Coimbatore'),
(682, 'P.S.R.Engineering College,Sivakasi'),
(683, 'P.U Chandigarh'),
(684, 'Padmanava College Of Engineering, Rourkela'),
(685, 'Padmasri Dr.B.V.Raju Institute Of Technology, Naraspur, Andhra Pradesh'),
(686, 'Pandit Deendayal Petroleum University, Gandhinagar'),
(687, 'Panimalar Engineering College, Chennai'),
(688, 'Parala Maharaja Engineering College,Berhampur'),
(689, 'Park College Of Engineering & Technology, Coimbatore'),
(690, 'PARUL INSTITTUTE OF ENGINEERING AND TECHNOLOGY,LIMDA'),
(691, 'Patel College Of Science & Technology, Bhopal'),
(692, 'PCEA , Nagpur'),
(693, 'PDPM IIITDM , Jabalpur'),
(694, 'Pearl Academy'),
(695, 'PEC Chandigarh'),
(696, 'PES College Of Engineering, Mandya'),
(697, 'PES Institute Of Technology, Bangalore'),
(698, 'PICT, Pune'),
(699, 'PIET College, Rourkela, Orissa'),
(700, 'PIET, Jaipur'),
(701, 'Pillai Institute Of Technology, Panvel, Mumbai'),
(702, 'PMB Gujarati Science College Indore'),
(703, 'PMB Gujarati Science College Indore'),
(704, 'PMCA Cuttack'),
(705, 'PMR Institute Of Technology, Chennai'),
(706, 'Pondicherry Engineering College, Pondicherry'),
(707, 'Pondicherry Engineering College, Pondicherry'),
(708, 'Poornima College Of Engineering, Jaipur'),
(709, 'Praffulla Chandra College [South City Kolkata]'),
(710, 'Pragati Engineering College, Kakinada'),
(711, 'Prakasam Engineering College, Kandukur'),
(712, 'Praxis Business School, Kolkata'),
(713, 'Presidency College'),
(714, 'Prime Academy, Chennai'),
(715, 'Princeton College Of Engineering & Technology,Rangareddy'),
(716, 'Principal L.N.Welingkar Institute Of Management, Development And Research'),
(717, 'Priyadarshini College of Computer Sciences'),
(718, 'Prof. Ram Meghe Institute of Technology and Research, Badnera'),
(719, 'Prof. Ram Meghe Institute Of Technology,Amravati'),
(720, 'PRRM Engineering College, Shabad'),
(721, 'PSIT COLLEGE OF ENGINEERING ,KANPUR'),
(722, 'Pune Vidhyarthi Grihas College Of Engineering And Technology, Pune'),
(723, 'Punjab Agricultural University, Ludhiana'),
(724, 'Punjab College Of Technical Education, Baddowal'),
(725, 'Punjabi University, Patiala'),
(726, 'Purushottam Institute Of Engineering & Technology, Rourkela'),
(727, 'Pydah College Of Engineering & Technology, Visakhapatnam'),
(728, 'R V R & J C College Of Engineering, Guntur'),
(729, 'R.C.E.T Bhilai Chhattisgarh'),
(730, 'R.K.M.V.C., Kolkata'),
(731, 'R.M.K. Engineering College, Thiruvallur'),
(732, 'R.P.S.I.T. Patna Bihar'),
(733, 'R.V.S College Of Engineering And Technology, Bangalore'),
(734, 'R.V.S.C.E.T,Jamshedpur'),
(735, 'Rachna College Of Architecture, Mumbai'),
(736, 'Radharaman Institute Of Technology & Science, Bhopal'),
(737, 'Raghu Engineering College,Visakhapatnam'),
(738, 'Raghu Institute of Technology, Vishakapattanam'),
(739, 'Raj Kumar Goel Institute Of Technology, Ghaziabad'),
(740, 'Rajagiri College Of Engineering , Cochin'),
(741, 'Rajalakshmi Engineering College, Chennai'),
(742, 'Rajdhani College'),
(743, 'Rajendra Agricultural University'),
(744, 'Rajiv Gandhi Aviation Academy, Hyderabad'),
(745, 'Rajiv Gandhi College Of Engineering & Research, NAgpur'),
(746, 'Rajiv Gandhi College Of Engineering, Sriperumbudur, Anna Univesity'),
(747, 'Ramanujan College'),
(748, 'Ramgarhia College Of Engineering And Technology,Phagwara'),
(749, 'Ramjas College'),
(750, 'Ramnarain Ruia College, Mumbai'),
(751, 'Ravenshaw University,Cuttack,Orissa,India'),
(752, 'Rayat And Bahra College Of Law,Kharar Chandigarh'),
(753, 'Rayat Institute Of Engineering & I.T., Railmajra'),
(754, 'RCC Institute Of Information Technology, Kolkata'),
(755, 'REC BHOPAL'),
(756, 'RGMCET, Hyderabad'),
(757, 'RIET Jaipur'),
(758, 'RIMT-IMCT, Mandi Gobindgarh'),
(759, 'RIT Indore'),
(760, 'RIT Raipur, Chhattisgarh'),
(761, 'RIT,Ganjam'),
(762, 'Ritambara College, Mumbai'),
(763, 'RITS, Bhopal'),
(764, 'RKDF Institute Of Science & Technology, Bhopal'),
(765, 'RNS Institute of Technology, Bangalore'),
(766, 'Roland Institute Of Technology,Berhampur'),
(767, 'Rungta College Of Engineering & Technology,Bhilai'),
(768, 'RVCE, Bangalore'),
(769, 'Ryat Insitute Of Technology , Ropar'),
(770, 'S D Bansal College Of Technology, Indore'),
(771, 'S.E.S Polytechnic,Solapur'),
(772, 'S.G.G.S.I.E. & T. ,Nanded'),
(773, 'S.G.S.I.T.S., Indore'),
(774, 'S.I.E.T,Dhenkanal'),
(775, 'S.M.S, Varanasi'),
(776, 'S.N.S College Of Technology, Coimbatore'),
(777, 'S.P.Memorial Institute Of Technology, Kaushambhi'),
(778, 'S.R.I.T Jabalpur'),
(779, 'S.R.M.C.E.M. Lucknow'),
(780, 'S.U.S.C.E.T, Tangori, Punjab'),
(781, 'SAE Technology, Delhi'),
(782, 'Sagar Institute Of Science And Technology,Bhopal'),
(783, 'SAHYADRI COLLEGE OF ENGINEERING AND MANAGEMENT,Manglore'),
(784, 'Samrat Ashok Technological Institute,Vidisha (Madhya Pradesh)'),
(785, 'Sanghvi Institute Of Management & Sciences, Indore'),
(786, 'SANKETIKA VIDYA PARISHAD ENGINEERING COLLEGE, VISHAKAPATTANAM'),
(787, 'Sant Baba Bhag Singh Institute Of Engineering And Technology,Padhiana'),
(788, 'Sant Samarth Engineering College -Bandlaguda, Hyderabad.'),
(789, 'Sardar Vallabhbhai Institute of Technology, Anand'),
(790, 'Sardar Vallabhbhai National Institute Of Technology, Surat'),
(791, 'Sardar Vallabhbhai Patel Institute Of Technology,Vasad'),
(792, 'Saroj Institute of Technology and Management'),
(793, 'Saroj Institute Of Technology And Management, Lucknow'),
(794, 'Sarvajanik College of Engineering and Technology, Surat'),
(795, 'SASTRA University, Thanjavur'),
(796, 'Satya Sai Engineering College, Balasore, Orissa'),
(797, 'Satyam Learning Campus Institute Of Engineering And Technology, Hyderabad'),
(798, 'Satyawati College'),
(799, 'Saveetha Engineering College, Chennai'),
(800, 'School of Computer Engineering & Information Technology Shobhit University'),
(801, 'School Of Electronics DAV University Indore'),
(802, 'School of Electronics Engineering Shobhit University'),
(803, 'School Of Engineering ,Cochin'),
(804, 'School of Engineering and Technology Sharda University'),
(805, 'School Of Law, Gujarat University, Ahmedabad'),
(806, 'School of Planning and Architecture, Vijayawada'),
(807, 'SCMHRD, Pune'),
(808, 'SCOPE College Of Engineering, Bhopal'),
(809, 'SCT , Trivandrum'),
(810, 'Seacom Engineering College, Dhulagarh'),
(811, 'Seedling Academy, Jaipur'),
(812, 'Seemanta Engineering College, Mayurbhanj'),
(813, 'Shaheed Bhagat Singh College'),
(814, 'Shaheed Sukhdev College Of Business Studies, Delhi University'),
(815, 'Shambhunath Institute Of Engineering & Technology, Allahabad'),
(816, 'Sharda University, Greater Noida'),
(817, 'Shepherd School of Engineering & Technology'),
(818, 'Shivaji college'),
(819, 'Shivdan Singh Institute Of Technology And Management, Aligarh'),
(820, 'Shree Institute Of Science & Technology, Bhopal'),
(821, 'Shree Shankaracharya College Of Engineering And Technology, Bhilai.'),
(822, 'Shree Shankaracharya Institute Of Professional Management And Technology, Raipur'),
(823, 'Shree Swami Atmanand Saraswati Institute of Technology, Surat'),
(824, 'Shree Vaishnav Institute Of Technology Indore'),
(825, 'Shri C. U. Shah College Of Engineering And Technology, Gujarat'),
(826, 'Shri Guru Gobind Singhji College Of Engineering & Technology, Nanded'),
(827, 'Shri Ram College Of Engineering And Management, Faridabad'),
(828, 'Shri Ram Institute of Technology, Jabalpur'),
(829, 'Shri Ramdeobaba Kamla Nehru Engineering College, Nagpur'),
(830, 'Shri Ramswaroop College Of Engineering & Management, Lucknow'),
(831, 'Shri Ramswaroop Memorial College of Engineering & Management'),
(832, 'Shri Shanakaracharaya College Of Engineering And Technology, Bhilai'),
(833, 'Shri Shankracharya Institute Of Technology And Management, Bhilai'),
(834, 'Shri Vishnu Engineering College For Women, Vishnupur'),
(835, 'Shri. S.S. Shasun Jain College For Women, Chennai'),
(836, 'Shrinath Ji Institute Of Engineering And Technology,Nathdwara'),
(837, 'SIBM, Bangalore'),
(838, 'Siddaganga Institute Of Technology,Bangalore'),
(839, 'SIES - Graduate School Of Technology, Mumbai'),
(840, 'SIET,Dhenkanal,Orissa'),
(841, 'Silicon Institute Of Technology, Bhubaneswar'),
(842, 'Siliguri Institute Of Technology,Siliguri'),
(843, 'SIMSR,Mumbai'),
(844, 'Sinhgad College Of Engineering, Pune'),
(845, 'Sir J. J. College Of Architecture,Mumbai'),
(846, 'Sir M Visvesvaraya Institute Of Technology,Bangalore'),
(847, 'SISTAM College Of Engineering, Srikakulam'),
(848, 'SITM, Rewari'),
(849, 'SKIT Jaipur'),
(850, 'SLCIET,Piglipur,Hyderabad'),
(851, 'SLIET Longowal'),
(852, 'SMCET Jaipur'),
(853, 'SMIT Majitar'),
(854, 'SMIT, Gangtok'),
(855, 'SMIT, Guptipara'),
(856, 'Smt. Kashibai Navale College Of Engineering, Pune'),
(857, 'Sobhasaria Engineering College, Rajasthan'),
(858, 'Sophia College For Women,mumbai'),
(859, 'South Asian University'),
(860, 'SP College Of Engineering Mumbai'),
(861, 'SP Jain Institute Of Mangement And Research,Mumbai.'),
(862, 'Sphoorthy Engineering College, Hyderabad'),
(863, 'SR Engineering College,Warangal'),
(864, 'SRCC, Delhi'),
(865, 'Sree Buddha College Of Engineering, Pattoor'),
(866, 'Sree Nidhi Institute Of Technology, Hyderabad'),
(867, 'Sree Sastha Institute Of Engineering And Technology, Chennai'),
(868, 'Sree Vidyanikethan Engineering College,Tirupathi,AndraPradesh.'),
(869, 'Sri Aurobindo College'),
(870, 'Sri Bhagawan Mahaveer Jain College Of Engineering, Kanakapura'),
(871, 'Sri Ganganagar Engineering College'),
(872, 'Sri Krishna College Of Engineering And Technology,Coimbatore'),
(873, 'Sri Mittapalli College Of Engineering,Guntur'),
(874, 'Sri Ramachandra Medical College'),
(875, 'Sri Ramakrishna Egineering College,Coimbatore'),
(876, 'Sri Sairam Engineering College,Chennai'),
(877, 'Sri Sukhmani Institute Of Engineering & Technology, Dera Bassi'),
(878, 'Sri Sunflower College Of Engineering And Technology,Lankapalli'),
(879, 'Sri Venkateswara College Of Engineering And Technology,Chittoor'),
(880, 'SRM Institute Of Technology, Chennai'),
(881, 'SRM Institute Of Technology, Modinagar, Delhi'),
(882, 'SSCET Bhilai'),
(883, 'SSG Punjab University Regional Centre, Hoshiarpur'),
(884, 'SSIT Tumkur'),
(885, 'SSN Chennai'),
(886, 'St Marys College Of Engineering And Technology,hyderabad'),
(887, 'St Xaviers College, Kolkata'),
(888, 'St. Josephs College, Bangalore'),
(889, 'St. Theressa Institute Of Engineering And Technology, Garividi'),
(890, 'St. Thomas College Of Engg & Technology,Kolkata'),
(891, 'St.John College of Engineering and Technology'),
(892, 'St.Peters Engineering College,Chennai'),
(893, 'St.Thomas College, Bhilai'),
(894, 'Stani Memorial College Of Engg. & Tech. Phagi, Jaipur'),
(895, 'Subharti Institute of Technology & Engineering'),
(896, 'Subharti Institute Of Technology And Engineering College Meerut'),
(897, 'Surana College P.G Centre, Bangalore'),
(898, 'Surendranath Institute of Engineering and Management'),
(899, 'Sushila Devi Bansal College Of Technology, Indore'),
(900, 'SV University, Tirupati'),
(901, 'SVPUAT College of Agriculture'),
(902, 'SVPUAT College of Biotechnology'),
(903, 'Swami Keshwanand Institute Of Technology, Jaipur'),
(904, 'Swami Parmanand College Of Engineering & Technology'),
(905, 'Swami Ramananda Thirtha Institute Of Sciences And Technology, Nalgonda'),
(906, 'Swami Vivekanand College Of Engineering, Indore'),
(907, 'Swami Vivekananda Institute Of Technology, Hyderabad'),
(908, 'Sydenham Institute Of Management'),
(909, 'Symbiosis Institute Of International Business, Pune'),
(910, 'Symbiosis Institute Of Operations Management,Nasik'),
(911, 'Symbiosis Law School, Pune'),
(912, 'Symbiosis Society’s Law College, Pune'),
(913, 'T.C.E.T Indore'),
(914, 'T.I.E.T., Patiala'),
(915, 'Tagore Engineering College, Chennai'),
(916, 'TCE, Madurai'),
(917, 'Techno India, Salt Lake'),
(918, 'Techno India College Of Technology, Rajarhat'),
(919, 'Technocrats Institute Of Technology, Bhopal'),
(920, 'Teerthanker Mahaveer College of Engineering'),
(921, 'Teerthanker Mahaveer Polytechnic'),
(922, 'Thadomal Shahani Engineering College,Mumbai'),
(923, 'Thakral College Of Technology,bhopal'),
(924, 'The ICFAI Institute Of Science And Technology, Hyderabad'),
(925, 'The National Institute Of Engineering, Mysore'),
(926, 'The Techno School,Bhubaneswar.'),
(927, 'The YMCA Institute Of Engineering, Faridabad'),
(928, 'Thiagarajar College Of Engineering,madurai'),
(929, 'Tilak College, Vashi'),
(930, 'TKM, Kollam'),
(931, 'TKR, Hyderabad'),
(932, 'Trident Academy Of Technology,Bhubaneswar.'),
(933, 'TRUBA College Of Engineering & Technology, Indore'),
(934, 'Truba Institute Of Engineering And Information Technology,Bhopal'),
(935, 'U. V. Patel College of Engineering,Mehsana, Gujarat'),
(936, 'U.C.E. Burla'),
(937, 'U.I.E.T Chandigarh'),
(938, 'UDML College,Jaipur'),
(939, 'UEM Kolkata'),
(940, 'UGM College, Rourkela'),
(941, 'UIET, Kanpur University'),
(942, 'UIM Allahabad'),
(943, 'UIT RGPV, Bhopal'),
(944, 'Ujjain Engineering College, Ujjain'),
(945, 'United College of Engineering & Management'),
(946, 'United college of engineering and research, allahabad'),
(947, 'University Business School, Chandigarh'),
(948, 'University College Of Engineering, Kakatiya University'),
(949, 'University College Of Engineering, Visakhapatnam.'),
(950, 'University Institute Of Chemical Technology,Mumbai'),
(951, 'University Institute of Engineering and Technology, Kurukshetra University, Kurukshetra'),
(952, 'University Institute Of Technology,Burdwan'),
(953, 'University Law College, Bangalore University, Bangalore'),
(954, 'University Of Petroleum And Energy Studies, Dehradun'),
(955, 'University Schools Of Information Technology, Delhi'),
(956, 'University Visvesvaraya College of Engineering,Bangalore'),
(957, 'Usha Pravin Gandhi College Of Management, Mumbai'),
(958, 'Utkal University Department Of Business Administration'),
(959, 'Uttam Devi Mohan Lal College,Jaipur'),
(960, 'Uttar Pradesh Textile Technology Institute'),
(961, 'V R Siddhartha Engineering College, Vijayawada'),
(962, 'V.I.T.S INDORE'),
(963, 'V.M.Patel Institute Of Management, Gujrat'),
(964, 'Vaagdevi Collge Of Enginnering, Andhra Pradesh'),
(965, 'Vaish College Of Engineering, Rohtak'),
(966, 'Valliammai Engineeirng College, SRM Nagar, Kattankulatthur'),
(967, 'Vardhaman College Of Engineering, Hyderabad'),
(968, 'Vasavi College Of Engineering, Hyderabad'),
(969, 'Vathsalya Institute Of Science & Technology,Hyderabad'),
(970, 'Vaugh School of Agricultural Engineering & Technology'),
(971, 'Velagapudi Ramakrishna Siddhartha Engineering College, Vijayawada'),
(972, 'Velammal College Of Engineering And Technology, Madurai'),
(973, 'Venkteshwer Institute Of Technology,Indore'),
(974, 'VGSOM, IIT Kharagpur'),
(975, 'Vickram College Of Engineering, Madurai'),
(976, 'Vidya Pratishthans College Of Engineering, Maharashtra'),
(977, 'Vidya Vikas Institute of Technology (VVIT)'),
(978, 'VIET Jodhpur'),
(979, 'VIET,Greater Noida'),
(980, 'Vignan Engineering College, Guntur(AP).'),
(981, 'Vignan Institute Of Information Technology,Vizag'),
(982, 'Vignan Institute Of Technology & Science ,hyderabad'),
(983, 'Vignana Bharathi Institute Of Technology,Hyderabad'),
(984, 'Vijay Rural Engineering College, Nizamabad'),
(985, 'Vikrant Institute of Technology and Management, Indore'),
(986, 'Vishveshwarya Group Of Institutions'),
(987, 'Vishveshwarya Institute of Technology'),
(988, 'Vishwakarma Government Engineering College, Ahmedabad'),
(989, 'Vishwakarma Institute Of Information Technology Pune'),
(990, 'Visveswaraya National Institute Of Technology, Nagpur'),
(991, 'Viswanadha Institute Of Technology And Management, Visakhapatnam'),
(992, 'VIT, Vellore'),
(993, 'VITS, Satna'),
(994, 'Vivekanand Education Societys Institute Of Technology, Chembur'),
(995, 'Vivekananda Institute of Technology & Science'),
(996, 'VJTI Mumbai'),
(997, 'VLB Janakiammal College Of Engineering & Technology, Coimbatore'),
(998, 'VNR Vignana Jyothi Institute of Engineering and Technology, Hyderabad'),
(999, 'VSS University Of Technology,Burla'),
(1000, 'Walchand College Of Enginerring,Sangli'),
(1001, 'Watumull Institute Of Electronics Engineering & Computer Technology'),
(1002, 'WB National Univ Of Juridical Sciences, Kolkata'),
(1003, 'Welingkar Institute Of Management Development & Research, Bangalore'),
(1004, 'World College Of Technology And Management, Gurgaon'),
(1005, 'Xavier Institute Of Management & Research, Mumbai'),
(1006, 'Xavier Institute Of Social Service,Ranchi.'),
(1007, 'XIMB Bhubaneshwar'),
(1008, 'XLRI,Jamshedpur'),
(1009, 'Yagyavalkya Institute Of Technology, Jaipur'),
(1010, 'Yashwantrao Chavan College Of Engineering (YCCE), Nagpur'),
(1011, 'Yeshwant Mahavidyalaya, Nanded'),
(1012, 'Yugantar Institute Of Technology & Managementt,Rajnandgaon'),
(1013, 'Zakir Husain College Of Engineering & Technology, Aligarh'),
(1014, 'Zakir Hussain Delhi College'),
(1015, 'Zee Institute Of Creative Arts, Mumbai'),
(1016, 'Mallabhum Institute of Technology'),
(1017, 'IIEST, Shibpur'),
(1018, 'IIEST, Shibpur'),
(1019, ''),
(1020, 'Modern Institute of Engineering & Technology'),
(1021, 'S.C.M Air Technical Training Institute'),
(1022, 'Poornima University, Jaipur'),
(1023, 'NIT Hamirpur'),
(1024, 'Deen Bandhu Chottu Ram University of Science and technology'),
(1025, 'Panipat Institute of Engineering & Technology'),
(1026, 'Sant Longowal Institute of Engineering and Technology'),
(1027, 'NIT Manipur'),
(1028, 'GIET Bhubaneshwar'),
(1029, 'Gyan Ganga Institute of Technology & Science, Jabalpur'),
(1030, 'Techno India University '),
(1031, 'University of Calcutta'),
(1032, 'NIT Agartala'),
(1033, 'Shri Mata Vaishno Devi University, Katra, Jammu and Kashmir'),
(1034, 'Government Engineering College, Idukki, Kerala'),
(1035, 'Sangam University, Bhilwara, Rajasthan'),
(1036, 'Assam Engineering College, Guwahati'),
(1037, 'Indian Institute of Information Technology, Pune'),
(1038, 'National Institute of Technology, Hamirpur'),
(1039, 'NIT Silchar'),
(1040, 'Adamas University'),
(1041, 'Cooch Behar Government Engineering College'),
(1042, 'Sri Venkateswara College of Engineering, Chennai'),
(1043, 'Tezpur University'),
(1044, 'Amity University, Gwalior'),
(1045, 'Kalam Institute of Technology Orissa'),
(1046, ''),
(1047, 'Poornima Group of Institutions, Jaipur'),
(1048, 'scsvmv university kanchipuram Tamilnadu'),
(1049, 'Netaji Subhas Institute of Technology, Bihta'),
(1050, 'Nagarjuna College of Engineering and Technology,Banglore'),
(1051, 'Symbiosis Institute of Technology, Pune'),
(1052, 'National Institute of Technology, Srinagar'),
(1053, 'Chandigarh University ,Mohali, Punjab '),
(1054, 'Marwadi University Rajkot'),
(1055, 'V.V.P. Engineering College, Rajkot'),
(1056, 'Government College of Engineering Kalahandi'),
(1057, 'ACS College of engineering,Bengaluru,Karnataka'),
(1058, 'IIT Guwahati'),
(1059, 'Miranda College of Nursing,Banglore,Karnataka'),
(1060, 'Jorhat Institute of Science & Technology,Assam'),
(1061, 'Assam Agricultural University,Jorhat,Assam'),
(1062, 'Jorhat engineering college,Jorhat'),
(1063, 'Downtown University,Assam'),
(1064, 'Kaziranga University,Jorhat'),
(1065, 'Om Dayal Group of Institutions,Howrah,West Bengal'),
(1066, 'Arya institute of engineering and technology,Jaipur'),
(1067, 'Shri Shankaracharya group of institutions faculty  of engineering and technology,Bhilai,Chattisgarh'),
(1068, 'Mangalore Institute of Technology & Engineering, Manglore'),
(1069, 'Vijaygarh Jyotish Ray College,Kolkata'),
(1070, 'Amity University, Raipur'),
(1071, 'VEL Tech University, Chennai'),
(1072, 'Institute of Technology, Gopeshwar,Uttarakhand'),
(1073, 'Universal College of Medical Sciences,Nepal'),
(1074, 'Government Women College, Ajmer, Rajasthan'),
(1075, 'Seth Anandram Jaipuria College,Kolkata'),
(1076, 'North Eastern Regional Institute of Science and Technology');
INSERT INTO `colleges` (`id`, `college_name`) VALUES
(1077, 'Cambridge Institute of Technology ,Ranchi'),
(1078, 'Government College of Engineering, Keonjhar, Odisha'),
(1079, 'Sambalpur University Institute of Information Technology'),
(1080, 'S B Jain Institute of Technology, Management and Research, Nagpur'),
(1081, 'Pillai HOC College Of Engineering & Technology Rasayani, Maharashtra '),
(1082, 'Ajeenkya DY Patil University, Pune'),
(1083, 'Pailan College of Management and Technology,Kolkata'),
(1084, 'Raja Balwant Singh Management Technical Campus ,Agra'),
(1085, 'Dr. Shyama Prasad Mukherjee International Institute of Information Technology,Naya Raipur'),
(1086, 'St Joseph Engineering College, Mangaluru'),
(1087, 'Government College of Engineering and Leather Technology'),
(1088, 'Kingstone Polytechnic Institute'),
(1089, 'VIVA Institute of Technology'),
(1090, 'Shaheed Bhagat Singh State Technical Campus, Punjab'),
(1091, 'Jaypee University, Anoopshahr'),
(1092, 'Deenbandhu Chotu Ram University Of Science And Technology, Sonepat(Haryana)'),
(1093, 'Vel Tech Rangarajan Dr Sagunthala R&D Institute of Science And Technology'),
(1094, 'Sri Indu Institution of College'),
(1095, 'Shridevi Institute of Engineering & Technology'),
(1096, 'SIET Tumkur,Karnataka'),
(1097, 'Others'),
(1098, 'Brindavan College of Engineering, Bengaluru'),
(1099, 'SIET, Tumkur, Karnataka'),
(1100, 'GOVERNMENT COLLEGE OF ENGINEERING, KALAHANDI'),
(1101, 'Jawaharlal Nehru Government Engineering Sundarnagar, Mandi'),
(1102, 'SAHRDAYA COLLEGE OF ENGINEERING AND TECHNOLOGY'),
(1103, 'TECHNO INDIA, BANIPUR'),
(1104, 'ABS academy of Science, Technology & Management'),
(1105, 'Siddhartha Institute Of Engineering And Technology,Ibrahimpatnam, Hyderabad'),
(1106, 'Arya College of Engineering and Research Centre'),
(1107, 'Government College of Engineering & Textile Technology, Berhampore'),
(1108, 'IES College of Technology, Bhopal'),
(1109, 'Shree Ram Swaroop Memorial College of Engineering and Management, Lucknow'),
(1110, 'Future Institute of Technology, Kolkata'),
(1111, 'Central University of Jharkhand, Ranchi '),
(1112, 'Santiniketan Polytechnic, Durgapur'),
(1113, 'Institute of Technology, Guru Ghasidas University'),
(1114, 'Kshetra Mohan Science Degree College, Narenrapur'),
(1115, 'Shrirampur College'),
(1116, 'Elite Polytechnic College'),
(1117, 'Vikash Institute of Technology'),
(1118, 'Kshetra Mohan Science Degree College, Narendrapur'),
(1119, 'Khallikote University'),
(1120, 'Bengal Institute of Business Studies (BIBS), Kolkata'),
(1121, 'KMBB College of Engineering & Technology'),
(1122, 'Gandhi Institute for Education and Technology'),
(1123, 'Karmaveer Kakasaheb Wagh Institute of Engineering Education and Research(KKWIEER)'),
(1124, 'Ramkrishna Mahato Government Engineering college'),
(1125, 'Graphic Era Hill University, Bhimtaal Campus, Uttarakhand'),
(1126, 'National Institute of Technology, Warangal'),
(1127, 'National Institute of Food Technology Entrepreneurship and Management ( N.I.F.T.E.M)'),
(1128, 'Amity University Kolkata'),
(1129, 'Jawahar Vidya Mandir, Shyamali Ranchi'),
(1130, 'Cambridge Institute of Technology, Bengaluru'),
(1131, 'METAS SEVENTH-DAY ADVENTIST HIGHER SECONDARY SCHOOL'),
(1132, 'Regent Education and Research Foundation'),
(1133, 'Regent Education and Research Foundation'),
(1134, 'Serampore College'),
(1135, 'Anand Mohan College, Kolkata'),
(1136, 'Neotia University, Sarisha'),
(1137, 'UEM Jaipur'),
(1138, 'G.B Pant College'),
(1139, 'MVJ College  of engineering, Banglore, Karnataka'),
(1140, 'ILVA Commerce and Science College'),
(1141, 'MPSTME, Mumbai'),
(1142, 'Biju Pattnaik College of Science & Education'),
(1143, 'Malnad College Of Enginnering, Karnataka'),
(1144, 'Government College of Engineering and Textile Technology, Serampore'),
(1145, 'Ramgarh Engineering College, Ramgarh'),
(1146, 'ILVA Science and Commerce, College'),
(1147, 'Kamla Nehru College, Delhi University'),
(1148, 'KAMLA NEHRU COLLEGE, DELHI UNIVERSITY'),
(1149, 'NIT KURUKSHETRA'),
(1150, 'Sankalchand Patel College of Engineering, Visnagar, Gujrat'),
(1151, 'Kamala Nehru College, Delhi University'),
(1152, 'Dumaka Engineering College , Jharkhand'),
(1153, 'PSG College of Technology'),
(1154, 'BABA HIRA SINGH BHATTAL INSTITUTE OF ENGINEERING AND TECHNOLOGY, SANGRUR'),
(1155, 'Government Polytechnic, Nagpur'),
(1156, 'GIET, Gunupur'),
(1157, 'Government Polytechnic, Nagpur'),
(1158, 'Global Nature Care Sangathan Group Institutions'),
(1159, 'Ramrao Adik Institute of Technology'),
(1160, 'People\'s Education Society University'),
(1161, 'Swami Kesgavanand Institute of Technology'),
(1162, 'Government Polytechnic, Nagpur'),
(1163, 'BABA HIRA SINGH BHATTAL INSTITUTE OF ENGINEERING AND TECHNOLOGY , SANGRUR'),
(1164, 'Gangadhar Meher University , Sambalpur , Odisha'),
(1165, 'Government College of Engineering, Nagpur'),
(1166, 'BIT Patna'),
(1167, 'Narasinha Dutt College'),
(1168, 'Institute of Engineering and Management, Kolkata'),
(1169, 'BIT, Patna'),
(1170, 'Park College of Engineering and Technology'),
(1171, 'NIT, Jamshedpur'),
(1172, 'SRM University, Kattankulathur'),
(1173, 'Darbhanga College of Engineering'),
(1174, 'Loknayaknayak Jai prakash Institute of Technology, Chapra'),
(1175, 'MIT, Muzaffarpur'),
(1176, 'Katihar Engineering College'),
(1177, 'Chouksey Engineering College'),
(1178, 'University of North Bengal'),
(1179, 'West Bengal Institute of Technology'),
(1180, 'Government Engineering College , Jagdalpur, Chhattisgarh.'),
(1181, 'NIT Agartala'),
(1182, 'Jawaharlal Nehru Krishi Vishwa Vidyalaya, Jabalpur'),
(1183, 'Maulana Abul Kalam Azad University of Technology'),
(1184, 'Bishop cotton women\'s christian law college bangalore'),
(1185, 'Jain University, Banglore'),
(1186, 'Gandhi Institue for Technological Advancement, BBSR'),
(1187, 'Swami Vivekananda Institute of Science and Technology, Kolkata'),
(1188, 'Swami Vivekananda Institute of Science and Technology, Kolkata'),
(1189, 'Dumka Engineering College, Dumka Jharkhand'),
(1190, 'Rajkiya Engineering College, Mainpuri'),
(1191, 'IIM Ranchi'),
(1192, 'TISS Mumbai'),
(1193, 'Sathyabama Institute of Science and Technology'),
(1194, 'S.C.M Institute of Engineering and Technology'),
(1195, 'Modern Engineering and Management studies, Baleswar Orissa'),
(1196, 'Sathyabama Institute of Science and Technology'),
(1197, 'Rajkiya Engineering College, sonbhadra'),
(1198, 'Government Engineering College, Jagdalpur , Chhattisgarh'),
(1199, 'Indian Society of Engineers for Robotics and Automation'),
(1200, 'Ishwar Chandra Vidyasagar Polytechnic, Jhargram'),
(1201, 'Global Institute of Technology, Haldia'),
(1202, 'Accharya prafulla chandra roy polytechnic, Jadavpur');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rules` text NOT NULL,
  `team_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `event_detail`
--

CREATE TABLE `event_detail` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `about` text NOT NULL,
  `description` text NOT NULL,
  `rules` text NOT NULL,
  `ps` text NOT NULL,
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_team`
--

CREATE TABLE `event_team` (
  `id` int(11) NOT NULL,
  `captain` int(11) NOT NULL,
  `teamid` varchar(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `member1` int(11) NOT NULL,
  `member2` int(11) NOT NULL,
  `member3` int(11) NOT NULL,
  `member4` int(11) NOT NULL,
  `member5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_user`
--

CREATE TABLE `event_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `event_user_gamefest`
--

CREATE TABLE `event_user_gamefest` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `steam_id` varchar(255) DEFAULT NULL,
  `player_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `title` text NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `relic`
--

CREATE TABLE `relic` (
  `id` int(11) NOT NULL,
  `name` varchar(224) NOT NULL,
  `email` varchar(224) NOT NULL,
  `ktj_id` varchar(40) NOT NULL,
  `q_on` int(11) NOT NULL,
  `last_time` bigint(40) NOT NULL,
  `score` bigint(40) NOT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relic`
--

INSERT INTO `relic` (`id`, `name`, `email`, `ktj_id`, `q_on`, `last_time`, `score`, `rank`) VALUES
(1, 'ad', 'z@z.z', 'z@z.z', 1, 1610259269, 739794, NULL),
(2, 'yszf', 'y@y.y', 'y@y.y', 1, 1610259315, 739748, NULL),
(3, 'asf', 'x@x.x', 'x@x.x', 1, 1610259354, 739709, NULL),
(4, 'klj', 'w@w.w', 'w@w.w', 1, 1610259391, 739672, NULL),
(5, 'iuye', 'v@v.v', 'v@v.v', 3, 1610288094, 42161572, NULL),
(6, 'sd', 'a@a.a', 'a@a.a', 21, 1610274564, 415263517, NULL),
(7, 'A', 't@t.t', 't@t.t', 2, 1610260557, 21477050, NULL),
(8, 'hhou', 'g@g.g', 'g@g.g', 3, 1610288010, 42157391, NULL),
(9, 'zdgsdg', 'aa@a.a', 'aa@a.a', 2, 1610274751, 21448637, NULL),
(10, 'as', 'c@c.c', 'c@c.c', 1, 1610277784, 721279, NULL),
(11, 'aslfj kjansdjkn las', 'ab@a.a', 'ab@a.a', 21, 1610279137, 415122387, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relic_ques`
--

CREATE TABLE `relic_ques` (
  `id` int(10) NOT NULL,
  `ques_no` int(10) NOT NULL,
  `ques` varchar(1000) NOT NULL,
  `ans1` varchar(100) NOT NULL,
  `ans2` varchar(100) NOT NULL,
  `hint` varchar(200) NOT NULL,
  `img_p` varchar(100) NOT NULL,
  `img_p1` varchar(100) DEFAULT NULL,
  `img_p2` varchar(100) DEFAULT NULL,
  `img_p3` varchar(100) DEFAULT NULL,
  `img_p4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relic_ques`
--

INSERT INTO `relic_ques` (`id`, `ques_no`, `ques`, `ans1`, `ans2`, `hint`, `img_p`, `img_p1`, `img_p2`, `img_p3`, `img_p4`) VALUES
(1, 1, 'The one true owner of the cloak, no one can see him, is among the people who saw death, he started seeing those, Name them.', 'Thestrals', 'thestrals', 'We see them in Hogsmeade.', 'img/1.png', 'img/2.png', 'img/3.png', NULL, NULL),
(2, 2, 'One of the many  things which were similar between Harry and The Dark Lord, this was related to one of the magical creatures.Can you name (by which it is called) that creature?', 'fawkes', 'Fawkes', '', 'img/2.png', 'img/2.png', 'img/2.png', 'img/2.png', NULL),
(3, 3, 'About him/her you know very less, he/she had helped Harry through tough times just by a reflection, where was he/she first seen in movie series?', 'Hog\'s head', 'Head of Hog', 'An untouched part of Dumbledore\'s life.', 'img/3.png', 'img/2.png', 'img/1.png', 'img/5.png', NULL),
(4, 4, 'One thing in common between the two scenarios.', 'Halloween', 'halloween', 'end with \'n\'', 'img/4.png', '', '', '', ''),
(5, 5, 'In the real world, this dragon must have gone unnoticed by muggles, but Ben\'s neighbor saw it with its own eye. Who saw the dragon? ', 'London eye', 'london eye', '', 'img/5.png', '', '', '', ''),
(6, 6, 'After getting eternal glory by defeating Horntail Harry wants to sell Horntail\'s liver to make an offering at Princess Diana\'s funeral. So much will he get for it? Just mention the number. ', '17', 'seventeen', '', 'img/6.png', '', '', '', ''),
(7, 7, 'At what time on the clock could have made 6th of June a very cold day for Howgarts if it wasn\'t for dials that turned backward?(Time in 24 hrs)', '21:00', '9:00pm', '', 'img/7.png', '', '', '', ''),
(8, 8, 'Thrown out from the safest place for saving someone, X was bad at orders and Y was allergic to Mrs. Norris, both share love for the same thing their story is somewhat similar. X and Y are? (mention their last names)', 'Scamander and Hagrid', 'Scamander, Hagrid', '', 'img/8.png', '', '', '', ''),
(9, 9, 'A half-muggle which chose magic over love, but he/she was one helluva Quidditch player that was proved in which year?(last name only)', 'McGonagall', 'Mcgonagall', 'In ques.8 someone X or Y hate it', 'img/9.png', '', '', '', ''),
(10, 10, 'All the three greatest wizards including potter of time when potter studied in Hogwarts, had something in common, in which one of them was too afraid to reveal and one just got it by one of the other two. That thing is?', 'parseltongue', 'Parseltongue', '', 'img/10.png', '', '', '', ''),
(11, 11, 'X in real life gets a fame after his death to make something important for Voldemort but in the reel life X gets the same fame before death and used it.(last name only)', 'Flamel', 'flamel', '', 'img/11.png', '', '', '', ''),
(12, 12, 'This muggle-born helped Harry to celebrate Easter and when it happens last time. Can you tell the last name of that muggle-born?', 'warren', 'Warren', '', 'img/12.png', '', '', '', ''),
(13, 13, 'For which character in series, silver turned out to be more expensive in the eyes of readers.(last name only)', 'Pettigrew', 'pettigrew', '', 'img/13.png', '', '', '', ''),
(14, 14, 'In the show of snake charmer, the two human props which got hurt last time were? ', 'Hagrid and Myrtle', 'Hagrid, Myrtle', '', 'img/14.png', '', '', '', ''),
(15, 15, 'With the help of cloak, serious James kills a rat in the night of full moon to get the treasure. Decode the statement and find, where will he put all the treasure?', 'room of requirement', 'requirement room', '', 'img/15.png', '', '', '', ''),
(16, 16, 'Among the three cheaters of death, the one which got his wish fulfilled by a colossal sacrifice his story is analogous to which death eater?( last name only)', 'Snape', 'snape', '', 'img/16.png', '', '', '', ''),
(17, 17, 'Image is saying something', 'Babbitty Rabbitty and her Cackling Stump', 'babbitty rabbitty and her sackling stump', '', 'img/17.png', '', '', '', ''),
(18, 18, 'The anarchist emblem of Black rose inspired writers of both times medieval and present, it leads to which part of the story?', 'Deathly Hallows', 'deathly hallows', '', 'img/18.png', '', '', '', ''),
(19, 19, 'His fanatic love made him a sinner, because of him the wisdom of centuries was lost and his repentance burdened him for eternity. Who is he?(Mention the famous name)', 'Bloody Barren', 'bloody barren', '', 'img/19.png', '', '', '', ''),
(20, 20, 'Qustion is in image', 'answer', 'answer', '', 'img/10.png', '', '', '', ''),
(21, 21, 'Question is in image', 'answer', 'answer', '', 'img/21.png', '', '', '', ''),
(22, 22, 'A  person is sitting there with guilt because of the X harry have. But if you want to reach to him you will have to use this, may be you will reach to this place Y. X Y is', 'Love Martinsville', 'answer', '', 'img/22.png', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `spons`
--

CREATE TABLE `spons` (
  `id` int(11) NOT NULL,
  `sponsor_name` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `link` varchar(500) NOT NULL,
  `category_id` int(11) NOT NULL,
  `logo` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `sponsor_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `year` varchar(55) NOT NULL,
  `sponsor_logo` varchar(255) NOT NULL,
  `sponsor_name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_category`
--

CREATE TABLE `sponsor_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `spons_category`
--

CREATE TABLE `spons_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `post` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `toppr`
--

CREATE TABLE `toppr` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `classs` varchar(5) NOT NULL,
  `school` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `member_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ktjid` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `ktjid`) VALUES
(1, 'as', 'asd@jhgsad.as', '$2y$10$prh9q.zB7vucLVl2jeAyLer8bU0djEMoUwHC1dEYJymEAv/9Pr5hC', 'asd'),
(2, 'AD', 'AS@A.A', 'aaaaa12345A', 'ASD'),
(4, 'as', 'b@b.b', 'abcde12345A', 'asd'),
(5, 'sdgv', 'sdf@xf.asd', 'abcde12345A', 'asfafs'),
(8, 'sd', 'a@a.a', '$2y$10$DZhvKzQWcoGxLAc7ePmLSe0JDqzd85EO7Pkx93uei1/AwOY4aP7ZO', 'a@a.a'),
(9, 'as', 'c@c.c', '$2y$10$JHV2YiGtBmWNiKJxoMK61.PD0Jl9nnCgnlq69YwLlbCUDhMnmHFjO', 'a@a.a'),
(10, 'hbkhbb', 'jhg@jhv.ihg', '$2y$10$N5OS1zeSiCa/RyZJZS6uz./9NwvnoyB9F5QRpJyIOcFmhiNczscZC', 'jyguy'),
(11, 'asfasf', 'd@d.d', '$2y$10$FnA7ZsR8K7zCWFhX6zb4beOvIAqgVvngH49bIr7VzZcQ85cNNHmRm', 'asfajsfn'),
(12, 'kasfh', 'e@e.e', '$2y$10$LvlWcHM8IVdlpUojpszzq.p9uWChKrZDZjWhrzPAA2bDgSXBwtqrK', 'asjhkf'),
(13, 'lkasjf', 'f@f.f', '$2y$10$JwFqF7io/BeZxsxQ3PkOq.ODHKkWdGdEINEhO6/WuGJlBwNrE9ehK', 'afshhoho98'),
(14, 'hhou', 'g@g.g', '$2y$10$EyXQMToye3BWoa6yejQx6OI7kauBsjvUIsy8lwnnJshfVt7wOSgOS', 'houh'),
(15, 'ad', 'z@z.z', '$2y$10$6Tt4/d6vVDhqmKP7cc/EYufO/N2jrrwi0CbkisPRTNL3PFNWUmOuC', 'sgd'),
(16, 'yszf', 'y@y.y', '$2y$10$HVm//N93Vk38dmFqkTrZhOWQtFiDJBRDfKtu.mzWUgjo2Iyo6MOim', 'saf'),
(17, 'asf', 'x@x.x', '$2y$10$vCGs.xVw8hY6mJyzibpQ6O0b.XXJuoDTaOn3EHxsLznfzRE2ktACK', 'asf'),
(18, 'klj', 'w@w.w', '$2y$10$Y3cPjvL7WyQ4YH1joVzmveyejOuvIeTLvUTHY/LnqLxTzYr/btcFO', 'szdf'),
(19, 'iuye', 'v@v.v', '$2y$10$ZQgBEMDl0fm4LZlydZXeCu5NdvDP3sE/Aec0nO0sg9ZYAAAPqHS6S', 'ajn'),
(20, 'A', 't@t.t', '$2y$10$/vprHJaRSdEIV3PBYeET1.S3/wa56oaDDTsrkt/AE8zZZUHPuuzfy', 'asfc'),
(21, 'sdf', 'sdf@kjgsdf.sdf', '$2y$10$o3kQAyQwX4yPoKooOws.I.vWdcBbLQlhegYIQd8ShhH2TZsiG9oUm', 'sdfsdgv'),
(22, 'kjh', 'kjb@hgfv', '$2y$10$fQLEVBDtIUJ386sR3GTm5.KDwb77SNP4cjFI.ykQcix5W1hGrEQ7K', 'kh'),
(23, 'zdgsdg', 'aa@a.a', '$2y$10$KPHO5TifGOL11HvyVdyyN.sCv/IgEECRVI4HvSqPhFZHmMrHUccXW', 'asfgsd'),
(24, 'aslfj kjansdjkn las', 'ab@a.a', '$2y$10$FvKGzAqxoUpKQB8y7sAaQOcWcxoT2/CsGZSsBKgeROji5hyq51tUC', 'ajkshkhaus');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `topic` text NOT NULL,
  `about` text NOT NULL,
  `contact` text NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workshop_user`
--

CREATE TABLE `workshop_user` (
  `id` int(11) NOT NULL,
  `workshop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_detail`
--
ALTER TABLE `event_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_team`
--
ALTER TABLE `event_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_user`
--
ALTER TABLE `event_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_user_gamefest`
--
ALTER TABLE `event_user_gamefest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `relic`
--
ALTER TABLE `relic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relic_ques`
--
ALTER TABLE `relic_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spons`
--
ALTER TABLE `spons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`sponsor_id`);

--
-- Indexes for table `sponsor_category`
--
ALTER TABLE `sponsor_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `spons_category`
--
ALTER TABLE `spons_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toppr`
--
ALTER TABLE `toppr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshop_user`
--
ALTER TABLE `workshop_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1203;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_detail`
--
ALTER TABLE `event_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_team`
--
ALTER TABLE `event_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_user`
--
ALTER TABLE `event_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_user_gamefest`
--
ALTER TABLE `event_user_gamefest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relic`
--
ALTER TABLE `relic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `relic_ques`
--
ALTER TABLE `relic_ques`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `spons`
--
ALTER TABLE `spons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spons_category`
--
ALTER TABLE `spons_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toppr`
--
ALTER TABLE `toppr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workshop_user`
--
ALTER TABLE `workshop_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
