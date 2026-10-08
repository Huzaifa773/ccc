-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2026 at 01:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfume_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `provider` varchar(191) NOT NULL,
  `providerAccountId` varchar(191) NOT NULL,
  `refresh_token` text DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `token_type` varchar(191) DEFAULT NULL,
  `scope` varchar(191) DEFAULT NULL,
  `id_token` text DEFAULT NULL,
  `session_state` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `fullName` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `line1` varchar(191) NOT NULL,
  `line2` varchar(191) DEFAULT NULL,
  `city` varchar(191) NOT NULL,
  `province` varchar(191) NOT NULL,
  `postalCode` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT 'Pakistan',
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `userId`, `fullName`, `phone`, `line1`, `line2`, `city`, `province`, `postalCode`, `country`, `isDefault`, `createdAt`, `updatedAt`) VALUES
('cmuf1184f0013103vnbfcf9tt', 'cmuf1183s000x103vhnsv9jzi', 'Demo Customer', '+92 300 1111111', '123 Clifton Block 5', NULL, 'Karachi', 'Sindh', '75600', 'Pakistan', 1, '2026-09-24 04:23:29.631', '2026-09-24 04:23:29.631'),
('cmufbtbvh0006rtqiqbid0bur', 'cmufb74op0000rtqig9d3tuck', 'Muhammed Huzaifa', '03112485852', 'OrangiTwon Karachi', 'Sector 11/E aqsa masjid', 'karachi', 'karachi', '441526', 'Pakistan', 1, '2026-09-24 09:25:17.018', '2026-09-24 09:25:17.018'),
('cmufc3s2s000nrtqih1suvo3m', 'cmufc0tzy000drtqia5qpl5if', 'anaskhan', '03254652485', 'jxq hsxkj akj kjnxiuqbx', 'zzAUOHAN OASCAKCBEWYC', 'karachi', 'KARACHI', '84132489', 'Pakistan', 1, '2026-09-24 09:33:24.580', '2026-09-24 09:33:24.580'),
('cmugu4z2r0006u26xvid8ad5v', 'cmugtuxkw0000u26xcp5ns9wk', 'Muhammed Huzaifa', '+923215154152', 'orangi twon', '', 'Karachi', 'Sindh', '40153304', 'Pakistan', 1, '2026-09-25 10:45:59.571', '2026-09-25 10:45:59.571');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `userId`, `createdAt`, `updatedAt`) VALUES
('cmuf11840000z103v9h9vhz27', 'cmuf1183s000x103vhnsv9jzi', '2026-09-24 04:23:29.616', '2026-09-24 04:23:29.616'),
('cmufb74ou0001rtqiwjwh2pz5', 'cmufb74op0000rtqig9d3tuck', '2026-09-24 09:08:01.271', '2026-09-24 09:08:01.271'),
('cmufc0tzy000ertqihocb4qew', 'cmufc0tzy000drtqia5qpl5if', '2026-09-24 09:31:07.083', '2026-09-24 09:31:07.083'),
('cmugtuxkz0001u26x1zjadz4y', 'cmugtuxkw0000u26xcp5ns9wk', '2026-09-25 10:38:11.070', '2026-09-25 10:38:11.070');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` varchar(191) NOT NULL,
  `cartId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `isActive`, `createdAt`, `updatedAt`) VALUES
