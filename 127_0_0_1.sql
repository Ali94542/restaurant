-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 02:29 AM
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
-- Database: `finalproject`
--
CREATE DATABASE IF NOT EXISTS `finalproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `finalproject`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `adminname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`) VALUES
(93302, 'Nourhan Nabha');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `custname` varchar(100) NOT NULL,
  `productname` varchar(1000) NOT NULL,
  `productimage` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `productprice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `custname`, `productname`, `productimage`, `description`, `productprice`) VALUES
(41, 'nhh', 'THE FALSIES®Lash Lift Washable Mascara', 'maybellinemascara.jpg', 'Dubbed Best Lengthening Mascara of 2020 in the Allure Best of Beauty Awards.\r\nFalsies Lash Lift Mascara is a lifting mascara that delivers dramatic length and\r\nvolume-a lash lift look in a tube!Get an instant lash lift effect from a mascara.\r\nFalsies Lash Lift mascara with fiber delivers dramatic volume and long,lifted lashes,\r\na mascara that looks like false eyelashes!', '12$');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `custid` int(11) NOT NULL,
  `custname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`custid`, `custname`, `email`, `password`) VALUES
(1, 'nour', 'nourhan@gmail', '123'),
(2, 'name', 'name@gmail.com', '333'),
(3, 'han', 'no@gmail', 'hhh'),
(4, 'ooo', 'ooo@gmail.com', '555'),
(5, 'no', 'no@gmail.com', 'jjj'),
(6, 'hhhh', 'hhhh@gmail.com', 'nnn'),
(7, 'nhh', 'nhh@gmail.com', 'ggg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `custname` varchar(100) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `productname` varchar(1000) NOT NULL,
  `productimage` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `productprice` varchar(100) NOT NULL,
  `orderaddress` varchar(1000) NOT NULL,
  `ordercity` varchar(1000) NOT NULL,
  `orderregion` varchar(1000) NOT NULL,
  `orderpostalcode` varchar(1000) NOT NULL,
  `ordercountry` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `custname`, `email`, `productname`, `productimage`, `description`, `productprice`, `orderaddress`, `ordercity`, `orderregion`, `orderpostalcode`, `ordercountry`) VALUES
(39, 'ali', 'ag94542@gmail.com', '', '', '', '', 'dfghjk', 'fghjk', 'fghj', 'rtyu', 'rtyuijk');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `productname` varchar(1000) NOT NULL,
  `productimage` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `productprice` varchar(100) NOT NULL,
  `categoryname` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `productname`, `productimage`, `description`, `productprice`, `categoryname`) VALUES
(1, 'FIT ME® Matte + Poreless Foundation face makeup', 'maybellinefoundation.jpg', 'This lightweight foundation mattifies and refines pores and leaves a natural,seamless finish.Ideal for normal to oily skin,\r\nour exclusive matte foundation formula features micro-powders to control shine and blur pores.Pore minimizing foundation.\r\nAll day wear.Non-comedogenic.Dermatologist tested.Allergy tested.', '10$', 'makeup'),
(2, 'THE FALSIES®Lash Lift Washable Mascara', 'maybellinemascara.jpg', 'Dubbed Best Lengthening Mascara of 2020 in the Allure Best of Beauty Awards.\r\nFalsies Lash Lift Mascara is a lifting mascara that delivers dramatic length and\r\nvolume-a lash lift look in a tube!Get an instant lash lift effect from a mascara.\r\nFalsies Lash Lift mascara with fiber delivers dramatic volume and long,lifted lashes,\r\na mascara that looks like false eyelashes!', '12$', 'makeup'),
(3, 'Lusterglass Lipstick', 'maclipstick.jpeg', 'A lightweight, raspberry seed- and organic extra-virgin olive oil-infused lipstick\r\nthat delivers sheer and shiny colour with a long-wearing,lustrous finish.\r\nLusterglass lipstick is currently available in 28 shades.', '22$', 'makeup'),
(4, 'Prep+Prime Fix+Matte', 'macprimer.jpg', 'A lightweight mattifying spray that refreshes skin while instantly controlling the look\r\nof shine and oil.A lightweight mattifying spray that refreshes skin while instantly\r\ncontrolling the look of shine and oil on the surface without disturbing makeup.\r\nThe innovative formula contains powders,silica and other oil-absorbing agents\r\nto help set makeup,rebalance and mattify skin.\r\nFor all skin types.\r\nDermatologist tested.\r\nOphthalmologist tested.\r\nNon-acnegenic', '36$', 'makeup'),
(5, 'Radiant Concealer with Hydrating Serum', 'lorealconcealer.jpg', 'Formulated with Hydrating Serum and Glycerin.Minimizes the appearance\r\nof imperfections and dark circles,brightens skin creating a radiant complexion.\r\nDoes not settle into lines.', '11$', 'makeup'),
(6, 'Flash Cat Eye Waterproof Brush Tip Liquid Eyeliner', 'lorealeyelinear.jpeg', 'Precision brush tip liquid eyeliner and easy-to-use removable wing stencil.Long-lasting,\r\nbrush tip waterproof liquid eyeliner for a smudge-free cat eye look. A removable wing\r\nstencil helps you get perfectly precise wings,every time. Look can be achieved with\r\nor without the cat eyeliner stencil.Available in black and brown.Packaging may vary.\r\nWhat you receive may not be what is reflected on site.\r\nSuitable for all eye-shapes.\r\nDermatologist tested.', '6$', 'makeup'),
(7, 'New Dimension Shape+Sculpt Face Kit', 'esteecontour.jpeg', 'All-in-one contouring duo gives you the power to highlight,define and visibly sculpt\r\nthe look of the face you want-like an expert.', '33$', 'makeup'),
(8, 'All-In-One Brow Kit', 'esteebrow.jpg', 'Compact includes all you need for brows that wow.Create your custom,\r\nall-day color with 2 powder shades.Tweezers,2 mirrors and brush instantly\r\nshape,fill and define brows.Get your best brows now.', '22$', 'makeup'),
(9, 'J\'adore Eau De Parfum by Dior', 'jadoredior.jpg', 'J\'adore is a modern, glamorous fragrance, which has become incredibly popular, and for that reason developed in number of variants of different concentrations.J\'adore is a luminous fragrance. Its opulent, golden scent shimmers on skin like sunbeams. The classic and ambitions of this fragrance reflects in the bottle shaped like Greek amphora. J\'adore presents a new conception of Dior feminity, a scent so new and so in line with Dior style at the same time-sweet but balmy,slightly sharp floral with fresh mandarin in the top; jasmine, plum, orchid and rose in the heart; and amaranth, musk and blackberry in the trail.', '85$', 'perfume'),
(10, 'Hypnotic Poison Eau De Parfum by Dior', 'hypnticpoisondior.jpg', 'Dior\'s Hypnotic Poison has incredible popularity even among younger generations. Its seductive softness attracts attention with a sexy blend of flowers, spices and gourmet aromas, among which are those that tingle your imagination-liquorice, coconut, almonds and vanilla. This is also one of the compositions that made a revolution in the world of perfumery. Hypnotic Poison Eau de Parfum is extremely natural and draws its power and strength from carefully selected raw materials absolutes.', '100$', 'perfume'),
(11, 'Burberry Her Eau De Parfum by Burberry', 'burberryher.jpg', 'Burberry Her is designed to capture the youthful spirit of the city of London,the creative and eclectic metropolis;a spirit that is lively,adventurous and brave.It is made for those women who feel Londoners at heart.Her Eau de Parfum by Burberry is unique because it is a memorable signature,Crushed berry fruit from the top is combined with middle notes of violet and jasmine,based on woods and amber.', '155$', 'perfume'),
(12, 'Body Crystal Baccarat Eau De Parfum by Burberry', 'bodycrystalbaccaretburberry.jpg', 'Body Crystal Baccarat by Burberry is a Chypre Fruity fragrance for women.The composition of Body Crystal Baccarat is a rich and seductive interpretation of the original fragrance.Potent and feminine scent has been enhanced by rose essence and warm tonka beans that intensify the top notes of green absinthe and peach,the heart of iris,rose absolute and sandalwood and the base of cashmere,vanilla and musk.Since Burberry celebrates its 156th anniversary, there are only 156 bottles available.', '3500$', 'perfume'),
(13, 'Prada La Femme Eau De Parfum by Prada', 'pradalafemme.jpg', 'Prada La Femme by Prada is a Amber Floral fragrance for women.It is a classic Prada scent that is shunning from clichés and trends to redefine floral perfumes and femininity.Frangipani flower is interwoven with iris bearing the DNA of the house, enriched with spices, beeswax and tuberose.', '89$', 'perfume'),
(14, 'Prada Amber Eau De Parfum by Prada', 'pradaamber.jpg', 'Prada (Amber) by Prada is a Amber Woody fragrance for women.Prada by Prada is oriental fragrance based on amber the intense accord of which imbues the entire composition. Very modern variant of the classic fragrance. In the composition amber is surrounded by four main essences (essential oils): Indian sandalwood, Indonesian patchouli, French labdanum resin, and Siam benzoin.', '148$', 'perfume'),
(15, 'Gucci Bloom Eau De Parfum by Gucci', 'guccibloom.jpg', 'Gucci Bloom by Gucci is a Floral fragrance for women.Gucci Bloom celebrates the authenticity,vitality and diversity of the women they design for,and those that identify themselves in his vision.True to who they are,these young women experience life and its fruits,blooming into their real selves.Authenticity is woven through qualitative,highly-concentrated natural ingredients.Notes blossom out like a concentration of flowers, the unique expression of the new to the world ingredients, brings a new olfactory experience. Natural Tuberose absolute harvested from India is interlaced with natural Jasmine absolute.', '155$', 'perfume'),
(16, 'Gucci Flora Eau De Parfum by Gucci', 'gucciflora.jpg', 'Gucci Flora Eau de Parfum by Gucci is a Floral fragrance for women.It is characterized by fresh notes of agrums in the opening,combined with beautiful peony.A heart introduces balanced aromas of rose and osmanthus,while a base is created of patchouli and sandalwood.', '160$', 'perfume'),
(17, 'The Ordinary Hyaluronic Acid 2% + B5', 'theordinaryhyaluronic.jpeg', 'A hydration support formula with ultra-pure, vegan hyaluronic acid.The molecular size of HA determines its depth of delivery in the skin. This formulation combines low-,medium- and high-molecular weight HA, as well as a next-generation HA crosspolymer at a combined concentration of 2% for multi-depth hydration in a water-based formula.This system is supported with the addition of Vitamin B5 which also enhances surface hydration.', '16$', 'skincare'),
(18, 'The Ordinary Caffeine Solution 5% + EGCG', 'theordinarycaffeine.jpg', 'This light-textured formula contains an extremely high 5% concentration of caffeine,supplemented with highly-purified Epigallocatechin Gallatyl Glucoside (EGCG).Independent studies have shown that topical use of each of caffeine and EGCG can help reduce looks of puffiness and of dark circles in the eye contour.Additional studies have shown that caffeine can also reduce the appearance of cellulite.', '10$', 'skincare'),
(19, 'La Roche Posay Anthelios Mineral Tinted Sunscreen For Face SPF 50', 'larochesunscreen.jpg', 'This lightweight 100% mineral tinted face sunscreen with titanium dioxide was developed for sensitive skin.The fast-absorbing texture leaves a tinted matte finish on skin for a healthy glow.It is formulated with Cell-Ox Shield® technology: broad spectrum UVA/UVB protection with antioxidants.', '23$', 'skincare'),
(20, 'La Roche Posay Toleriane Double Repair Face Moisturizer', 'larochetoleriane.jpg', 'Toleriane Double Repair Face Moisturizer is formulated with dermatologist-recommended ingredients including ceramide-3,niacinamide, glycerin and La Roche-Posay Prebiotic Thermal Water.Double action helps repair skin\'s natural protective barrier after 1-hour and provide up to 48-hour hydration.Its lightweight cream texture easily absorbs into the skin to provide immediate comfort.Suitable for all skin types,including sensitive.This face moisturizer helps restore healthy-looking skin.', '22$', 'skincare'),
(21, 'Mario Badescu Facial Spray With Aloe Herbs And Rosewater', 'mariofacialspray.jpeg', 'Revitalize skin with dewy radiance.Whether spritzed for a hydrating boost or mid-day pick-me-up,our cult-favorite facial spray helps revive dehydrated skin anytime,anywhere.It\'s a rejuvenating mist infused with herbal and botanical extracts (like Aloe Vera, Gardenia, Rose, Bladderwrack and Thyme) that help soothe and re-energize skin—giving it a healthy,radiant glow.', '7$', 'skincare'),
(22, 'Mario Badescu Enzyme Cleansing Gel', 'mariogel.jpeg', 'Cleanse twice daily with our best-selling face wash.This Papaya and Grapefruit-infused formula removes excess oil and dulling surface impurities to rejuvenate the complexion—leaving skin bright and refreshed.', '14$', 'skincare'),
(23, 'CeraVe Acne Control Gel', 'ceraveacnegel.png', 'CeraVe Acne Control Gel is a hydrating,daily acne treatment with 2% salicylic acid that clears acne and helps prevent new breakouts from forming.It also offers gentle exfoliation with alpha- and beta-hydroxy acids (AHA and BHA) that help improve the appearance of pores along with calming niacinamide and barrier-strengthening ceramides.', '22$', 'skincare'),
(24, 'CeraVe Skin Renewing Retinol Serum', 'ceraveserum.jpg', 'CeraVe Skin Renewing Retinol Serum is a gentle,yet effective,daily retinol serum that provides you with a variety of anti-aging benefits.Ideal for all skin types,the non-comedogenic formula reduces the appearance of fine lines and wrinkles as it improves your skin\'s texture and radiance.', '25$', 'skincare'),
(25, 'Olaplex No.0 Intensive Bond Building Hair Treatment', 'olaplexno0.jpg', 'Our professional-inspired treatment primes your hair for deeper repair, rebuilds hair bonds, strengthens, and protects hair integrity.', '30$', 'haircare'),
(26, 'Briogeo Don\'t Despair,Repair!™Deep Conditioning Mask', 'briogeomask.jpg', 'This mask is clinically proven to boost hair strength,shine,and silkiness and\r\nimprove the long-term health of damaged hair.Formulated with rosehip oil,\r\nB-vitamins,and algae extract,this antioxidant-rich formula restores essential\r\nmoisture and hydration to dry,brittle,colored,or over-processed hair.Formulated with\r\n97% naturally derived ingredients.The Don\'t Despair,Repair! deep conditioning mask\r\nshould be used once per week or every two weeks.In between treatments,\r\nit is recommended to use one of Briogeo\'s shampoo and conditioner set.\r\nSuitable for all hair types.\r\nCruelty-Free', '39$', 'haircare'),
(27, 'Odele Volumizing Shampoo', 'odeleshampoo.jpg', 'Delivers weightless moisture,shine + fullness.Give your hair a boost of volume and take confidence\r\nin knowing that this salon-grade shampoo helps hair look and feel thicker over time.Fortified with amino acids\r\nto promote hair strength from root to tip,this shampoo cleans,nourishes,and moisturizes without weighing hair down.', '12$', 'haircare'),
(28, 'Oribe Gold Lust Repair And Restore Conditioner', 'oribeconditioner.jpg', 'Discover the fountain of youth for soft,shiny,ageless hair.Blending time-\r\nhonored oils and extracts—cypress,argan and maracuja—with our revolutionary\r\nbio-restorative complex,this ultra-hydrating conditioner softens and revitalizes,\r\nsmoothing each cuticle to undo the damage of time (and style).', '22$', 'haircare'),
(29, 'Oribe Gold Lust Repair And Restore Shampoo ', 'oribeshampoo.jpg', 'Reawaken your hair to its glossiest, healthiest prime. This rejuvenating cleanser combines centuries-old healing oils and extracts—cypress and argan—with our revolutionary bio-restorative complex to balance the scalp and reinforce the inner strength of each strand.', '170$', 'haircare');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Database: `fp`
--
CREATE DATABASE IF NOT EXISTS `fp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fp`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `desc1` varchar(2000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `desc1`, `image`, `date`) VALUES
(1, 0, 'ali', 'image/photo.jpg', '2023-05-09 15:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `date`) VALUES
(48, 'mahmoud ghader', 'mahmoudghader12@gmail.com', 'lutdlt', 'mahmoud ghader64572a4d0c85d5.14523883.jpg', '2023-05-07 07:33:00'),
(53, 'ali ghader', 'ag94542@gmail.com', '94542', 'ali ghader645733a2ea49e1.81038090.jpg', '2023-05-07 08:14:00'),
(54, 'kgliugli', 'ag42@gmail.com', '71429', 'kgliugli645952c50f3200.94237261.jpg', '2023-05-08 22:51:00'),
(55, 'kgliugli', 'hk12@gmail.com', '123', 'kgliugli645a35ff0d2435.00655256.jpg', '2023-05-09 15:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- Database: `newdb`
--
CREATE DATABASE IF NOT EXISTS `newdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newdb`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `pass` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`pass`, `email`) VALUES
('94542', 'ag94542@gmail.com');
--
-- Database: `ortrs-db`
--
CREATE DATABASE IF NOT EXISTS `ortrs-db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ortrs-db`;
--
-- Database: `ortrs_db`
--
CREATE DATABASE IF NOT EXISTS `ortrs_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ortrs_db`;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_list`
--

