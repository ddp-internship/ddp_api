db_ddp_api-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table db_ddp_api.beritaartikel: ~4 rows (approximately)
INSERT INTO `beritaartikel` (`id`, `judul_artikel`, `kategori`, `penulis`, `tanggal`, `isi_artikel`, `gambar`, `created_at`, `updated_at`) VALUES
	(8, 'DATA DESA PRESISI', 'Artikel', 'HAYAD', '2025-12-31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'berita/RMtNvNCcAozPO9Fllkcb2XLMZzYl2Rrxmosa4FMW.jpg', '2025-12-31 07:19:34', '2025-12-31 09:45:55'),
	(9, 'DATA DESA PRESISI', 'Artikel', 'HAYAD', '2025-12-31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'berita/6QSOC35I7L3rSaeRIIlK9SlKlyssGgU8qUvXLHFi.png', '2025-12-31 07:20:01', '2025-12-31 09:45:46'),
	(10, 'DATA DESA PRESISI', 'Berita', 'HAYAD', '2025-12-26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'berita/CWxociwYbvT5QqNmZmR7w4gtkthJ6M3O5Gb9qdUB.jpg', '2025-12-31 07:20:29', '2025-12-31 09:45:34'),
	(13, 'DATA DESA PRESISI', 'Berita', 'HAYAD', '2025-12-31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'berita/gK0WQduikuseb12Qc9re5oyHhNg5TNiQF977Nnby.webp', '2025-12-31 09:51:37', '2025-12-31 09:52:50');

-- Dumping data for table db_ddp_api.buku: ~3 rows (approximately)
INSERT INTO `buku` (`id`, `judul`, `penulis`, `ringkasan`, `link_drive`, `gambar`, `created_at`, `updated_at`) VALUES
	(4, 'DATA DESA PRESISI', 'SOFYAN SJAF', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.sciencedirect.com/science/article/pii/S2215016122002473', 'buku/BqA6QXhwbAyMQO5EIbN8Thx86XqGTBGjI1n8Ut0Q.png', '2025-12-31 09:29:43', '2026-01-03 03:02:33'),
	(5, 'DATA DESA PRESISI', 'SOFYAN SJAF', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.sciencedirect.com/science/article/pii/S2215016122002473', 'buku/1iHc0L3HHYwI6eQjMqQB1RiKnCr5AA86gLG4lOXU.png', '2025-12-31 09:30:08', '2026-01-03 03:02:24'),
	(6, 'DATA DESA PRESISI', 'SOFYAN SJAF', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.sciencedirect.com/science/article/pii/S2215016122002473', 'buku/nyhIImNtgPw59PGGba1tZPDEwTkuzzVPdsGBgjyD.png', '2025-12-31 09:30:31', '2026-01-02 03:56:05');

-- Dumping data for table db_ddp_api.cache: ~0 rows (approximately)

-- Dumping data for table db_ddp_api.cache_locks: ~0 rows (approximately)

-- Dumping data for table db_ddp_api.capaiandata: ~1 rows (approximately)
INSERT INTO `capaiandata` (`id`, `desa`, `dusun`, `rw`, `kelurahan`, `bangunan`, `kk`, `jiwa`, `laki`, `perempuan`, `created_at`, `updated_at`) VALUES
	(13, '1', '400', '400', '400', '4000', '10000', '80000', '40000', '40000', '2026-01-04 21:34:31', '2026-01-05 02:45:48');

-- Dumping data for table db_ddp_api.contacts: ~0 rows (approximately)

-- Dumping data for table db_ddp_api.failed_jobs: ~0 rows (approximately)

-- Dumping data for table db_ddp_api.galeri: ~12 rows (approximately)
INSERT INTO `galeri` (`id`, `nama_kegiatan`, `tanggal`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
	(5, 'DDP', '2025-12-31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/WoWhLeJyuleYSAXk7pyN0WL6xAVz8EwewBjqTQC4.jpg', '2025-12-30 19:07:06', '2025-12-31 09:15:02'),
	(6, 'DDP', '2025-12-31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/KGLfoMrsftNf6WNc8An9NoB8iwnxtLYeWi2wjchv.jpg', '2025-12-31 08:08:51', '2025-12-31 09:14:35'),
	(7, 'DDP', '2025-12-31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/Zvc5o0yMqKEe62ocNZpTu2JKQy00MdOEiODEFpAS.jpg', '2025-12-31 08:19:02', '2025-12-31 09:14:14'),
	(8, 'DDP', '2025-12-10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/W2e1Y7V8CpW9ntHuWOC1ue0pWqr9BPDPrsYZ6ucQ.jpg', '2025-12-31 09:15:26', '2025-12-31 09:15:26'),
	(9, 'DDP', '2025-12-20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/DVWxoKLdz1VhMNVeEIF3vXNhhOOxBARuZwxBW3NM.jpg', '2025-12-31 09:15:51', '2025-12-31 09:15:51'),
	(10, 'DDP', '2025-12-23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/DVrQxIw61LWhXc8dHsPWBkLd3bYHcf8M7SVHUTYf.jpg', '2025-12-31 09:16:29', '2025-12-31 09:16:29'),
	(11, 'DDP', '2025-12-27', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/XhqCaxgylw3Ok1mnxEHJCbawjepMJyNN8bJ2e7tB.jpg', '2025-12-31 09:17:06', '2025-12-31 09:17:06'),
	(12, 'DDP', '2025-12-23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/8FBTfjbr7JvRAxWFXkldcvZrharRSfg6retsXqwJ.jpg', '2025-12-31 09:17:32', '2025-12-31 09:17:32'),
	(13, 'DDP', '2025-12-05', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/MhWoSCIKKQsAuzEisVDUDZ1VlOQ6d9BPsHenR6cb.jpg', '2025-12-31 09:18:00', '2025-12-31 09:18:00'),
	(14, 'DDP', '2025-12-04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/9GKRRvOsFAkR8i34gTnlIP5PC1GHEsXXv51GPEjI.jpg', '2025-12-31 09:18:26', '2025-12-31 09:18:26'),
	(15, 'DDP', '2025-12-09', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/snOVDOhoBPOsOzN9jdla1RWp72PCoE1jDLJqJSbc.jpg', '2025-12-31 09:18:59', '2025-12-31 09:18:59'),
	(16, 'DDP', '2025-12-20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'galeri/IiQYgJIlav3usUQsyE2Tl120aMdQbAqh6SoCozJq.jpg', '2025-12-31 09:19:30', '2025-12-31 09:19:30');

-- Dumping data for table db_ddp_api.infografis: ~5 rows (approximately)
INSERT INTO `infografis` (`id`, `judul`, `is_approved_home`, `keterangan`, `gambar`, `link`, `created_at`, `updated_at`) VALUES
	(8, 'DATA DESA PRESISI', 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '["infografis/gz6f5BpZpxLZWTfCDKomDhst8GtJ6idpzgBASaeQ.png", "infografis/P3PJuuN2OKG5jtqrlTRF4vfHlJ93xW8vviwKwRqI.png", "infografis/fjLyPREqaTzI2fyw6j07IjIS3lcd9oT9IGrAJpCA.png", "infografis/joRGSb6CQ8Rj77LOHwsbJ32U8cMyzx2hfGFmE38r.png", "infografis/PAVBTCgHbrzoccKpznI0fgZVVPubCwmpuXJwsWel.png", "infografis/2tIJSNfmh0DGXtzXXil4njtWpkfPxBjq5eMD2L2j.png", "infografis/guaq0jzTEgACIE6eYXMUKu0MGmHWciIvswgdDcx4.png", "infografis/UVQIkoWWgCcLxWQN6CyogczlhyGkKnx0u2Aymaz0.png"]', '#', '2025-12-30 16:46:28', '2026-01-04 09:54:43'),
	(9, 'DATA DESA PRESISI', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '["infografis/94fljhL1843Xn4aeTj32V5Y7Q2OvG2Lon1wyYfHq.png", "infografis/VFQeWGMLNsLfKmHcAvWRQozodl7toaTc3kJ2FBXZ.png", "infografis/pyF8HuI3qpHt7DHCnoUkePxpp53zsXVUvOufkabh.png", "infografis/Vkbfl3wevmnjNh8vF8HpV67SfNx445cWwyFpWoha.png", "infografis/1kqoNvL3ZahLJEmbqK7tVGkcskXBAtdRQd3tzI2R.png", "infografis/ngIv0JxKi9mvek2os4o2G3EnFgd4xzxK6pn6n9pU.png"]', 'http://localhost:3000/#/infografis', '2025-12-31 00:46:38', '2026-01-04 16:08:03'),
	(10, 'DATA DESA PRESISI', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '["infografis/a2pzMio6WAbPDwC5TfLr3d3Cy5SaUnFaZIFictxI.png"]', '#', '2025-12-31 09:26:05', '2026-01-04 16:07:59'),
	(11, 'DATA DESA PRESISI', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '["infografis/ud8UWWR0wEHOoYaLi09UypoU0qdvikPGZjuzqBDa.png", "infografis/mUBfj6TjBgaQhdmM6g65ELRqiswTSmTAqCqktZOC.png"]', '#', '2025-12-31 09:26:43', '2026-01-04 16:07:55'),
	(12, 'DATA DESA PRESISI', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '["infografis/Qezvh5WMrSFdww3GBDUrRXN3T1H6yt6vaLgf2DXs.png", "infografis/YQtpH036YbNkhuIsI8N6JcpwxVdAhlc6rGepnLvF.png", "infografis/aaMWEkD5xcoFYvEX6owXsT6n8nACAH94zXgXgGGT.png", "infografis/InaL1AoEcVFbAmm3wX1cMamQktSJcd4ortDDjxaZ.png", "infografis/jW20FWPGMt5AYfecirGyQJfcjOpsMKOMRHWm5rWX.png"]', '#', '2025-12-31 09:28:11', '2026-01-04 16:07:50');

-- Dumping data for table db_ddp_api.infografis_downloads: ~1 rows (approximately)
INSERT INTO `infografis_downloads` (`id`, `infografis_id`, `email`, `instansi`, `keperluan`, `created_at`, `updated_at`) VALUES
	(7, 12, 'hayadarafah@apps.ipb.ac.id', 'IPB', 'Penelitian', '2026-01-05 02:55:49', '2026-01-05 02:55:49');

-- Dumping data for table db_ddp_api.jobs: ~0 rows (approximately)

-- Dumping data for table db_ddp_api.job_batches: ~0 rows (approximately)

-- Dumping data for table db_ddp_api.jurnal: ~3 rows (approximately)
INSERT INTO `jurnal` (`id`, `judul`, `penulis`, `link`, `gambar`, `created_at`, `updated_at`) VALUES
	(3, 'DATA DESA PRESISI', 'SOFYAN SJAF', 'https://www.sciencedirect.com/science/article/pii/S2215016122002473', 'jurnal/rKHBAH8gipcVBtmlyOOD7FH4OMiddq3RQ53i3F65.png', '2025-12-30 16:59:53', '2026-01-03 03:02:10'),
	(4, 'DATA DESA PRESISI', 'SOFYAN SJAF', 'https://www.sciencedirect.com/science/article/pii/S2215016122002473', 'jurnal/fG88wikEdabBmxen2iihxMl0PvVbU3dzUBsDfD57.png', '2025-12-31 09:31:19', '2026-01-03 03:02:01'),
	(5, 'DATA DESA PRESISI', 'SOFYAN SJAF', 'https://www.sciencedirect.com/science/article/pii/S2215016122002473', 'jurnal/tXngTyqkHohp3JyJueCgz2bVY3HiF7YLSpNstLZI.png', '2025-12-31 09:31:43', '2026-01-03 03:01:53');

-- Dumping data for table db_ddp_api.migrations: ~17 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2025_12_27_155349_create_personal_access_tokens_table', 2),
	(5, '2025_12_27_170824_create_capaiandata_table', 3),
	(6, '2025_12_27_225944_create_beritaartikel_table', 4),
	(7, '2025_12_27_225944_create_infografis_table', 4),
	(8, '2025_12_27_225944_create_monografi_table', 4),
	(9, '2025_12_27_225945_create_buku_jurnal_tables', 4),
	(10, '2025_12_27_225956_create_mitra_testimoni_tables', 4),
	(11, '2025_12_28_053439_create_galeri_table', 5),
	(12, '2025_12_28_091546_add_link_drive_to_buku_table', 6),
	(13, '2025_12_28_092735_add_gambar_to_jurnal_table', 7),
	(14, '2025_12_28_160624_add_tanggal_to_testimoni_table', 8),
	(15, '2025_12_30_151123_add_kategori_to_mitra_table', 9),
	(16, '2025_12_30_161424_add_featured_to_monografi', 10),
	(17, '2025_12_30_161436_create_monografi_downloads_table', 10),
	(18, '2025_12_30_225612_add_is_featured_to_infografis_table', 11),
	(19, '2025_12_30_225625_create_infografis_downloads_table', 11),
	(20, '2025_12_31_114005_add_is_tampil_to_testimoni_table', 12),
	(21, '2025_12_31_114017_create_contacts_table', 12),
	(22, '2025_12_31_143248_add_kategori_to_beritaartikel_table', 13);

-- Dumping data for table db_ddp_api.mitra: ~7 rows (approximately)
INSERT INTO `mitra` (`id`, `nama_mitra`, `kategori`, `gambar`, `created_at`, `updated_at`) VALUES
	(5, 'DATA DESA PRESISI', 'pemerintah', 'mitra/JmMA83gEpFVoO2Wd14UfazTRMqCLum1NVec3pq0c.png', '2025-12-30 08:21:39', '2025-12-31 09:32:38'),
	(6, 'DATA DESA PRESISI', 'pemerintah', 'mitra/xUobFjmw8SA4yK0Qj4j6CXfMcZ5746DhNIpDphFd.png', '2025-12-31 09:32:53', '2025-12-31 09:32:53'),
	(7, 'DATA DESA PRESISI', 'pemerintah', 'mitra/noZ5pNkfhfBxZtyrj6estqHGVhvTblgvZOvo5yZV.png', '2025-12-31 09:33:11', '2025-12-31 09:33:11'),
	(8, 'DATA DESA PRESISI', 'akademisi', 'mitra/QLR677hsBkSHR5DebDnnRG9uE7alqe3lWvvuf5Gc.png', '2025-12-31 09:33:26', '2025-12-31 09:33:26'),
	(9, 'DATA DESA PRESISI', 'akademisi', 'mitra/AyjyzhI2cVr4RODybSUPMdhitoZxZ644csiC1kF7.png', '2025-12-31 09:33:41', '2025-12-31 09:33:41'),
	(10, 'DATA DESA PRESISI', 'akademisi', 'mitra/nRup88SvCHV10x82Sgp1tJJRgF3UjJKZ9nNgX6uE.png', '2025-12-31 09:33:57', '2025-12-31 09:33:57');

-- Dumping data for table db_ddp_api.monografi: ~5 rows (approximately)
INSERT INTO `monografi` (`id`, `desa`, `kecamatan`, `kota`, `provinsi`, `tahun`, `ringkasan`, `gambar`, `link`, `is_featured`, `created_at`, `updated_at`) VALUES
	(6, 'sukaraja', 'tanah abang', 'Pali', 'Sumsel', '2025', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'monografi/JKJ77eyAA999O1eVfmzzJDoeJcTONOxo2AtGqfaA.png', 'https://badanpangan.go.id/', 1, '2025-12-30 09:50:48', '2026-01-04 15:59:50'),
	(7, 'modong', 'tanah abang', 'pali', 'sumsel', '2025', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'monografi/Pj0KQoksKxkBHhyeG3P7MKqixQghQOg3TXLaRHkL.png', 'https://badanpangan.go.id/', 1, '2025-12-30 09:52:17', '2026-01-04 15:59:45'),
	(8, 'raja', 'tanah abang', 'KOTA KENDARI', 'SULAWESI TENGGARA', '2022', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'monografi/OI8IAgz0w5l06d5nf7TFbM6H3xjWJvMR5UL5mJOS.png', 'https://badanpangan.go.id/', 1, '2025-12-30 09:53:51', '2026-01-04 15:59:42');

-- Dumping data for table db_ddp_api.monografi_downloads: ~4 rows (approximately)
INSERT INTO `monografi_downloads` (`id`, `monografi_id`, `email`, `instansi`, `keperluan`, `created_at`, `updated_at`) VALUES
	(2, 6, 'hayadarafah@apps.ipb.ac.id', 'ipb', 'penelitian', '2025-12-30 10:26:53', '2025-12-30 10:26:53'),
	(4, 6, 'hayad@gmail.com', 'IPB', 'Tesis', '2025-12-30 16:18:23', '2025-12-30 16:18:23'),
	(6, 6, 'hayadarafah@apps.ipb.ac.id', 'IPB', 'Penelitian', '2026-01-01 01:08:55', '2026-01-01 01:08:55');

-- Dumping data for table db_ddp_api.password_reset_tokens: ~0 rows (approximately)

-- Dumping data for table db_ddp_api.personal_access_tokens: ~62 rows (approximately)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\User', 1, 'auth_token', '7bbbfbc6ddd8ce365039a73b93fdde2f3d2ee6c1a0fb2e4b3f0c701f22482312', '["*"]', NULL, NULL, '2025-12-27 09:36:51', '2025-12-27 09:36:51'),
	(2, 'App\\Models\\User', 1, 'auth_token', '7f1db201ae602083363b64d01ecc67ff610842ae5b1a6e783e235438faf92de1', '["*"]', '2025-12-27 10:16:28', NULL, '2025-12-27 09:52:01', '2025-12-27 10:16:28'),
	(3, 'App\\Models\\User', 1, 'auth_token', 'f85f0daf3ca42ffdc336d573ef807a5fbc96adb64f1065e72387c9a097f68446', '["*"]', '2025-12-27 15:55:43', NULL, '2025-12-27 10:16:48', '2025-12-27 15:55:43'),
	(4, 'App\\Models\\User', 1, 'auth_token', 'acbf5d7cc2e6bd4711b28541090e2530f37be49c65e57fdb521292919f5ab759', '["*"]', '2025-12-27 18:15:31', NULL, '2025-12-27 15:57:14', '2025-12-27 18:15:31'),
	(5, 'App\\Models\\User', 1, 'auth_token', 'b594cb6809aad4e26e9c95749e5a3beca69c21749d3dbb3fe9d45ad4ca824940', '["*"]', '2025-12-27 18:25:45', NULL, '2025-12-27 18:15:47', '2025-12-27 18:25:45'),
	(6, 'App\\Models\\User', 1, 'auth_token', '4c02e07c979b64ef90fdd7f6767b964a540decbb791b6fe7ef8f7ee9b149efdf', '["*"]', '2025-12-27 18:58:06', NULL, '2025-12-27 18:43:29', '2025-12-27 18:58:06'),
	(7, 'App\\Models\\User', 1, 'auth_token', '3bc2771dbe0d5df303cd1a13792e5b1d8612fcd7fd731ef1c8c22156328504e6', '["*"]', '2025-12-27 20:09:25', NULL, '2025-12-27 18:58:28', '2025-12-27 20:09:25'),
	(8, 'App\\Models\\User', 1, 'auth_token', 'ef0e1d0a4c3c101c7e2871e7a33ff36d325a4c347086ae91796d079fb294f9a7', '["*"]', '2025-12-27 21:36:20', NULL, '2025-12-27 20:09:43', '2025-12-27 21:36:20'),
	(9, 'App\\Models\\User', 1, 'auth_token', '48a44f0760f296be4ba031cef205cfa0494d7e3d3ee135be9595d57b2d613cd9', '["*"]', '2025-12-27 23:09:22', NULL, '2025-12-27 22:28:10', '2025-12-27 23:09:22'),
	(10, 'App\\Models\\User', 1, 'auth_token', '656da52e5449c0c86df8612183b3bf3008f1c3ffd3532382ced1bc3844ad6b87', '["*"]', '2025-12-28 02:38:01', NULL, '2025-12-28 02:08:45', '2025-12-28 02:38:01'),
	(11, 'App\\Models\\User', 1, 'auth_token', 'eec1fce26d2bebd815e76210d002f6e2dad0a35710c442f79973761b94c67aac', '["*"]', '2025-12-28 03:33:16', NULL, '2025-12-28 02:38:26', '2025-12-28 03:33:16'),
	(12, 'App\\Models\\User', 1, 'auth_token', 'fc23ead4643f9325762f8a146f0ec2f5ef425e94d76286c77e5fee880b602d69', '["*"]', '2025-12-28 03:34:41', NULL, '2025-12-28 03:34:06', '2025-12-28 03:34:41'),
	(13, 'App\\Models\\User', 2, 'auth_token', '4b5fdfc95748ee725d83eb7ed335e1c647db1da8de04fb5f61acdd9e8e41d0e9', '["*"]', '2025-12-28 03:35:58', NULL, '2025-12-28 03:34:56', '2025-12-28 03:35:58'),
	(14, 'App\\Models\\User', 1, 'auth_token', 'a2d5f97e6de2b889c04c005698931f475fd811559a2e22b174f799ce353492c4', '["*"]', '2025-12-28 03:36:51', NULL, '2025-12-28 03:36:24', '2025-12-28 03:36:51'),
	(15, 'App\\Models\\User', 2, 'auth_token', 'f55451a9c48dc7257ed9dca5c487d1cc8abea895a04d60640b7bff5783e67790', '["*"]', '2025-12-28 03:39:35', NULL, '2025-12-28 03:38:05', '2025-12-28 03:39:35'),
	(16, 'App\\Models\\User', 1, 'auth_token', '600f97c0e55b424484d8908d0d14d5df6c74d7e31649d92dcb06746833a49608', '["*"]', '2025-12-28 03:55:46', NULL, '2025-12-28 03:42:23', '2025-12-28 03:55:46'),
	(17, 'App\\Models\\User', 1, 'auth_token', '0167a45dd39b2ea60b8c8f5a8cbae76569c01db0524c2139e9658241ec0edd56', '["*"]', '2025-12-28 04:02:07', NULL, '2025-12-28 03:56:29', '2025-12-28 04:02:07'),
	(18, 'App\\Models\\User', 1, 'auth_token', '42ef5a247ad08137bec0dd0ed39b5892b3fcd556ba9d09703def7f24aa424112', '["*"]', '2025-12-28 05:17:43', NULL, '2025-12-28 05:06:07', '2025-12-28 05:17:43'),
	(19, 'App\\Models\\User', 1, 'auth_token', '4f31fca3fddcb9f356eb74a05c0c9139ca4b399ec53bb0266c263dfb7ec69d82', '["*"]', '2025-12-28 05:24:33', NULL, '2025-12-28 05:18:30', '2025-12-28 05:24:33'),
	(20, 'App\\Models\\User', 1, 'auth_token', '88ed320a498bfb329c8ab4ce051c5aa7c2f5f512ab5468efa9ebd61668f0e4d8', '["*"]', '2025-12-28 05:31:23', NULL, '2025-12-28 05:25:51', '2025-12-28 05:31:23'),
	(21, 'App\\Models\\User', 1, 'auth_token', 'b3cb5d6b782c54f94e4bafc825401195fef452101db34bd1c79b354d54970b34', '["*"]', '2025-12-28 05:32:50', NULL, '2025-12-28 05:32:50', '2025-12-28 05:32:50'),
	(22, 'App\\Models\\User', 1, 'auth_token', 'f6423e435e04f4f883104823e458260121964a5d9113365ddfcc238da8d74f43', '["*"]', '2025-12-28 05:37:51', NULL, '2025-12-28 05:37:13', '2025-12-28 05:37:51'),
	(23, 'App\\Models\\User', 5, 'auth_token', '4618476a9e286c6606df4e64232e6819275cc9aa76f336cf53b559692575bb04', '["*"]', '2025-12-28 05:50:58', NULL, '2025-12-28 05:38:03', '2025-12-28 05:50:58'),
	(24, 'App\\Models\\User', 1, 'auth_token', '2f21f8b91dd4599c0bdd9ed2edebc9224a4a1c649f010ac2f2e48f275f5f1072', '["*"]', '2025-12-28 05:52:27', NULL, '2025-12-28 05:52:06', '2025-12-28 05:52:27'),
	(25, 'App\\Models\\User', 1, 'auth_token', '6cbfff585341e80c508bcd65bc900ac8ed640d2216508811760e0c88d0f19a06', '["*"]', '2025-12-28 05:59:08', NULL, '2025-12-28 05:59:01', '2025-12-28 05:59:08'),
	(26, 'App\\Models\\User', 1, 'auth_token', '06ae7f6cfd34069893005184aa0aa5cffde5c97936d0d680186ed876d163c4c5', '["*"]', '2025-12-28 06:02:34', NULL, '2025-12-28 06:00:13', '2025-12-28 06:02:34'),
	(27, 'App\\Models\\User', 1, 'auth_token', '33156eb60a47519a3176f97d35483763ea29c5aefdec8573c9437cb8480402a4', '["*"]', '2025-12-28 07:02:33', NULL, '2025-12-28 06:53:19', '2025-12-28 07:02:33'),
	(28, 'App\\Models\\User', 1, 'auth_token', 'bd60f08ba12fe7eb3d1a4664f22c614b0445e256dcea8352fe0318bd6badb933', '["*"]', '2025-12-28 07:03:38', NULL, '2025-12-28 07:03:29', '2025-12-28 07:03:38'),
	(29, 'App\\Models\\User', 6, 'auth_token', '99532848a9ad0a2201b35b53ef6f75e966dcf7c3a995439c173441f4a0634a38', '["*"]', '2025-12-28 07:05:39', NULL, '2025-12-28 07:04:05', '2025-12-28 07:05:39'),
	(30, 'App\\Models\\User', 1, 'auth_token', '139f57c1abefa33d0b359bcd40eb3b0c591deacbec48ef17ea7330c1333c841d', '["*"]', '2025-12-28 08:43:56', NULL, '2025-12-28 07:06:12', '2025-12-28 08:43:56'),
	(31, 'App\\Models\\User', 1, 'auth_token', '52a7f9c7a51d44e744a5a7de3ba7dce57c23ba00843f92e178a61027232850c8', '["*"]', '2025-12-28 09:17:52', NULL, '2025-12-28 08:44:30', '2025-12-28 09:17:52'),
	(32, 'App\\Models\\User', 1, 'auth_token', '9eb9fd301919af6e254a459e871c69e3ec6b0a04da07defbf5a45b27983dd75d', '["*"]', '2025-12-28 09:18:43', NULL, '2025-12-28 09:18:38', '2025-12-28 09:18:43'),
	(33, 'App\\Models\\User', 6, 'auth_token', 'cb94d649439b9cfc5cef8f3c302fbc97c253cf99bb6fa7639cd3857197cfa79a', '["*"]', '2025-12-28 09:53:23', NULL, '2025-12-28 09:18:57', '2025-12-28 09:53:23'),
	(34, 'App\\Models\\User', 1, 'auth_token', '91a3a86774a03a71c4346aa4797ad0f7ee8c4164041cb6fc9fcd4c6ea9a9bcc8', '["*"]', '2025-12-28 20:07:51', NULL, '2025-12-28 19:07:34', '2025-12-28 20:07:51'),
	(35, 'App\\Models\\User', 6, 'auth_token', 'dea57bdf629304d4dc1d72fec1c85f36b634abda764af4b541d7af61b83b6d75', '["*"]', '2025-12-29 00:20:20', NULL, '2025-12-28 20:30:58', '2025-12-29 00:20:20'),
	(36, 'App\\Models\\User', 1, 'auth_token', '7910ac8f787649f1f244ce8faf9f1523d2392d8a12516bcc25325645d011ba29', '["*"]', '2025-12-30 10:24:29', NULL, '2025-12-30 07:07:41', '2025-12-30 10:24:29'),
	(37, 'App\\Models\\User', 6, 'auth_token', 'c708ca6a1bcc7f8c9bb3ef9e7af201ba0de7b2697db92d6098edfc4687f09ba1', '["*"]', '2025-12-30 10:30:05', NULL, '2025-12-30 10:24:44', '2025-12-30 10:30:05'),
	(38, 'App\\Models\\User', 1, 'auth_token', '62bb268ad2e33075ce46d1af551b10a9b4df2126699ba8d1c524f42c43b3ffa2', '["*"]', '2025-12-30 22:44:39', NULL, '2025-12-30 16:32:07', '2025-12-30 22:44:39'),
	(39, 'App\\Models\\User', 6, 'auth_token', 'bf80f593e60c049230d9b576f5d4ead78a458af660bc56ccd8c9a36e6f7df358', '["*"]', '2025-12-31 08:52:08', NULL, '2025-12-30 22:44:58', '2025-12-31 08:52:08'),
	(40, 'App\\Models\\User', 1, 'auth_token', '073a2a7bcacd4c68420d320654d4de0ad1c85732a28ed394575ee3d27bd85e17', '["*"]', '2025-12-31 10:13:06', NULL, '2025-12-31 08:52:26', '2025-12-31 10:13:06'),
	(41, 'App\\Models\\User', 1, 'auth_token', '9c7de1e5a0d5ec4a3f4683240b170252fc11674f4b3bc5ee43a04542676e6bc4', '["*"]', '2025-12-31 10:16:13', NULL, '2025-12-31 10:15:17', '2025-12-31 10:16:13'),
	(42, 'App\\Models\\User', 1, 'auth_token', 'ea49c9c741405f0b80f55e3f83960f990e3186fb688bb56f13e958585d0b3618', '["*"]', '2025-12-31 10:44:51', NULL, '2025-12-31 10:27:41', '2025-12-31 10:44:51'),
	(43, 'App\\Models\\User', 1, 'auth_token', 'edfbcc08a964a3cf7ccb8eb8e7079266f5d2c5cee47e928c99a847ce828ce039', '["*"]', '2025-12-31 11:37:14', NULL, '2025-12-31 11:20:25', '2025-12-31 11:37:14'),
	(44, 'App\\Models\\User', 1, 'auth_token', '83ac8a0691cfa0348d95dea852cf7cd84301a922ebd93a38216651c4d4a0a4a0', '["*"]', '2025-12-31 16:01:56', NULL, '2025-12-31 16:01:16', '2025-12-31 16:01:56'),
	(45, 'App\\Models\\User', 1, 'auth_token', '272bf986deacba05d8074fcc0dc0ed5ece2b645313b517a611dec3b02c673962', '["*"]', '2025-12-31 20:22:13', NULL, '2025-12-31 20:14:20', '2025-12-31 20:22:13'),
	(46, 'App\\Models\\User', 1, 'auth_token', '01d09d35c0ce7eedde49e5a7de16becaf4e98811dd9de937583411caf3cefac9', '["*"]', '2025-12-31 20:38:36', NULL, '2025-12-31 20:38:34', '2025-12-31 20:38:36'),
	(47, 'App\\Models\\User', 1, 'auth_token', '4031089d84bc11f7a3e5be066e9b1cda0252f1882d2d09294b9794f182dbd1e3', '["*"]', '2025-12-31 21:27:38', NULL, '2025-12-31 20:42:26', '2025-12-31 21:27:38'),
	(48, 'App\\Models\\User', 1, 'auth_token', '0691db342c712cb1352e78c3416cbc55e7240fd2b53634bad42be81c07efc450', '["*"]', '2026-01-01 01:02:05', NULL, '2025-12-31 21:32:34', '2026-01-01 01:02:05'),
	(49, 'App\\Models\\User', 1, 'auth_token', '4ec880f92d175d2653041cda3328015709526de15f5936d995a4239b2b9068cb', '["*"]', '2026-01-02 01:19:04', NULL, '2026-01-01 01:03:10', '2026-01-02 01:19:04'),
	(50, 'App\\Models\\User', 1, 'auth_token', '33a314ae8e22cf08395c4b64bb5fab1b7cdcc983c66ca156b7a93e1c0a2ddeb6', '["*"]', '2026-01-02 06:03:48', NULL, '2026-01-02 03:43:15', '2026-01-02 06:03:48'),
	(51, 'App\\Models\\User', 1, 'auth_token', 'ab7a22ee8b3b88f73162008fbf5b34eb4e69d7fa777b0cf70c7637a62d204cf9', '["*"]', '2026-01-02 06:05:03', NULL, '2026-01-02 06:04:44', '2026-01-02 06:05:03'),
	(52, 'App\\Models\\User', 8, 'auth_token', 'd8301c7e6275e3baaf3b03c1cf7e9d58ee9ad36da43226358fbb159aa7ecbcbc', '["*"]', '2026-01-02 08:47:47', NULL, '2026-01-02 06:05:28', '2026-01-02 08:47:47'),
	(53, 'App\\Models\\User', 8, 'auth_token', 'e7761831df5d3e0749f428b3050d5b32cfd6b0905488abb8f8673bb5eed4b094', '["*"]', '2026-01-03 03:04:22', NULL, '2026-01-02 08:48:11', '2026-01-03 03:04:22'),
	(54, 'App\\Models\\User', 1, 'auth_token', '9c6a8a5e2c948cb79b078f3400a8e2acfac0481cec69acc9f5716332c27a04c0', '["*"]', '2026-01-03 08:01:13', NULL, '2026-01-03 03:04:47', '2026-01-03 08:01:13'),
	(55, 'App\\Models\\User', 1, 'auth_token', '37beaa4bc0b8f2be9bb61920ac9b754c986b6388878d2189bf1dcfebb420262d', '["*"]', '2026-01-03 08:16:42', NULL, '2026-01-03 08:01:31', '2026-01-03 08:16:42'),
	(56, 'App\\Models\\User', 1, 'auth_token', '41f588806a1b40c46a25da721bd3d25c9c7d21dc7134c7d873e6549e180d3a59', '["*"]', '2026-01-03 08:20:48', NULL, '2026-01-03 08:19:47', '2026-01-03 08:20:48'),
	(57, 'App\\Models\\User', 1, 'auth_token', '2480e7e73afbdcbf78ae69a43cf10197f69bc2f5d71f345f2291847ee76fd08a', '["*"]', '2026-01-03 08:22:04', NULL, '2026-01-03 08:21:55', '2026-01-03 08:22:04'),
	(58, 'App\\Models\\User', 9, 'auth_token', 'ccef1a4559e28a39e71ca4e7cfa0d3ad04d5d6963732473849dc7f57b1ff8872', '["*"]', '2026-01-03 08:27:51', NULL, '2026-01-03 08:22:29', '2026-01-03 08:27:51'),
	(59, 'App\\Models\\User', 1, 'auth_token', '63d4b6a2f320515f894e1456235afe4c56ef269a8fe0013a93e30ae605591b54', '["*"]', '2026-01-04 09:57:26', NULL, '2026-01-03 08:52:58', '2026-01-04 09:57:26'),
	(60, 'App\\Models\\User', 1, 'auth_token', 'd4a3f66346978072777f3729e703f2fad493ad8adbfe3830d1ceebdb0d0af2a8', '["*"]', '2026-01-04 10:08:35', NULL, '2026-01-04 09:58:29', '2026-01-04 10:08:35'),
	(61, 'App\\Models\\User', 1, 'auth_token', '0d22f7852aaab8a0ea0a93012a5d957db9b811307742dd6e1754f63a3a3acd2e', '["*"]', '2026-01-04 20:01:36', NULL, '2026-01-04 15:04:46', '2026-01-04 20:01:36'),
	(62, 'App\\Models\\User', 1, 'auth_token', 'c764320335956f18be2d3922ec2ab0eb7c497f712b7fd12c55af7c6e24796764', '["*"]', '2026-01-05 02:43:45', NULL, '2026-01-04 21:32:43', '2026-01-05 02:43:45'),
	(63, 'App\\Models\\User', 1, 'auth_token', '290924629f271f4e1fe852dc9997d63147bc5c67f11b8a5e63dca6104a633e2c', '["*"]', '2026-01-05 02:49:13', NULL, '2026-01-05 02:45:15', '2026-01-05 02:49:13'),
	(64, 'App\\Models\\User', 11, 'auth_token', 'c5f5c7c5840ca0c0d212bde0650eff0ff9f3f7b7ca932b03b686f0b28e448c1f', '["*"]', '2026-01-05 02:49:30', NULL, '2026-01-05 02:49:28', '2026-01-05 02:49:30'),
	(65, 'App\\Models\\User', 1, 'auth_token', '5413bea1237183ea01d5cd1e1ca32e619cf36a67ff5b23c97c1353a37aaadd64', '["*"]', '2026-01-05 06:04:54', NULL, '2026-01-05 04:20:12', '2026-01-05 06:04:54'),
	(66, 'App\\Models\\User', 1, 'auth_token', 'b86905c390875dceca326d5f3dcc4d3929adee5a8cef0dd0b21d59f55965f8d6', '["*"]', '2026-01-05 06:05:27', NULL, '2026-01-05 06:05:19', '2026-01-05 06:05:27');

-- Dumping data for table db_ddp_api.sessions: ~3 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('akTWThlEvhkYuWLiurlTQYeNoqA4j28v14KbQxr3', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVF5UG5mUjc2V04zNGdtWHNRcGhiODBkZEZ6MnA0SVQ3QnZtMGtWaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9kZHBfYXBpLnRlc3QvYXBpL2dhbGVyaSI7czo1OiJyb3V0ZSI7czoxMjoiZ2FsZXJpLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766915424),
	('ct8eXrp4sEiPrdDpvjzEgLaexqaLJ3IZVwoeIvVA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWRxZ01sWmR2UjZtY0h1d2FOcjFXcTBLSjRPNDFXMEZpMjhFc2JOdiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9kZHBfYXBpLnRlc3QiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1766852756),
	('jrAnGxUuqmTcsyXLzXGFhESVqnG3wMFDYXKBBcQf', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFI1TXZmdTRiWTR5eW55WE05dFJxZnhHWElxVXE4TTB5MnpyY3QxbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9kZHBfYXBpLnRlc3QvYXBpL2Jlcml0YWFydGlrZWwiO3M6NToicm91dGUiO3M6MTk6ImJlcml0YWFydGlrZWwuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1766888400),
	('mrZG67zuGS9OahjYif5DqP91Z8o8oFZgp25nAMBC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU01sT1JCMHBqcWIwZUdWNUJWaWRFN2FyMmYzUUlkMlRnNjRTdjg2UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766885824),
	('qIu0jc8oBjfk7a10BNm4dSaKlciGMSwuqnyqn1MA', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU1xNTNWNDljNnQxY2pzeUFJMmI4RTZNNlFzUUs3NmcwWkdMbk05OCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9kZHBfYXBpLnRlc3QvYXBpL2Jlcml0YWFydGlrZWwiO3M6NToicm91dGUiO3M6MTk6ImJlcml0YWFydGlrZWwuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767192507);

-- Dumping data for table db_ddp_api.testimoni: ~4 rows (approximately)
INSERT INTO `testimoni` (`id`, `nama`, `jabatan`, `tanggal`, `isi`, `gambar`, `is_tampil`, `created_at`, `updated_at`) VALUES
	(7, 'Dr. Drs. Akmal Malik, M.Si', 'Direktorat Jenderal Otonomi Daerah Kementerian Dalam Negeri RI', '2025-12-31', 'Ini bukan hanya tentang angka, tetapi tentang membangun hubungan yang lebih dekat dan penuh kepercayaan antara pemerintah dan masyarakat', 'testimoni/Yv7efHYNKHK71zT8YJcqGbkhLHHAYwGvin8PTLup.jpg', 1, '2025-12-31 05:19:23', '2026-01-04 16:40:29'),
	(8, 'Ferry Joko Juliantono SE Ak., M.Si', 'Menteri Koperasi Republik Indonesia', '2025-12-31', 'Gerakan kopdes berbasis data desa presisi lebih terukur, terarah, dan tepat sasaran dalam mengatasi kemiskinan dan pengangguran di desa. DDP juga menjadi jawaban atas kekhawatiran berbagai pihak yang menyebut kopdes merah putih hanya bersifat top down atau sentralistik', 'testimoni/Wl0fIwMsjMnEJoMKXHrmzT8VKi5hIETTqFrCgGor.jpg', 1, '2025-12-31 05:27:44', '2026-01-04 16:40:24'),
	(9, 'Sri Sultan Hamengkubuwono X', 'Gubernur Daerah Istimewa Yogyakarta', '2025-12-31', 'Kalau kita ingin bicara keberlanjutan, maka data yang valid adalah keharusan. Dan saya melihat DDP bisa menjawab kebutuhan itu', 'testimoni/gB3ZKuNrNioO4m3XEwEAOCTenVoHAM2FoNc43o64.jpg', 1, '2025-12-31 05:28:15', '2026-01-04 15:57:07');

-- Dumping data for table db_ddp_api.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_approved`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin DDP', 'superadmin@gmail.com', '$2y$12$KsNNhpvEP3ZGxg1emNLM4uvd2HtBfjZnH9e8obc/ZpQhbJ.MmpCY2', 1, 1, NULL, '2025-12-27 08:52:16', '2025-12-27 08:52:16'),
	(10, 'abdullah alhayad arafah', 'hayadarafah@apps.ipb.ac.id', '$2y$12$xazF7C8gWhiC7qHyajRjxOnv8yrT6HZxuh5hFGJQRQiFdfHK/1K4a', 2, 1, NULL, '2026-01-04 09:58:01', '2026-01-04 10:08:29'),
	(11, 'hayad', 'abdullahhayad@gmail.com', '$2y$12$CLldoGcJeFFlgbKhKt3Sbeyim53d8129Rx3WuKQN0oUW/vQ3894L2', 2, 1, NULL, '2026-01-05 02:44:40', '2026-01-05 02:45:31');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