('cmuf117al0000103vdxtrqcd7', 'Men\'s Perfumes', 'mens-perfumes', 'Bold, timeless scents crafted for men.', NULL, 1, '2026-09-24 04:23:28.556', '2026-09-24 04:23:28.556'),
('cmuf117b80001103vwh8b9tte', 'Women\'s Perfumes', 'womens-perfumes', 'Elegant, refined fragrances for women.', NULL, 1, '2026-09-24 04:23:28.580', '2026-09-24 04:23:28.580'),
('cmuf117bd0002103v44yko4pf', 'Unisex Perfumes', 'unisex-perfumes', 'Fragrances designed to be worn by anyone.', NULL, 1, '2026-09-24 04:23:28.585', '2026-09-24 04:23:28.585'),
('cmuf117bk0003103vob2l5dwy', 'Oud', 'oud', 'Rich, woody oud-based fragrances.', NULL, 1, '2026-09-24 04:23:28.592', '2026-09-24 04:23:28.592'),
('cmuf117br0004103vwot082ly', 'Attar', 'attar', 'Alcohol-free traditional concentrated oils.', NULL, 1, '2026-09-24 04:23:28.599', '2026-09-24 04:23:28.599'),
('cmuf117bw0005103vx0irvsr4', 'Gift Sets', 'gift-sets', 'Curated fragrance sets, perfect for gifting.', NULL, 1, '2026-09-24 04:23:28.604', '2026-09-24 04:23:28.604'),
('cmuf117c10006103v31vh5w6a', 'Premium Collection', 'premium-collection', 'Our most luxurious, limited fragrances.', NULL, 1, '2026-09-24 04:23:28.609', '2026-09-24 04:23:28.609'),
('cmuf117c50007103vz2rogm4j', 'New Arrivals', 'new-arrivals', 'The latest additions to our catalog.', NULL, 1, '2026-09-24 04:23:28.614', '2026-09-24 04:23:28.614');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(191) NOT NULL,
  `orderNumber` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `addressId` varchar(191) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `shippingCost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL,
  `paymentMethod` enum('COD','BANK_TRANSFER','JAZZCASH','EASYPAISA','SAFEPAY') NOT NULL,
  `paymentStatus` enum('PENDING','PAID','FAILED','REFUNDED') NOT NULL DEFAULT 'PENDING',
  `orderStatus` enum('PENDING','CONFIRMED','PROCESSING','SHIPPED','DELIVERED','CANCELLED') NOT NULL DEFAULT 'PENDING',
  `customerName` varchar(191) NOT NULL,
  `customerEmail` varchar(191) NOT NULL,
  `customerPhone` varchar(191) NOT NULL,
  `notes` text DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderNumber`, `userId`, `addressId`, `subtotal`, `shippingCost`, `discount`, `total`, `paymentMethod`, `paymentStatus`, `orderStatus`, `customerName`, `customerEmail`, `customerPhone`, `notes`, `createdAt`, `updatedAt`) VALUES
('cmufbtcwo0009rtqiio16jiop', 'ORD-20260924-8P9T', 'cmufb74op0000rtqig9d3tuck', 'cmufbtbvh0006rtqiqbid0bur', 21000.00, 0.00, 0.00, 21000.00, 'EASYPAISA', 'PAID', 'CONFIRMED', 'Muhammed Huzaifa', 'huzaifamuhammed597@gmail.com', '031542859825', NULL, '2026-09-24 09:25:18.359', '2026-09-24 09:29:19.782'),
('cmufc3t29000qrtqiea3g4o6g', 'ORD-20260924-WD8I', 'cmufc0tzy000drtqia5qpl5if', 'cmufc3s2s000nrtqih1suvo3m', 57900.00, 0.00, 0.00, 57900.00, 'BANK_TRANSFER', 'FAILED', 'CANCELLED', 'Anaskhan', 'anaskhan@gmail.com', '03524685675', NULL, '2026-09-24 09:33:25.857', '2026-09-24 09:36:15.313'),
('cmugu50gm0009u26xhj3y1zyk', 'ORD-20260925-PC4O', 'cmugtuxkw0000u26xcp5ns9wk', 'cmugu4z2r0006u26xvid8ad5v', 17900.00, 0.00, 0.00, 17900.00, 'COD', 'PAID', 'CONFIRMED', 'Muhammed Huzaifa', 'huzaifa2409e@aptechorangi.com', '03154525145', NULL, '2026-09-25 10:46:01.366', '2026-09-25 11:52:18.482');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` varchar(191) NOT NULL,
  `orderId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `orderId`, `productId`, `name`, `price`, `quantity`, `createdAt`) VALUES
