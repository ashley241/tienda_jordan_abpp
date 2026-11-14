-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2026 at 03:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tienda_jordan`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Calzado'),
(2, 'Ropa'),
(3, 'Accesorios');

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `usuario_nombre` varchar(100) DEFAULT NULL,
  `usuario_email` varchar(100) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL,
  `descripcion_adicional` text DEFAULT NULL,
  `productos` text DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `fecha_pedido` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuario_nombre`, `usuario_email`, `telefono`, `direccion`, `ciudad`, `pais`, `cantidad`, `metodo_pago`, `descripcion_adicional`, `productos`, `total`, `fecha_pedido`) VALUES
(1, 'ASDD', 'a.24308051280499@cbtis128.edu.mx', '32434234234', 'ASDASDS', 'SFAWF', 'ASDFASDS', 1, 'Tarjeta de Crédito o Débito', 'ASDSA', 'Pantalón Jogger Jordan', 65.00, '2026-11-14 02:17:12'),
(2, 'ASDD', 'a.24308051280499@cbtis128.edu.mx', '32434234234', 'SADSADAS', 'SFAWF', 'DASDASD', 1, 'PayPal', 'ASDAD', 'Balón de Basquetbol Jordan, Air Jordan 11 Low', 235.00, '2026-11-14 02:23:22'),
(3, 'SD', 'a.24308051280499@cbtis128.edu.mx', 'SD', 'SAD', 'ASDSDS', 'DASDSD', 1, 'Tarjeta de Crédito o Débito', 'ASDASDS', 'Cangurera Jordan Monogram', 35.00, '2026-11-14 02:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `imagen`, `categoria_id`) VALUES
(1, 'Air Jordan 1 Retro', 180.00, 'https://images.unsplash.com/photo-1584735935682-2f2b69dff9d2?q=80&w=400', 1),
(2, 'Air Jordan 4 OG', 210.00, 'https://images.unsplash.com/photo-1597045566677-8cf032ed6634?q=80&w=400', 1),
(3, 'Air Jordan 11 Low', 190.00, 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?q=80&w=400', 1),
(4, 'Air Jordan 1 Retro Low', 200.00, 'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/913475d5-7d4f-44d8-b249-662c4d99cfd2/AIR+JORDAN+1+RETRO+LOW+OG.png', 1),
(5, 'Air Jordan 1 Mid SE Negro', 130.00, 'https://product-media.cdn.t1.com/product-channel/19530/2026/6/20/eca2f7533d1ec63a3f453efacc424fdb.jpg?scale=550', 1),
(6, 'Air Jordan 1 Azul', 120.00, 'https://product-media.cdn.t1.com/product-channel/19530/2026/4/25/3b70c632bae2864282cbcb72b8014616.jpg?scale=550', 1),
(7, 'Air Jordan 1 High OG', 100.00, 'https://lustmexico.com/cdn/shop/files/DZ5485-003-1.jpg?v=1771369341&width=1600', 1),
(8, 'Tenis Jordan Spizike Low', 98.00, 'https://dpjye2wk9gi5z.cloudfront.net/wcsstore/ExtendedSitesCatalogAssetStore/images/catalog/zoom/1039016-0005V1.jpg', 1),
(9, 'Air Jordan 1 Low Grey', 124.00, 'https://deu.com.mx/_next/image?url=https%3A%2F%2Fimg.deu.agency%2Fdeu%2Fair-jordan-1-low-grey-id-444%2Flateral.webp&w=640&q=75', 1),
(10, 'Air Jordan 1 Mid', 185.00, 'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e4502ae2-844a-4b08-a5b6-997c92820a50/WMNS+AIR+JORDAN+1+MID.png', 1),
(11, 'Sudadera Jordan Essentials', 75.00, 'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?q=80&w=400', 2),
(12, 'Playera Jordan Jumpman', 35.00, 'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?q=80&w=400', 2),
(13, 'Pantalón Jogger Jordan', 65.00, 'https://images.unsplash.com/photo-1552902865-b72c031ac5ea?q=80&w=400', 2),
(14, 'Chamarra Jordan Flight', 120.00, 'https://images.unsplash.com/photo-1544441893-675973e31985?q=80&w=400', 2),
(15, 'Shorts Jordan Sport', 40.00, 'https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=400', 2),
(16, 'Jersey FC Barcelona Jordan', 100.00, 'https://static.nike.com/a/images/t_web_pw_592_v2/f_auto/u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d662707a-020e-4a95-b67d-e17f2e2bd6f8/FCB+M+NK+DF+JSY+SS+STAD+HM.png', 2),
(17, 'Sudadera Con Capucha Jordan', 85.00, 'https://images.unsplash.com/photo-1509967419530-da38b4704bc6?q=80&w=400', 2),
(18, 'Playera Manga Larga Jordan', 45.00, 'https://images.unsplash.com/photo-1618354691373-d851c5c3a990?q=80&w=400', 2),
(19, 'Chamarra Rompevientos', 110.00, 'https://images.unsplash.com/photo-1608256246200-53e635b5b65f?q=80&w=400', 2),
(20, 'Pantaloneta Baloncesto', 38.00, 'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?q=80&w=400', 2),
(21, 'Gorra Jordan Pro Jumpman', 30.00, 'https://images.unsplash.com/photo-1588850561407-ed78c282e89b?q=80&w=400', 3),
(22, 'Mochila Jordan Air', 55.00, 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?q=80&w=400', 3),
(23, 'Calcetines Jordan Everyday (3 pares)', 18.00, 'https://images.unsplash.com/photo-1586350977771-b3b0abd50c82?q=80&w=400', 3),
(24, 'Cangurera Jordan Monogram', 35.00, 'https://images.unsplash.com/photo-1622560480605-d83c853bc5c3?q=80&w=400', 3),
(25, 'Balón de Basquetbol Jordan', 45.00, 'https://images.unsplash.com/photo-1519861531473-9200262188bf?q=80&w=400', 3),
(26, 'Gorro Tejido Jordan', 25.00, 'https://images.unsplash.com/photo-1576871337632-b9aef4c17ab9?q=80&w=400', 3),
(27, 'Bandana Deportiva Jordan', 15.00, 'https://images.unsplash.com/photo-1521369909029-2afed882baee?q=80&w=400', 3),
(28, 'Botella de Agua Jordan', 20.00, 'https://images.unsplash.com/photo-1602143407151-7111542de6e8?q=80&w=400', 3),
(29, 'Muñequeras Deportivas', 12.00, 'https://images.unsplash.com/photo-1517838277536-f5f99be501cd?q=80&w=400', 3),
(30, 'Maleta de Viaje Jordan', 70.00, 'https://images.unsplash.com/photo-1547949003-9792a18a2601?q=80&w=400', 3);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `fecha_registro`) VALUES
(1, 'ashley barraza perez', 'ashleybarrazaperez@gmail.com', '$2y$10$kvTmAn31.nm1DGAdjrld0uTtw.o4RBTGWwVuiiIi0FTNOW5Ey8McO', '2026-10-28 21:25:44'),
(2, 'ashley', 'a.24308051280499@cbtis128.edu.mx', '$2y$10$apQriMuZrmUhiOu9dZA9EOUPMpzf5TVU.1ONgTeCayUubCJOs1t.y', '2026-11-11 15:51:25'),
(3, 'ASHLEY BERENICE BARRAZA PEREZ', 'a.24308051280495@cbtis128.edu.mx', '$2y$10$CrL2b/A9P5IUBBYn8WR2b.p.kgEgrsBIw9edhFb9J1HpJexR10f1O', '2026-11-11 16:45:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
