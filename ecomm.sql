-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 09:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(14, 13, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(3, 'Tablets', 'tablets'),
(4, 'Smart Phones', ''),
(7, 'TV', 'tv'),
(8, 'Desktop', 'desktop');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 1, 1),
(22, 12, 28, 1),
(23, 12, 2, 1),
(24, 13, 2, 1),
(25, 14, 1, 1),
(26, 15, 35, 1),
(27, 16, 32, 1),
(28, 17, 32, 1),
(29, 18, 32, 1),
(30, 19, 32, 1),
(31, 20, 32, 1),
(32, 21, 32, 1),
(33, 22, 33, 1),
(34, 23, 33, 1),
(35, 24, 34, 1),
(36, 25, 34, 1),
(37, 26, 34, 1),
(38, 27, 34, 1),
(39, 28, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(32, 7, 'Conion BE-24U303B (Basic) HD LED Television', '<h2><strong>Specification:</strong></h2>\r\n\r\n<p>Screen Size:&nbsp; &nbsp; &nbsp;&nbsp;24&#39;&#39;</p>\r\n\r\n<p>Resolution:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;HD 1366?768</p>\r\n\r\n<p>Power Supply (Voltage, Hz):&nbsp; &nbsp; 100V ~ 240V, 50/60 Hz</p>\r\n\r\n<p>Speaker System:&nbsp; &nbsp; &nbsp; &nbsp;3W+3W</p>\r\n\r\n<p>HDMI Ports:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1</p>\r\n\r\n<p>AV In:&nbsp; &nbsp; &nbsp; 2</p>\r\n\r\n<p>VGA In:&nbsp; &nbsp; &nbsp;Yes</p>\r\n\r\n<p>Surround System:&nbsp; &nbsp; &nbsp; Yes</p>\r\n\r\n<p>FULL FUNCTION REMOTE CONTROL:&nbsp; &nbsp;Yes</p>\r\n\r\n<p>USB Ports:&nbsp; &nbsp; &nbsp; &nbsp;1</p>\r\n\r\n<p>Earphone OUT:&nbsp; &nbsp; &nbsp;1</p>\r\n\r\n<p>PC IN:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;1</p>\r\n\r\n<p>RF IN:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1</p>\r\n\r\n<p>Max Storage Channel:&nbsp; &nbsp; &nbsp; 99</p>\r\n\r\n<p>Power Consumption:&nbsp; &nbsp; &nbsp; &nbsp;40W</p>\r\n\r\n<p>Aspect ratio:&nbsp; &nbsp; &nbsp; &nbsp; 16:09</p>\r\n\r\n<p>Contrast:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4000:1 (Typical)</p>\r\n\r\n<p>Advanced Quantum Technology</p>\r\n\r\n<p>Eye Care Technology</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Description:</strong></h2>\r\n\r\n<p>Conion BE-24U303B (Basic) HD LED Television available at all the showrooms of Best Electronics in Bangladesh. Equipped with great picture quality and sound system that&rsquo;ll blow your mind. This 24 inch Smart LED TV equipped with HD view redefines your TV viewing experience. Never have there been a Smart LED TV with this many features at such an affordable price. Some key features of Conion 24RB600N HD LED Television are:</p>\r\n\r\n<ul>\r\n	<li>Perfect Resolution &amp; Aspect Ratio ensure the bright picture</li>\r\n	<li>Eye Care Technology protects</li>\r\n	<li>3D Picture Quality</li>\r\n	<li>Dynamic Backlight Adjustment</li>\r\n	<li>Stereo Sound</li>\r\n	<li>USB, HDMI &amp; Earphone Port</li>\r\n	<li>Weak signal auto enhancer</li>\r\n	<li>Quick Response time</li>\r\n</ul>\r\n\r\n<p>Conion is the flagship brand of Best Electronics in Bangladesh. Get your Conion BE-24U303B (Basic) HD LED Television now from your nearest Best Electronics Store and enjoy Easy Installment Payment Facility.</p>\r\n', 'conion-be-24u303b-basic-hd-led-television', 13, 'ssss.JPG', '2023-01-16', 5),
(33, 7, 'Conion BE-39KH904U HD LED Television', '<h2><strong>Specification:</strong></h2>\r\n\r\n<p>Screen Size: 39&#39;&#39;</p>\r\n\r\n<p>Resolution: HD 1366?768</p>\r\n\r\n<p>Power Supply (Voltage, Hz):&nbsp;&nbsp; &nbsp;100V ~ 240V, 50/60 Hz</p>\r\n\r\n<p>Power:&nbsp;&nbsp; &nbsp;60W</p>\r\n\r\n<p>Speaker System:&nbsp;&nbsp; &nbsp;3W+3W</p>\r\n\r\n<p>HDMI Ports:&nbsp;&nbsp; &nbsp;1</p>\r\n\r\n<p>USB Ports:&nbsp;&nbsp; &nbsp;1</p>\r\n\r\n<p>AV In:&nbsp;&nbsp; &nbsp;Yes</p>\r\n\r\n<p>VGA In:&nbsp;&nbsp; &nbsp;Yes</p>\r\n\r\n<p>Surround System:&nbsp;&nbsp; &nbsp;Yes</p>\r\n\r\n<p>FULL FUNCTION REMOTE CONTROL:&nbsp;&nbsp; &nbsp;Yes</p>\r\n\r\n<p>Eco Saving</p>\r\n\r\n<p>Japan Technology</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Description:</strong></h2>\r\n\r\n<p>Conion BE-39KH904U HD LED Television available at all the showrooms of Best Electronics in Bangladesh. Equipped with great picture quality and sound system that&rsquo;ll blow your mind. This 32 inch Smart LED TV equipped with full HD view redefines your TV viewing experience. Never have there been a LED TV with this many features at such an affordable price. Some key features of Conion BE-39KH904U HD LED Television are:</p>\r\n\r\n<ul>\r\n	<li>Japan Technology</li>\r\n	<li>ECO Saving</li>\r\n	<li>Eye Protection Technology</li>\r\n	<li>HD Ready</li>\r\n</ul>\r\n\r\n<p>Conion is the flagship brand of Best Electronics?in Bangladesh. Get your?Conion BE-39KH904U HD LED Television now from your nearest Best Electronics Store and enjoy?Easy Installment Payment Facility.</p>\r\n<quillbot-extension-portal></quillbot-extension-portal>', 'conion-be-39kh904u-hd-led-television', 27, 'conion-be-39kh904u-hd-led-television.JPG', '2022-12-20', 6),
(34, 4, 'Galaxy A52s 5G', '<h2><strong>Specification:</strong></h2>\r\n\r\n<p><br />\r\n<strong>NETWORK-</strong></p>\r\n\r\n<p>Technology:&nbsp;&nbsp; &nbsp;GSM / HSPA / LTE / 5G</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>LAUNCH-&nbsp;&nbsp; &nbsp;</strong></p>\r\n\r\n<p>Announced:&nbsp;&nbsp; &nbsp;2021, August 17<br />\r\nStatus: &nbsp;&nbsp; &nbsp;Available. Released 2021, September 01</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>BODY-&nbsp;&nbsp; &nbsp;</strong></p>\r\n\r\n<p>Dimensions:&nbsp;&nbsp; &nbsp;159.9 x 75.1 x 8.4 mm (6.30 x 2.96 x 0.33 in)<br />\r\nWeight: &nbsp;&nbsp; &nbsp;189 g (6.67 oz)<br />\r\nBuild: &nbsp;&nbsp;&nbsp; &nbsp;Glass front (Gorilla Glass 5), plastic back<br />\r\nSIM: &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Single SIM (Nano-SIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;IP67 dust/water resistant (up to 1m for 30 mins)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>DISPLAY-</strong></p>\r\n\r\n<p>Type: &nbsp;&nbsp;&nbsp; &nbsp;Super AMOLED, 120Hz, 800 nits (HBM)<br />\r\n&nbsp;Size: &nbsp;&nbsp;&nbsp; &nbsp;6.5 inches, 102.0 cm2 (~84.9% screen-to-body ratio)<br />\r\n&nbsp;Resolution:&nbsp;&nbsp; &nbsp;1080 x 2400 pixels, 20:9 ratio (~405 ppi density)<br />\r\n&nbsp;Protection:&nbsp;&nbsp; &nbsp;Corning Gorilla Glass 5</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>PLATFORM- </strong></p>\r\n\r\n<p>OS: &nbsp; &nbsp;&nbsp; Android 11, upgradable to Android 13, One UI 5<br />\r\nChipset:&nbsp;&nbsp; &nbsp;Qualcomm SM7325 Snapdragon 778G 5G (6 nm)<br />\r\nCPU: &nbsp;&nbsp;&nbsp; &nbsp;Octa-core (1x2.4 GHz Cortex-A78 &amp; 3x2.2 GHz Cortex-A78 &amp; 4x1.9 GHz Cortex-A55)<br />\r\nGPU: &nbsp;&nbsp;&nbsp; &nbsp;Adreno 642L</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>MEMORY-</strong>&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;Card slot:&nbsp;&nbsp; &nbsp;microSDXC (uses shared SIM slot)<br />\r\nInternal:&nbsp;&nbsp; &nbsp;128GB 4GB RAM, 128GB 6GB RAM, 128GB 8GB RAM, 256GB 6GB RAM, 256GB 8GB RAM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>MAIN CAMERA-</strong></p>\r\n\r\n<p>Quad:&nbsp;&nbsp; &nbsp;64 MP, f/1.8, 26mm (wide), 1/1.7&quot;, 0.8&micro;m, PDAF, OIS<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;12 MP, f/2.2, 123? (ultrawide), 1.12&micro;m<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;5 MP, f/2.4, (macro)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;5 MP, f/2.4, (depth)<br />\r\nFeatures:&nbsp;&nbsp; &nbsp;LED flash, panorama, HDR<br />\r\nVideo:&nbsp;&nbsp; &nbsp;4K@30fps, 1080p@30/60fps; gyro-EIS</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>SELFIE CAMERA-&nbsp;&nbsp;</strong></p>\r\n\r\n<p>Single: &nbsp;&nbsp; &nbsp;32 MP, f/2.2, 26mm (wide), 1/2.8&quot;, 0.8&micro;m<br />\r\nFeatures:&nbsp;&nbsp; &nbsp;HDR<br />\r\nVideo: &nbsp;&nbsp;&nbsp; &nbsp;4K@30fps, 1080p@30/60fps</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>SOUND-&nbsp;&nbsp;</strong></p>\r\n\r\n<p>Loudspeaker:&nbsp;&nbsp; &nbsp;Yes, with stereo speakers<br />\r\n3.5mm jack:&nbsp;&nbsp; &nbsp;Yes</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>COMMS-&nbsp;</strong>&nbsp;</p>\r\n\r\n<p>WLAN: &nbsp; &nbsp;&nbsp; &nbsp;Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct<br />\r\nBluetooth:&nbsp;&nbsp; &nbsp;5.0, A2DP, LE<br />\r\nPositioning:&nbsp;&nbsp; &nbsp;GPS, GLONASS, GALILEO, BDS, QZSS<br />\r\nNFC: &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Yes (market/region dependent)<br />\r\nRadio: &nbsp;&nbsp;&nbsp; &nbsp;No<br />\r\nUSB: &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;USB Type-C 2.0, OTG</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FEATURES-</strong></p>\r\n\r\n<p>Sensors:&nbsp;&nbsp; &nbsp;Fingerprint (under display, optical), accelerometer, gyro, compass<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Virtual Proximity Sensing</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>BATTERY-</strong></p>\r\n\r\n<p>Type: &nbsp;&nbsp;&nbsp; &nbsp;Li-Ion 4500 mAh, non-removable<br />\r\nCharging:&nbsp;&nbsp; &nbsp;25W wired</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>MISC-</strong>&nbsp; &nbsp;</p>\r\n\r\n<p>Colors: &nbsp;&nbsp; &nbsp;Awesome Black, Awesome White, Awesome Purple, Awesome Mint<br />\r\nModels: &nbsp;&nbsp; &nbsp;SM-A528B, SM-A528B/DS, SM-A528N<br />\r\nSAR: &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;0.72 W/kg (head) &nbsp; &nbsp;<br />\r\nSAR EU: &nbsp;&nbsp; &nbsp;0.88 W/kg (head) &nbsp; &nbsp; 0.84 W/kg (body) &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>TESTS-&nbsp; &nbsp;</strong></p>\r\n\r\n<p>Performance:&nbsp;&nbsp; &nbsp;AnTuTu: 429675 (v8), 506432(v9)<br />\r\nGeekBench:&nbsp;&nbsp; &nbsp;11060 (v4.4), 2801 (v5.1)<br />\r\nGFXBench:&nbsp;&nbsp; &nbsp;28fps (ES 3.1 onscreen)<br />\r\nDisplay:&nbsp;&nbsp; &nbsp;Contrast ratio: Infinite (nominal)<br />\r\nCamera:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Photo / Video<br />\r\nLoudspeaker:&nbsp;&nbsp; &nbsp;-27.5 LUFS (Good)<br />\r\nBattery life:&nbsp;&nbsp; &nbsp;Endurance rating 113h</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'galaxy-a52s-5g', 43, 'galaxy-a52s-5g.JPG', '2022-12-22', 2),
(35, 4, 'Galaxy Z Flip3 5G', '<h2><strong>Specificition:</strong></h2>\r\n\r\n<p><br />\r\n<strong>NETWORK-&nbsp;</strong><br />\r\nTechnology:&nbsp;&nbsp; &nbsp;GSM / CDMA / HSPA / EVDO / LTE / 5G</p>\r\n\r\n<p><strong>LAUNCH-&nbsp;&nbsp; &nbsp;&nbsp;</strong><br />\r\nAnnounced:&nbsp;&nbsp; &nbsp;2021, August 11<br />\r\nStatus: &nbsp;&nbsp; &nbsp;Available. Released 2021, August 27</p>\r\n\r\n<p><strong>BODY-&nbsp;&nbsp; &nbsp;</strong><br />\r\nDimensions:&nbsp;&nbsp; &nbsp;Unfolded: 166 x 72.2 x 6.9 mm<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Folded: 86.4 x 72.2 x 15.9-17.1 mm<br />\r\nWeight: &nbsp;&nbsp; &nbsp;183 g (6.46 oz)<br />\r\nBuild: &nbsp;&nbsp;&nbsp; &nbsp;Plastic front, glass back (Gorilla Glass Victus), aluminum frame<br />\r\nSIM: &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Nano-SIM and eSIM<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;IPX8 water resistant (up to 1.5m for 30 mins)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Armor aluminum frame with tougher drop and scratch resistance (advertised)</p>\r\n\r\n<p><strong>DISPLAY-&nbsp;</strong><br />\r\nType: &nbsp;&nbsp;&nbsp; &nbsp;Foldable Dynamic AMOLED 2X, 120Hz, HDR10+, 1200 nits (peak)<br />\r\nSize: &nbsp;&nbsp;&nbsp; &nbsp;6.7 inches, 101.5 cm2 (~84.7% screen-to-body ratio)<br />\r\nResolution:&nbsp;&nbsp; &nbsp;1080 x 2640 pixels (~426 ppi density)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Cover display: Super AMOLED, 1.9 inches, 260 x 512 pixels<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n<p><strong>PLATFORM-&nbsp;</strong><br />\r\nOS: &nbsp; &nbsp;&nbsp; &nbsp;Android 11, upgradable to Android 13, One UI 5<br />\r\nChipset:&nbsp;&nbsp; &nbsp;Qualcomm SM8350 Snapdragon 888 5G (5 nm)<br />\r\nCPU: &nbsp;&nbsp;&nbsp; &nbsp;Octa-core (1x2.84 GHz Cortex-X1 &amp; 3x2.42 GHz Cortex-A78 &amp; 4x1.80 GHz Cortex-A55)<br />\r\nGPU: &nbsp;&nbsp;&nbsp; &nbsp;Adreno 660</p>\r\n\r\n<p><strong>MEMORY-&nbsp;&nbsp;</strong> &nbsp;<br />\r\nCard slot:&nbsp;&nbsp; &nbsp;No<br />\r\nInternal:&nbsp;&nbsp; &nbsp;128GB 8GB RAM, 256GB 8GB RAM<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;UFS 3.1</p>\r\n\r\n<p><strong>MAIN CAMERA-&nbsp;</strong><br />\r\nDual:&nbsp;&nbsp; &nbsp;12 MP, f/1.8, 27mm (wide), 1/2.55&quot;, 1.4&micro;m, Dual Pixel PDAF, OIS<br />\r\n&nbsp;&nbsp; &nbsp;12 MP, f/2.2, 123? (ultrawide), 1.12&micro;m<br />\r\nFeatures:&nbsp;&nbsp; &nbsp;LED flash, HDR, panorama<br />\r\nVideo:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;4K@30/60fps, 1080p@60/240fps, 720p@960fps, HDR10+</p>\r\n\r\n<p><strong>SELFIE CAMERA-&nbsp;&nbsp; </strong>&nbsp;<br />\r\nSingle: &nbsp;&nbsp; &nbsp;10 MP, f/2.4, 26mm (wide), 1.22&micro;m<br />\r\nFeatures:&nbsp;&nbsp; &nbsp;HDR<br />\r\nVideo: &nbsp;&nbsp;&nbsp; &nbsp;4K@30fps</p>\r\n\r\n<p><strong>SOUND-&nbsp;&nbsp; &nbsp;</strong><br />\r\nLoudspeaker:&nbsp;&nbsp; &nbsp;Yes, with stereo speakers<br />\r\n3.5mm jack:&nbsp;&nbsp; &nbsp;No<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;32-bit/384kHz audio<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Tuned by AKG</p>\r\n\r\n<p><strong>COMMS-&nbsp;</strong>&nbsp; &nbsp;<br />\r\nWLAN: &nbsp; &nbsp;&nbsp; &nbsp;Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct<br />\r\nBluetooth:&nbsp;&nbsp; &nbsp;5.1, A2DP, LE<br />\r\nPositioning:&nbsp;&nbsp; &nbsp;GPS, GLONASS, GALILEO, BDS<br />\r\nNFC: &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Yes<br />\r\nRadio: &nbsp;&nbsp;&nbsp; &nbsp;No<br />\r\nUSB: &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;USB Type-C 2.0, OTG</p>\r\n\r\n<p><strong>FEATURES-&nbsp;</strong><br />\r\nSensors:&nbsp;&nbsp; &nbsp;Fingerprint (side-mounted), accelerometer, gyro, proximity, compass, barometer<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Samsung Pay (Visa, MasterCard certified)</p>\r\n\r\n<p><strong>BATTERY-&nbsp;</strong><br />\r\nType: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Li-Po 3300 mAh, non-removable<br />\r\nCharging:&nbsp;&nbsp; &nbsp;15W wired<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;10W wireless<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;4.5W reverse wireless</p>\r\n\r\n<p><strong>MISC-&nbsp;&nbsp; &nbsp;</strong><br />\r\nColors: &nbsp;&nbsp; &nbsp;Phantom Black, Green, Lavender, Cream, White, Pink, Gray, Thom Browne<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Edition, Bespoke Edition, Wooyoungmi Edition, Dream White<br />\r\nModels: &nbsp;&nbsp; &nbsp;SM-F711B, SM-F711N, SM-F711U, SM-F711U1, SM-F711W, SM-F7110<br />\r\nSAR EU: &nbsp;&nbsp; &nbsp;0.86 W/kg (head) &nbsp; &nbsp; 1.58 W/kg (body) &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p><strong>TESTS-&nbsp;&nbsp; </strong>&nbsp;<br />\r\nPerformance:&nbsp;&nbsp; &nbsp;AnTuTu: 596866 (v8) | 682223 (v9)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;GeekBench: 3441 (v5.1)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;GFXBench: 40fps (ES 3.1 onscreen)<br />\r\nDisplay:&nbsp;&nbsp; &nbsp;Contrast ratio: Infinite (nominal)<br />\r\nCamera:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Photo / Video<br />\r\nLoudspeaker:&nbsp;&nbsp; &nbsp;-25.8 LUFS (Very good)<br />\r\nBattery life:&nbsp;&nbsp; &nbsp;Endurance rating 69h</p>\r\n', 'galaxy-z-flip3-5g', 71, 'galaxy-z-flip3-5g.JPG', '2022-12-22', 1),
(36, 8, 'Gaming PC Core i5 6th Gen 16GB RAM 2TB HDD', '<h2><strong>Specification:</strong></h2>\r\n\r\n<p>Price :&nbsp; &nbsp; &nbsp;19,500<br />\r\nItem :&nbsp; &nbsp; &nbsp; Gaming PC<br />\r\nProcessor Type :&nbsp; &nbsp; &nbsp; Intel Core i5 6th Generation 6400<br />\r\nProcessor Speed :&nbsp; &nbsp; 2.70GHz Clock Speed up to 3.30GHz, 6M Cache<br />\r\nMain Board :&nbsp; &nbsp; &nbsp; &nbsp; Gigabyte H-110M<br />\r\nMonitor :&nbsp; &nbsp; &nbsp; No<br />\r\nRAM :&nbsp; &nbsp; &nbsp; 16GB DDR4 2666 BUS<br />\r\nHard Disk :&nbsp; &nbsp; &nbsp;2TB HDD 7200 RPM<br />\r\nDisk Type :&nbsp; &nbsp; &nbsp; HDD<br />\r\nGraphics Card :&nbsp; &nbsp; &nbsp;Intel HD 510<br />\r\nAudio / Speaker :&nbsp; &nbsp; &nbsp; HD Realtek Port Sound<br />\r\nNetworking :&nbsp; &nbsp; &nbsp;100 / 1000Mbps<br />\r\nKeyboard :&nbsp; &nbsp; &nbsp; &nbsp;Hi Power Standard USB Keyboard<br />\r\nMouse :&nbsp; &nbsp; &nbsp; &nbsp; Standard USB Mouse<br />\r\nModem :&nbsp; &nbsp; &nbsp; &nbsp;3G / 4G Support<br />\r\nCasing :&nbsp; &nbsp; &nbsp; &nbsp; ATX Xpress Casing<br />\r\n&nbsp;</p>\r\n', 'gaming-pc-core-i5-6th-gen-16gb-ram-2tb-hdd', 19, 'gaming-pc-core-i5-6th-gen-16gb-ram-2tb-hdd-price-bangladesh.jpg', '2022-12-22', 4),
(37, 4, 'Galaxy M53 5G - Official', '<h2><strong>Specification:</strong></h2>\r\n\r\n<p>NETWORK-&nbsp;<br />\r\nTechnology: &nbsp; &nbsp;GSM / HSPA / LTE / 5G</p>\r\n\r\n<p>LAUNCH- &nbsp; &nbsp;&nbsp;<br />\r\nAnnounced: &nbsp; &nbsp;2022, April 07<br />\r\nStatus: &nbsp; &nbsp; Available. Released 2022, April 22</p>\r\n\r\n<p>BODY- &nbsp; &nbsp;<br />\r\nDimensions: &nbsp; &nbsp;164.7 x 77 x 7.4 mm (6.48 x 3.03 x 0.29 in)<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Folded: 86.4 x 72.2 x 15.9-17.1 mm<br />\r\nWeight: &nbsp; &nbsp; 176 g (6.21 oz)<br />\r\nBuild: &nbsp; &nbsp; &nbsp;Glass front (Gorilla Glass 5), plastic back, plastic frame<br />\r\nSIM: &nbsp; &nbsp; &nbsp; &nbsp;Hybrid Dual SIM (Nano-SIM, dual stand-by)</p>\r\n\r\n<p>DISPLAY-&nbsp;<br />\r\nType: &nbsp; &nbsp; &nbsp;Super AMOLED Plus, 120Hz<br />\r\nSize: &nbsp; &nbsp; &nbsp;6.7 inches, 108.1 cm2 (~85.3% screen-to-body ratio)<br />\r\nResolution: &nbsp; &nbsp;1080 x 2408 pixels, 20:9 ratio (~394 ppi density)<br />\r\nProtection:&nbsp;&nbsp; &nbsp;Corning Gorilla Glass 5<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>PLATFORM-&nbsp;<br />\r\nOS: &nbsp; &nbsp; &nbsp; Android 12, upgradable to Android 13, One UI 5<br />\r\nChipset: &nbsp; &nbsp;MediaTek MT6877 Dimensity 900 (6 nm)<br />\r\nCPU: &nbsp; &nbsp; &nbsp;Octa-core (2x2.4 GHz Cortex-A78 &amp; 6x2.0 GHz Cortex-A55)<br />\r\nGPU: &nbsp; &nbsp; &nbsp;Mali-G68 MC4</p>\r\n\r\n<p>MEMORY- &nbsp; &nbsp;<br />\r\nCard slot: &nbsp; &nbsp;microSDXC (uses shared SIM slot)<br />\r\nInternal: &nbsp; &nbsp;128GB 6GB RAM, 128GB 8GB RAM, 256GB 8GB RAM</p>\r\n\r\n<p>MAIN CAMERA-&nbsp;<br />\r\nQuad: &nbsp; &nbsp;108 MP, f/1.8, (wide), PDAF<br />\r\n&nbsp;&nbsp; &nbsp;8 MP, f/2.2, (ultrawide), 1/4&quot;, 1.12&micro;m<br />\r\n&nbsp;&nbsp; &nbsp;2 MP, f/2.4, (depth)<br />\r\n&nbsp;&nbsp; &nbsp;2 MP, f/2.4, (macro)<br />\r\nFeatures: &nbsp; &nbsp;LED flash, panorama, HDR<br />\r\nVideo: &nbsp; &nbsp; &nbsp; 4K@30fps, 1080p@30/60fps</p>\r\n\r\n<p>SELFIE CAMERA- &nbsp; &nbsp;<br />\r\nSingle: &nbsp; &nbsp; 32 MP, f/2.2, 26mm (wide)<br />\r\nVideo: &nbsp; &nbsp; &nbsp;4K@30fps, 1080p@30fps</p>\r\n\r\n<p>SOUND- &nbsp; &nbsp;<br />\r\nLoudspeaker: &nbsp; &nbsp;Yes<br />\r\n3.5mm jack: &nbsp; &nbsp;No</p>\r\n\r\n<p>COMMS- &nbsp; &nbsp;<br />\r\nWLAN: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct<br />\r\nBluetooth: &nbsp; &nbsp;5.2, A2DP, LE<br />\r\nPositioning: &nbsp; &nbsp;GPS, GLONASS, GALILEO, BDS, QZSS<br />\r\nNFC: &nbsp; &nbsp; &nbsp; &nbsp;Yes (market/region dependent)<br />\r\nRadio: &nbsp; &nbsp; &nbsp;No<br />\r\nUSB: &nbsp; &nbsp; &nbsp; &nbsp;USB Type-C 2.0, OTG</p>\r\n\r\n<p>FEATURES-&nbsp;<br />\r\nSensors: &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;Fingerprint (side-mounted), accelerometer, gyro, proximity, compass</p>\r\n\r\n<p>BATTERY-&nbsp;<br />\r\nType: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Li-Ion 5000 mAh, non-removable<br />\r\nCharging: &nbsp; &nbsp;25W wired</p>\r\n\r\n<p>MISC- &nbsp; &nbsp;<br />\r\nColors: &nbsp; &nbsp; Green, Blue, Brown<br />\r\nModels: &nbsp; &nbsp; SM-M536B, SM-M536B/DS, SM-M536B/DSN<br />\r\nSAR:&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;1.31 W/kg (head)&nbsp;<br />\r\nSAR EU: &nbsp; &nbsp; 0.60 W/kg (head) &nbsp; &nbsp; 1.53 W/kg (body) &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>TESTS- &nbsp; &nbsp;<br />\r\nDisplay: &nbsp; &nbsp;Contrast ratio: Infinite (nominal)<br />\r\nCamera: &nbsp; &nbsp; &nbsp; &nbsp;Photo / Video<br />\r\nLoudspeaker: &nbsp; &nbsp;-29.3 LUFS (Average)<br />\r\nBattery life: &nbsp; &nbsp;Endurance rating 114h</p>\r\n<quillbot-extension-portal></quillbot-extension-portal>', 'galaxy-m53-5g-official', 49, 'galaxy-m53-5g-official.JPG', '2022-12-22', 2),
(38, 8, 'Desktop PC Intel Core i5 3rd Gen 4GB RAM 500GB HDD ', '<h2><strong>Specification:</strong></h2>\r\n\r\n<p>Item :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gaming PC</p>\r\n\r\n<p>Desktop Type:&nbsp;&nbsp;&nbsp;Standard PC<br />\r\nProcessor Type :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Intel Core i5-3470 3rd Generation Processor<br />\r\nProcessor Speed :&nbsp;&nbsp;&nbsp;&nbsp;3.20 GHz<br />\r\nMain Board :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;intelH61<br />\r\nMonitor :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No<br />\r\nRAM :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Samsung 4GB DDR-3<br />\r\nHard Disk :&nbsp;&nbsp;&nbsp;&nbsp;500 GB HDD<br />\r\nDisk Type :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HDD<br />\r\nGraphics Card :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 GB Built-in<br />\r\nAudio / Speaker :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HD Realtek Port Sound<br />\r\nNetworking :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;USB / LAN Port<br />\r\nKeyboard :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;USB Standard Keyboard<br />\r\nMouse :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Standard USB Mouse<br />\r\nModem :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Supported 2G / 3G<br />\r\nCasing :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ATX Thermal</p>\r\n', 'desktop-pc-intel-core-i5-3rd-gen-4gb-ram-500gb-hdd', 9, 'desktop-pc-intel-core-i5-3rd-gen-4gb-ram-500gb-hdd.jpg', '2022-12-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `gateway` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `gateway`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', 'PayPal', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', 'PayPal', '2018-05-10'),
(11, 13, '', 'bKash', '2022-11-03'),
(12, 13, '', 'Rocket', '2022-11-05'),
(13, 13, '', 'Rocket', '2022-11-14'),
(14, 9, '$899', 'Nagad', '2022-11-29'),
(15, 9, '', 'bKash', '2022-12-20'),
(16, 9, '$13', 'bKash', '2022-12-20'),
(17, 9, '$13', 'bKash', '2022-12-20'),
(18, 9, '', 'bKash', '2022-12-20'),
(28, 9, '130000', 'Rocket', '2023-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL DEFAULT 0,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text DEFAULT NULL,
  `contact_info` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) DEFAULT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'William', 'Jake', '', '', 'profile.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(13, 'nur********@gmail.com', '$2y$10$Hj44JznOy12mWbD1rKzgQOIXDZjm52vWvfULXb0y0utNedAzYAgcK', 0, 'john', 'Tarly', NULL, NULL, NULL, 1, '2fBYdmguMzr8', NULL, '2021-10-26'),
(14, 'nurulafser541@gmail.com', '$2y$10$2T2Eab3ow.xJ5hjkQeVvTOi0Wt.X0yXAhV6bl7LIszcU1oKFZyMba', 0, 'john', 'Tarly', NULL, NULL, NULL, 1, 'Iao2k7zmqWpg', 'pH8vke7KVQOC6tg', '2021-10-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