('cmufbtcwp000brtqiujdgqq25', 'cmufbtcwo0009rtqiio16jiop', 'cmuf117cz000b103vfth45ztb', 'Golden Iris', 21000.00, 1, '2026-09-24 09:25:18.359'),
('cmufc3t2a000srtqiwek0dxus', 'cmufc3t29000qrtqiea3g4o6g', 'cmuf117cb0009103vix3j11p1', 'Noir Absolu', 15900.00, 1, '2026-09-24 09:33:25.857'),
('cmufc3t2a000trtqiguhk3xnj', 'cmufc3t29000qrtqiea3g4o6g', 'cmuf117cz000b103vfth45ztb', 'Golden Iris', 21000.00, 2, '2026-09-24 09:33:25.857'),
('cmugu50gm000bu26x6a5kspr7', 'cmugu50gm0009u26xhj3y1zyk', 'cmuf117fx000v103vy5p31bre', 'Jasmine Nightfall', 17900.00, 1, '2026-09-25 10:46:01.366');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` varchar(191) NOT NULL,
  `orderId` varchar(191) NOT NULL,
  `method` enum('COD','BANK_TRANSFER','JAZZCASH','EASYPAISA','SAFEPAY') NOT NULL,
  `status` enum('INITIATED','AWAITING_VERIFICATION','SUCCESS','FAILED','CANCELLED') NOT NULL DEFAULT 'INITIATED',
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(191) NOT NULL DEFAULT 'PKR',
  `gatewayTxnId` varchar(191) DEFAULT NULL,
  `gatewayReference` varchar(191) DEFAULT NULL,
  `gatewayRawResponse` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gatewayRawResponse`)),
  `proofImageUrl` varchar(191) DEFAULT NULL,
  `verifiedById` varchar(191) DEFAULT NULL,
  `verifiedAt` datetime(3) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `orderId`, `method`, `status`, `amount`, `currency`, `gatewayTxnId`, `gatewayReference`, `gatewayRawResponse`, `proofImageUrl`, `verifiedById`, `verifiedAt`, `createdAt`, `updatedAt`) VALUES
('cmufbtcwp000crtqie32vje9n', 'cmufbtcwo0009rtqiio16jiop', 'EASYPAISA', 'INITIATED', 21000.00, 'PKR', NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-24 09:25:18.359', '2026-09-24 09:25:18.359'),
('cmufc3t2a000urtqiuyi3bonb', 'cmufc3t29000qrtqiea3g4o6g', 'BANK_TRANSFER', 'AWAITING_VERIFICATION', 57900.00, 'PKR', NULL, '1891357132415532', NULL, 'http://localhost/phpmyadmin/index.php?route=/sql&db=perfume_store&table=users&pos=0', NULL, NULL, '2026-09-24 09:33:25.857', '2026-09-24 09:34:10.684'),
('cmugu50gm000cu26x0rdd39rn', 'cmugu50gm0009u26xhj3y1zyk', 'COD', 'SUCCESS', 17900.00, 'PKR', NULL, NULL, NULL, NULL, NULL, NULL, '2026-09-25 10:46:01.366', '2026-09-25 10:46:01.366');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discountPrice` decimal(10,2) DEFAULT NULL,
  `brand` varchar(191) NOT NULL,
  `size` varchar(191) NOT NULL,
  `fragranceType` enum('EAU_DE_PARFUM','EAU_DE_TOILETTE','EAU_DE_COLOGNE','PARFUM_EXTRAIT','ATTAR','BODY_MIST') NOT NULL,
  `sku` varchar(191) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `isFeatured` tinyint(1) NOT NULL DEFAULT 0,
  `isBestSeller` tinyint(1) NOT NULL DEFAULT 0,
  `isNewArrival` tinyint(1) NOT NULL DEFAULT 0,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `categoryId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `price`, `discountPrice`, `brand`, `size`, `fragranceType`, `sku`, `stock`, `isFeatured`, `isBestSeller`, `isNewArrival`, `isActive`, `categoryId`, `createdAt`, `updatedAt`) VALUES