CREATE TABLE `reservation_list` (
  `id` int(30) NOT NULL,
  `table_id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `schedule` datetime NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0=pending,\r\n1=Confirmed,\r\n2=Arrived,\r\n3=No Show,\r\n4=Done,\r\n5=Cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation_list`
--

INSERT INTO `reservation_list` (`id`, `table_id`, `code`, `name`, `contact`, `email`, `address`, `schedule`, `status`, `date_created`, `date_updated`) VALUES
(5, 1, '20220400001', 'Mark Cooper', '09123456789', 'mcooper@sample.com', 'Sample Address only', '2022-04-21 15:30:00', 0, '2022-04-20 14:30:04', '2022-04-20 15:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Restaurant Table Reservation System'),
(6, 'short_name', 'ORTRS - PHP'),
(11, 'logo', 'uploads/logo.png?v=1650434160'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1650434107');

-- --------------------------------------------------------

--
-- Table structure for table `table_list`
--

CREATE TABLE `table_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_list`
--

INSERT INTO `table_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Table 1', 'This table is good for 2 persons', 1, 0, '2022-04-20 14:05:54', '2022-04-20 14:05:54'),
(2, 'Table 2', 'This table is good for 2 persons', 1, 0, '2022-04-20 14:06:04', '2022-04-20 14:06:04'),
(3, 'Table 3', 'This table is good for 4 persons', 1, 0, '2022-04-20 14:06:15', '2022-04-20 14:06:15'),
(4, 'Table 4', 'This table is good for 4 persons', 1, 0, '2022-04-20 14:06:22', '2022-04-20 14:06:22'),
(5, 'Table 5', 'This table is good for 4 persons', 1, 0, '2022-04-20 14:06:33', '2022-04-20 14:06:33'),
(6, 'Table 6', 'This table is good for 6 persons', 1, 0, '2022-04-20 14:07:55', '2022-04-20 14:07:55'),
(7, 'Table 7', 'This table is good for 8 persons', 1, 0, '2022-04-20 14:08:06', '2022-04-20 14:08:06'),
(8, 'Table 8', 'This table is good for 8 persons', 1, 0, '2022-04-20 14:08:20', '2022-04-20 14:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Ali', 'Ghader', 'ali', 'acfe1a55ef2426f97bc63dd35496cf5a', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2023-05-20 14:52:17'),
(2, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', 'uploads/avatars/2.png?v=1649834681', NULL, 2, '2022-04-13 15:01:30', '2022-04-13 15:28:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation_list`
--
ALTER TABLE `reservation_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_id` (`table_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_list`
--
ALTER TABLE `table_list`
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
-- AUTO_INCREMENT for table `reservation_list`
--
ALTER TABLE `reservation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `table_list`
--
ALTER TABLE `table_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation_list`
--
ALTER TABLE `reservation_list`
  ADD CONSTRAINT `table_id_fk_booking` FOREIGN KEY (`table_id`) REFERENCES `table_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `orts_db`
--
CREATE DATABASE IF NOT EXISTS `orts_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `orts_db`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'resto', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"finalproject\",\"fp\",\"newdb\",\"ortrs-db\",\"ortrs_db\",\"orts_db\",\"phpmyadmin\",\"resto\",\"test\",\"web1\",\"web2\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"resto\",\"table\":\"menu\"},{\"db\":\"resto\",\"table\":\"admin\"},{\"db\":\"finalproject\",\"table\":\"cart\"},{\"db\":\"finalproject\",\"table\":\"orders\"},{\"db\":\"finalproject\",\"table\":\"customers\"},{\"db\":\"finalproject\",\"table\":\"products\"},{\"db\":\"finalproject\",\"table\":\"admin\"},{\"db\":\"ortrs_db\",\"table\":\"system_info\"},{\"db\":\"ortrs_db\",\"table\":\"users\"},{\"db\":\"ortrs_db\",\"table\":\"reservation_list\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'fp', 'users', '{\"sorted_col\":\"`users`.`user_type` ASC\"}', '2023-04-27 15:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-06-16 00:27:32', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":298}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `resto`
--
CREATE DATABASE IF NOT EXISTS `resto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `resto`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `date`) VALUES
(5, 'ali', 'ag94542@gmail.com', '94542', '0000-00-00 00:00:00'),
(18, 'rayan', 'rayanchamas@gmail.com', '1441992', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `price`, `image`) VALUES
(27, 'burger', '20', 'food-1.png'),
(28, 'pizza', '12', 'food-2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `web1`
--
CREATE DATABASE IF NOT EXISTS `web1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `web1`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('ali ghader', '94542'),
('mahmoud ghader', '5242');
--
-- Database: `web2`
--
CREATE DATABASE IF NOT EXISTS `web2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `web2`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `email`) VALUES
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('ali ghader', 'ag94542@iul.edu.lb'),
('', ''),
('ryeraeturt', 'ag94542@iul.edu.lb'),
('ryeraeturt', 'ag94542@iul.edu.lb'),
('ali ghader', 'ag94543@gmail.com'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('ryeraeturt', 'ag94542@iul.edu.lb'),
('', ''),
('', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
