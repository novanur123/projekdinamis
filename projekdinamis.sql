-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2024 at 05:08 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekdinamis`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenismakanan`
--

CREATE TABLE `jenismakanan` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenismakanan`
--

INSERT INTO `jenismakanan` (`id`, `name`, `image`, `deskripsi`) VALUES
(4, 'Awug', '66f5826aedd5fd1a8af5dda83e4b1d77.jpeg', 'Awug adalah satu dari sekian banyak penganan khas masyarakat Sunda atau Jawa Barat. Diolah dari tepung beras (paré) yang dicampur dengan air, garam, gula merah dan kelapa parut serta dimasak dengan cara dikukus.\r\n Akan tetapi, dikukus dengan perabot dapur beranyam bambu bernama aseupan, awug menjadi makanan khas.            '),
(5, 'Bakakak', '17d9c22ba2ccd35ddef72aef3488f833.jpeg', 'Bakakak hayam (bahasa Sunda: translit. Bakakak Hayam) merupakan kuliner tradisional khas Sunda. Bakakak hayam adalah makanan pendamping atau lauk pauk untuk kelengkapan makan nasi. Bekakak berarti korban penyembelihan hewan atau manusia. Karena bentuknya yang seperti seseorang yang duduk bersila, maka dalam bahasa Sunda disebut bakakak.\r\n                            '),
(6, 'Batagor', '43c170f2d025d43db36195d48eeb4091.jpeg', 'Meskipun merupakan camilan yang sering dijumpai tidak hanya di tanah Sunda, tetapi batagor merupakan makanan khas Sunda yaitu jajanan yang dibuat oleh orang Bandung. \r\nBatagor sendiri merupakan jajanan khas yang penamaannya diambil dari singkatan \"bakso tahu goreng\", dibuat dari daging ikan tenggiri, tepung sagu, telur, dan kulit pangsit.\r\nSulit untuk menolak gurih dan renyahnya batagor ketika disajikan dengan bumbu kacang yang kaya rasa.\r\n                            '),
(7, 'Tahu Gejrot', '64cae52fe2dedf3edb0e6d0fa8cf1566.jpeg', 'Tahu gejrot adalah makanan khas Cirebon yang terkenal sebagai makanan khas Sunda juga.\r\n\r\nTahu gejrot dibuat dari tahu Sumedang yang sudah dipotong-potong, kemudian disajikan dengan bumbu cabai yang segar.\r\n            \r\nBumbu segar umumnya terbuat dari kencur, bawang putih, bawang merah, dan cabai rawit.\r\n                            '),
(8, 'Gonjing', '0135a97518aea74aa7d9212e995ac1b0.jpeg', '\r\nGonjing Majalengka memiliki kombinasi tekstur dan cita rasa yang memanjakan selera. Terbuat dari racikan adonan tepung beras yang berpadu dengan gurihnya kelapa. Kue tradisional ini memiliki bentuk pipih dan warna kecoklatan yang mengundang selera.\r\nProses grilling atau pemanggangan menjadi rahasia kelezatan gonjing, menjadikan bagian luar kue begitu renyah dan gurih, sementara bagian dalamnya mempertahankan kelembutan yang menggoda.\r\nDi setiap gigitannya, Gonjing Majalengka memberikan sentuhan nikmat yang dimunculkan dari adonan tepung beras yang lembut, sembari meresapi aroma harum dan kegurihan kelapa yang melimpah.'),
(9, 'Misro', '3ae773c3a9cf47a2e78c68eb4c3c44bd.jpeg', 'Misro kependekan dari amis di jero (bahasa Sunda yang berarti manis di dalam). Camilan ini terbuat dari parutan singkong yang bagian dalamnya diisi dengan gula merah kemudian digoreng.\r\nRasa hidangan ini adalah manis dan gurih. Misro memiliki bentuk yang bulat dan sedikit pipih. Makanan ini biasanya disajikan dengan teh hangat. Camilan ini dengan mudah dapat dijumpai di pedagang kaki lima atau pasar tradisional.\r\n                            '),
(10, 'Dodol Garut', '747455bf08134688acf53b094d791c6d.jpeg', 'Tentuya kalian sudah familiar dengan dodol Garut sebagai makanan khas Sunda yang terkenal.\r\nBiasa dijadikan sebagai oleh-oleh khas Jawa Barat, kalian juga akan menemukan banyak camilan manis ini bila berkunjung ke daerah Garut.\r\nMeskipun tidak diberi bahan pengawet, dodol Garut ini bisa bertahan sampai tiga bulan, lho!\r\nApalagi, bahan dan proses pembuatan dodol Garut sangat sederhana.\r\nTerbuat dari tepung beras ketan, gula putih, susu, serta kelapa yang mudah diperoleh.\r\n                            '),
(11, 'Lotek', 'd69e16dd995ddf1014d5c0c8e5d29332.jpeg', 'Kuliner lotek bisa dibilang mirip dengan gado-gado. Hidangan ini terdiri dari berbagai sayuran rebus yang disiram saus kacang. Sebenarnya, racikan sayuran untuk makanan ini dapat menyesuaikan selera.\r\nTapi umumnya, lotek menggunakan bayam atau kangkung, kacang panjang, labu siam, daun kol, dan taoge. Kamu bisa menyantap lotek bersama nasi dan kerupuk.\r\n                            '),
(12, 'Peuyeum', 'd59390eb6e6cae228f8a6d355bd6d0bc.jpeg', 'Peuyeum merupakan olahan singkong yang difermentasi dan memiliki cita rasa yang khas.\r\nCukup mudah untuk membuat dan mengolah peuyeum. Cara membuat peuyeum adalah dengan \r\nmenyiapkan bahan dasar singkong, air, dan ragi.\r\n                            '),
(13, 'Seblak', 'a9b099992a92ef7a7f3d318e656adaa4.jpeg', 'Jajanan seblak sejak beberapa waktu belakangan semakin banyak dicari dan dibuat masyarakat di luar wilayah Jawa Barat. Kudapan ini terdiri dari berbagai macam topping, seperti kerupuk, kwetiau, mie kuning, bakso, telur, tulang ayam, ceker ayam, sampai sayuran.\r\nKesemua bahan dimasak sampai layu dan empuk dalam kuah kaldu atau air yang telah dibumbui. Setelah matang, kamu bisa menyantapnya selagi hangat.\r\n                            '),
(14, 'Mie Kocok', 'dba1b066cc17fcb4652883abc5321365.jpeg', 'Mie kocok menggunakan bahan dasar mie kuning yang dihidangkan bersama kuah dari kaldu sapi.\r\nKalian banyak menemukan makanan khas Sunda ini di daerah Bandung.\r\nMie kocok biasanya disajikan dengan tauge yang sudah direbus, bakso, irisan kikil, dengan taburan daun seledri, daun bawang, dan bawang goreng.\r\nNama mie kocok berasal dari cara memasak kuliner ini, yaitu pada proses memasaknya dengan mengocok-ngocok mie dalam wadah khusus sambil dicelupkan ke dalam air panas.\r\n                            '),
(15, 'Nasi Liwet', '1fbc4e9b014e6d15bcd26f413914f0f0.jpeg', 'Ini dia makanan yang tak boleh dilewatkan saat keluarga kumpul, yaitu nasi liwet. Nasi harum yang disajikan dengan lauk beragam ini paling asik kalau dimakan beramai-ramai dan beralaskan daun pisang.\r\nNasi liwet biasanya punya tekstur pulen dan menyebarkan aroma yang wangi . Ini karena sejumlah bahan dan rempah seperti serai, daun jeruk, daun salam, hingga santai digunakan dalam proses pembuatan nasinya.\r\nSelagi memasak nasi, lauk pauk seperti cumi asin, ikan asin, pepes, lalapan segar, hingga sambal bisa dibuat. Dan setelah matang, semua lauk ini bisa dimakan bersama nasinya. Pokoknya, raos pisan!\r\n                            '),
(16, 'Nasi Tutug Oncom', '42a5c6c8a2f65066e64be439dfc635b7.jpeg', 'Nasi tutug oncom merupakan makanan khas Sunda dengan menyajikan nasi yang diaduk dengan oncom goreng atau oncom bakar.\r\nNasi tutug oncom ini merupakan masakan khas Tasikmalaya, Jawa Barat.\r\nNasi tutug oncom dibuat dengan mengaduk dan menumbuk nasi dan oncom.\r\nPenyajiannya bersama lauk pendamping, seperti tahu,tempe goreng, ayam goreng, lalapan sayur, dan sambal terasi.\r\nNasi tutug oncom paling enak apabila disajikan dalam keadaan hangat.\r\n                            '),
(17, 'Nasi Timbel', '1835b878ff03ecad19a1e13c50d64ab8.jpeg', 'Nasi timbel adalah makanan khas Sunda yang mempunyai cita rasa kuat dan unik.\r\nSehingga, sangat identik dengan masakan orang Sunda.\r\nNasi timbel biasanya dijual di warung-warung yang disajikan dengan menggunakan daun pisang.\r\nAda macam-macam lauk untuk mendampingi nasi timbel, seperti ikan asin, pepes ikan, empal, ayam goreng, tawes, japuh, serta lalapan dan sambal yang super lezat.\r\n                            '),
(18, 'Soto Bandung', '6ce4035084b837fb036230f541f6120f.jpeg', 'Soto Bandung adalah soto khas Bandung, Jawa Barat. Sepintas, soto \r\nyang berbahan dasar daging sapi ini hampir sama dengan jenis soto yang lain,\r\ntetapi yang membuatnya berbeda adalah adanya tambahan lobak, tomat, dan kedelai \r\ngoreng di dalamnya. Soto tanpa santan ini biasa disantap dengan nasi dan kerupuk.\r\n                            ');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'novaaaaa', '241006');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenismakanan`
--
ALTER TABLE `jenismakanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenismakanan`
--
ALTER TABLE `jenismakanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