('cmuf117cb0009103vix3j11p1', 'Noir Absolu', 'noir-absolu', 'A deep, smoky blend of oud, amber and dark spices for the evening.', 18500.00, 15900.00, 'Maison Charcoal', '100ml', 'EAU_DE_PARFUM', 'PF-NOIR-100', 39, 1, 1, 0, 1, 'cmuf117al0000103vdxtrqcd7', '2026-09-24 04:23:28.618', '2026-09-24 09:33:25.880'),
('cmuf117cz000b103vfth45ztb', 'Golden Iris', 'golden-iris', 'Powdery iris and champagne accord wrapped in warm vanilla.', 21000.00, NULL, 'Maison Charcoal', '50ml', 'EAU_DE_PARFUM', 'PF-IRIS-50', 22, 1, 0, 1, 1, 'cmuf117b80001103vwh8b9tte', '2026-09-24 04:23:28.643', '2026-09-24 09:33:25.888'),
('cmuf117da000d103vb4h5z192', 'Velvet Oud Royale', 'velvet-oud-royale', 'Premium Cambodian oud layered with saffron and rose.', 34500.00, 29900.00, 'Oud Heritage', '50ml', 'PARFUM_EXTRAIT', 'PF-OUDR-50', 15, 1, 1, 0, 1, 'cmuf117bk0003103vob2l5dwy', '2026-09-24 04:23:28.654', '2026-09-24 04:23:28.654'),
('cmuf117dj000f103vfz12hn0d', 'Musk Al Ameer Attar', 'musk-al-ameer-attar', 'Traditional alcohol-free white musk attar oil.', 8900.00, NULL, 'Al Ameer', '12ml', 'ATTAR', 'PF-ATTAR-12', 60, 0, 0, 1, 1, 'cmuf117br0004103vwot082ly', '2026-09-24 04:23:28.663', '2026-09-24 04:23:28.663'),
('cmuf117dt000h103v42mobmoz', 'Citrus Neutral', 'citrus-neutral', 'Fresh bergamot and white tea, light enough for daily wear by anyone.', 12500.00, 10900.00, 'Maison Charcoal', '100ml', 'EAU_DE_TOILETTE', 'PF-CIT-100', 55, 0, 1, 0, 1, 'cmuf117bd0002103v44yko4pf', '2026-09-24 04:23:28.673', '2026-09-24 04:23:28.673'),
('cmuf117e2000j103vhygr7ct1', 'Royal Duo Gift Set', 'royal-duo-gift-set', 'A matching his-and-hers 50ml gift set in a satin box.', 27500.00, 24900.00, 'Maison Charcoal', '2 x 50ml', 'EAU_DE_PARFUM', 'PF-GIFT-02', 20, 1, 0, 0, 1, 'cmuf117bw0005103vx0irvsr4', '2026-09-24 04:23:28.683', '2026-09-24 04:23:28.683'),
('cmuf117ec000l103vvnhwr3yk', 'Amber Nocturne', 'amber-nocturne', 'Smoky amber, tobacco leaf and dark chocolate for cold nights.', 19800.00, NULL, 'Noir House', '75ml', 'EAU_DE_PARFUM', 'PF-AMBN-75', 30, 0, 1, 0, 1, 'cmuf117al0000103vdxtrqcd7', '2026-09-24 04:23:28.693', '2026-09-24 04:23:28.693'),
('cmuf117em000n103vaqn9upxa', 'Rose Cashmere', 'rose-cashmere', 'Turkish rose petals blended into soft cashmere musk.', 23500.00, 19900.00, 'Maison Charcoal', '50ml', 'EAU_DE_PARFUM', 'PF-ROSE-50', 18, 1, 0, 0, 1, 'cmuf117b80001103vwh8b9tte', '2026-09-24 04:23:28.703', '2026-09-24 04:23:28.703'),
('cmuf117ex000p103vcgx0h76k', 'Sultan\'s Oud Extrait', 'sultans-oud-extrait', 'Our most concentrated, longest-lasting oud extrait — limited batch.', 45900.00, NULL, 'Oud Heritage', '30ml', 'PARFUM_EXTRAIT', 'PF-SULT-30', 8, 1, 0, 0, 1, 'cmuf117c10006103v31vh5w6a', '2026-09-24 04:23:28.713', '2026-09-24 04:23:28.713'),
('cmuf117f9000r103v61256wr1', 'Fresh Linen Mist', 'fresh-linen-mist', 'A light body mist with notes of clean cotton and white musk.', 6900.00, 5900.00, 'Everyday Co.', '150ml', 'BODY_MIST', 'PF-LINEN-150', 80, 0, 0, 1, 1, 'cmuf117bd0002103v44yko4pf', '2026-09-24 04:23:28.725', '2026-09-24 04:23:28.725'),
('cmuf117fk000t103vagf1uevk', 'Saffron Oud Attar', 'saffron-oud-attar', 'Deep saffron threads infused into pure oud oil, alcohol-free.', 14900.00, NULL, 'Al Ameer', '12ml', 'ATTAR', 'PF-SAFF-12', 35, 0, 0, 1, 1, 'cmuf117br0004103vwot082ly', '2026-09-24 04:23:28.737', '2026-09-24 04:23:28.737'),
('cmuf117fx000v103vy5p31bre', 'Jasmine Nightfall', 'jasmine-nightfall', 'Heady jasmine sambac balanced with soft sandalwood.', 20500.00, 17900.00, 'Noir House', '75ml', 'EAU_DE_PARFUM', 'PF-JASM-75', 21, 0, 1, 0, 1, 'cmuf117b80001103vwh8b9tte', '2026-09-24 04:23:28.749', '2026-09-25 10:46:01.387');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `altText` varchar(191) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `productId`, `url`, `altText`, `position`, `createdAt`) VALUES
('cmuf117cb0009103vix3j11p1-seed-0', 'cmuf117cb0009103vix3j11p1', 'https://images.unsplash.com/photo-1592945403244-b3fbafd7f539?w=800&q=80&auto=format', 'Noir Absolu', 0, '2026-09-24 04:23:28.635'),
('cmuf117cz000b103vfth45ztb-seed-0', 'cmuf117cz000b103vfth45ztb', 'https://images.unsplash.com/photo-1587017539504-67cfbddac569?w=800&q=80&auto=format', 'Golden Iris', 0, '2026-09-24 04:23:28.649'),
('cmuf117da000d103vb4h5z192-seed-0', 'cmuf117da000d103vb4h5z192', 'https://images.unsplash.com/photo-1615368144592-0e5f56ec1a68?w=800&q=80&auto=format', 'Velvet Oud Royale', 0, '2026-09-24 04:23:28.659'),
('cmuf117dj000f103vfz12hn0d-seed-0', 'cmuf117dj000f103vfz12hn0d', 'https://images.unsplash.com/photo-1592945403244-b3fbafd7f539?w=800&q=80&auto=format', 'Musk Al Ameer Attar', 0, '2026-09-24 04:23:28.668'),
('cmuf117dt000h103v42mobmoz-seed-0', 'cmuf117dt000h103v42mobmoz', 'https://images.unsplash.com/photo-1541643600914-78b084683601?w=800&q=80&auto=format', 'Citrus Neutral', 0, '2026-09-24 04:23:28.678'),
('cmuf117e2000j103vhygr7ct1-seed-0', 'cmuf117e2000j103vhygr7ct1', 'https://images.unsplash.com/photo-1523293182086-7651a899d37f?w=800&q=80&auto=format', 'Royal Duo Gift Set', 0, '2026-09-24 04:23:28.688'),
('cmuf117ec000l103vvnhwr3yk-seed-0', 'cmuf117ec000l103vvnhwr3yk', 'https://images.unsplash.com/photo-1594035910387-fea47794261f?w=800&q=80&auto=format', 'Amber Nocturne', 0, '2026-09-24 04:23:28.697'),
('cmuf117em000n103vaqn9upxa-seed-0', 'cmuf117em000n103vaqn9upxa', 'https://images.unsplash.com/photo-1615634260167-c8cdede054de?w=800&q=80&auto=format', 'Rose Cashmere', 0, '2026-09-24 04:23:28.708'),
('cmuf117ex000p103vcgx0h76k-seed-0', 'cmuf117ex000p103vcgx0h76k', 'https://images.unsplash.com/photo-1592945403244-b3fbafd7f539?w=800&q=80&auto=format', 'Sultan\'s Oud Extrait', 0, '2026-09-24 04:23:28.720'),
('cmuf117f9000r103v61256wr1-seed-0', 'cmuf117f9000r103v61256wr1', 'https://images.unsplash.com/photo-1596462502278-27bfdc403348?w=800&q=80&auto=format', 'Fresh Linen Mist', 0, '2026-09-24 04:23:28.731'),
('cmuf117fk000t103vagf1uevk-seed-0', 'cmuf117fk000t103vagf1uevk', 'https://images.unsplash.com/photo-1615368144592-0e5f56ec1a68?w=800&q=80&auto=format', 'Saffron Oud Attar', 0, '2026-09-24 04:23:28.743'),
('cmuf117fx000v103vy5p31bre-seed-0', 'cmuf117fx000v103vy5p31bre', 'https://images.unsplash.com/photo-1587017539504-67cfbddac569?w=800&q=80&auto=format', 'Jasmine Nightfall', 0, '2026-09-24 04:23:28.755');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `sessionToken` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `expires` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `emailVerified` datetime(3) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `passwordHash` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `role` enum('CUSTOMER','ADMIN') NOT NULL DEFAULT 'CUSTOMER',
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `emailVerified`, `phone`, `passwordHash`, `image`, `role`, `isActive`, `createdAt`, `updatedAt`) VALUES
('cmuf117rn000w103v015fllgq', 'Store Admin', 'admin@demo-perfume.test', NULL, '+92 300 0000000', '123456789', NULL, 'ADMIN', 1, '2026-09-24 04:23:29.171', '2026-09-24 04:23:29.171'),
('cmuf1183s000x103vhnsv9jzi', 'Demo Customer', 'customer@demo-perfume.test', NULL, '+92 300 1111111', '$2a$12$Q2nukN2Yw6gWZmXto4H8qOR1saoXn1jHIBvfOILhZC5vxG4bXMsZ.', NULL, 'CUSTOMER', 1, '2026-09-24 04:23:29.608', '2026-09-24 04:23:29.608'),
('cmufb74op0000rtqig9d3tuck', 'Muhammed Huzaifa', 'huzaifamuhammed597@gmail.com', NULL, '031542859825', '$2a$12$Z.JhbRsmT59T2jfnoJ/l5.UmM7zKDsYAeQSBF1zWCPAs6oDgZdSfa', NULL, 'ADMIN', 1, '2026-09-24 09:08:01.271', '2026-09-24 09:08:01.271'),
('cmufc0tzy000drtqia5qpl5if', 'Anaskhan', 'anaskhan@gmail.com', NULL, '03524685675', '$2a$12$HnNLUrMIcgjnuEGGZ.PqKOBrO5B3yP1.5GUSYgLAgMhFSfDtrGmRK', NULL, 'CUSTOMER', 1, '2026-09-24 09:31:07.083', '2026-09-24 09:31:07.083'),
('cmugtuxkw0000u26xcp5ns9wk', 'Muhammed Huzaifa', 'huzaifa2409e@aptechorangi.com', NULL, '03154525145', '$2a$12$BOBlS9/y6PYIWez5QDTkeeRN4GoTyISUFr8e8CyHFxJ1fotlN4B0u', NULL, 'CUSTOMER', 1, '2026-09-25 10:38:11.070', '2026-09-25 10:38:11.070');

-- --------------------------------------------------------

--
-- Table structure for table `verification_tokens`
--

CREATE TABLE `verification_tokens` (
  `identifier` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `expires` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `userId`, `createdAt`) VALUES
('cmuf118460011103v79n2cgph', 'cmuf1183s000x103vhnsv9jzi', '2026-09-24 04:23:29.623'),
('cmufb74ou0002rtqidowmje1s', 'cmufb74op0000rtqig9d3tuck', '2026-09-24 09:08:01.271'),
('cmufc0tzz000frtqihia5mcez', 'cmufc0tzy000drtqia5qpl5if', '2026-09-24 09:31:07.083'),
('cmugtuxl00002u26xu0d0hrgx', 'cmugtuxkw0000u26xcp5ns9wk', '2026-09-25 10:38:11.070');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

CREATE TABLE `wishlist_items` (
  `id` varchar(191) NOT NULL,
  `wishlistId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('82bf465e-26ab-4159-8adb-35cd1e30221b', '19cfde32fe86f692732ce9b2b1c334c93510019f396c5ad0a01d2f090688e58d', '2026-09-24 04:22:16.729', '20260924042214_init', NULL, NULL, '2026-09-24 04:22:15.016', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_provider_providerAccountId_key` (`provider`,`providerAccountId`),
  ADD KEY `accounts_userId_idx` (`userId`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_userId_idx` (`userId`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_userId_key` (`userId`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_items_cartId_productId_key` (`cartId`,`productId`),
  ADD KEY `cart_items_productId_idx` (`productId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_key` (`name`),
  ADD UNIQUE KEY `categories_slug_key` (`slug`),
  ADD KEY `categories_isActive_idx` (`isActive`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_orderNumber_key` (`orderNumber`),
  ADD KEY `orders_userId_idx` (`userId`),
  ADD KEY `orders_orderStatus_idx` (`orderStatus`),
  ADD KEY `orders_paymentStatus_idx` (`paymentStatus`),
  ADD KEY `orders_addressId_fkey` (`addressId`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_orderId_idx` (`orderId`),
  ADD KEY `order_items_productId_idx` (`productId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_orderId_idx` (`orderId`),
  ADD KEY `payments_status_idx` (`status`),
  ADD KEY `payments_method_idx` (`method`),
  ADD KEY `payments_verifiedById_fkey` (`verifiedById`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_key` (`slug`),
  ADD UNIQUE KEY `products_sku_key` (`sku`),
  ADD KEY `products_categoryId_idx` (`categoryId`),
  ADD KEY `products_isFeatured_idx` (`isFeatured`),
  ADD KEY `products_isBestSeller_idx` (`isBestSeller`),
  ADD KEY `products_isNewArrival_idx` (`isNewArrival`),
  ADD KEY `products_isActive_idx` (`isActive`);
ALTER TABLE `products` ADD FULLTEXT KEY `products_name_brand_idx` (`name`,`brand`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_productId_idx` (`productId`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reviews_userId_productId_key` (`userId`,`productId`),
  ADD KEY `reviews_productId_idx` (`productId`),
  ADD KEY `reviews_rating_idx` (`rating`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sessions_sessionToken_key` (`sessionToken`),
  ADD KEY `sessions_userId_idx` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_key` (`email`),
  ADD KEY `users_role_idx` (`role`);

--
-- Indexes for table `verification_tokens`
--
ALTER TABLE `verification_tokens`
  ADD UNIQUE KEY `verification_tokens_token_key` (`token`),
  ADD UNIQUE KEY `verification_tokens_identifier_token_key` (`identifier`,`token`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_userId_key` (`userId`);

--
-- Indexes for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlist_items_wishlistId_productId_key` (`wishlistId`,`productId`),
  ADD KEY `wishlist_items_productId_idx` (`productId`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cartId_fkey` FOREIGN KEY (`cartId`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_items_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_addressId_fkey` FOREIGN KEY (`addressId`) REFERENCES `addresses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_orderId_fkey` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_orderId_fkey` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_verifiedById_fkey` FOREIGN KEY (`verifiedById`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD CONSTRAINT `wishlist_items_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_items_wishlistId_fkey` FOREIGN KEY (`wishlistId`) REFERENCES `wishlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
