-- --------------------------------------------------------
-- Máy chủ:                      localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for blog
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `blog`;

-- Dumping structure for table blog.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `last_user_id` bigint(20) unsigned NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_original` tinyint(1) NOT NULL DEFAULT '0',
  `is_draft` tinyint(1) NOT NULL DEFAULT '0',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_slug_unique` (`slug`),
  KEY `articles_view_count_index` (`view_count`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.articles: ~20 rows (approximately)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `category_id`, `user_id`, `last_user_id`, `slug`, `title`, `subtitle`, `content`, `page_image`, `meta_description`, `is_original`, `is_draft`, `view_count`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 8, 1, 1, 'eum-beatae-et-fugiat-laudantium-porro-4psfb', 'Cách tải video lên Youtube bằng điện thoại nhanh chóng', 'Youtube là một công cụ phổ biến cho phép người dùng đăng tải hình ảnh và video, bạn có thể sáng tạo ra những đoạn video thú vị cho mọi người cùng xem', '{"raw":"I. H\\u1ec7 m\\u00e1y \\u00e1p d\\u1ee5ng\\niOS: Y\\u00eau c\\u1ea7u 11.0 tr\\u1edf l\\u00ean\\n\\nAndroid: Kh\\u00e1c nhau t\\u00f9y theo \\u0111i\\u1ec7n tho\\u1ea1i\\n\\nII. H\\u01b0\\u1edbng d\\u1eabn c\\u00e1ch t\\u1ea3i video l\\u00ean Youtube b\\u1eb1ng \\u0111i\\u1ec7n tho\\u1ea1i nhanh ch\\u00f3ng\\n1. C\\u00e1ch 1\\nH\\u01b0\\u1edbng d\\u1eabn nhanh\\n\\nV\\u00e0o \\u1ee9ng d\\u1ee5ng Youtube > Ch\\u1ecdn m\\u1ee5c Th\\u01b0 vi\\u1ec7n > Ch\\u1ecdn Video c\\u1ee7a b\\u1ea1n > \\n\\nNh\\u1ea5n v\\u00e0o T\\u1ea3i video l\\u00ean > Ch\\u1ecdn video c\\u00f3 s\\u1eb5n, ghi video m\\u1edbi > Th\\u00eam ti\\u00eau \\u0111\\u1ec1 v\\u00e0 m\\u00f4 t\\u1ea3 > Ch\\u1ecdn bi\\u1ec3u t\\u01b0\\u1ee3ng Upload.\\n\\nH\\u01b0\\u1edbng d\\u1eabn chi ti\\u1ebft \\n\\nB\\u01b0\\u1edbc 1: T\\u1eeb giao di\\u1ec7n trang ch\\u1ee7 Youtube > Ch\\u1ecdn m\\u1ee5c Th\\u01b0 vi\\u1ec7n > Ch\\u1ecdn Video c\\u1ee7a b\\u1ea1n.\\n![](https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b1you-800x700.jpg)\\nB\\u01b0\\u1edbc 2: Nh\\u1ea5n v\\u00e0o bi\\u1ec3u t\\u01b0\\u1ee3ng t\\u1ea3i Video l\\u00ean.\\n![](https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b2-600x700.jpg)\\nB\\u01b0\\u1edbc 3: Ch\\u1ecdn video c\\u00f3 s\\u1eb5n t\\u1eeb th\\u01b0 vi\\u1ec7n, ghi video m\\u1edbi.\\n![](https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b3YOu-600x700.jpg)\\nB\\u01b0\\u1edbc 4: \\u1ede m\\u1ee5c Th\\u00eam chi ti\\u1ebft, th\\u00eam Ti\\u00eau \\u0111\\u1ec1 v\\u00e0 M\\u00f4 t\\u1ea3.\\n![](https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b4you-600x700.jpg)\\nB\\u01b0\\u1edbc 5: Nh\\u1ea5n v\\u00e0o T\\u1ea3i l\\u00ean.\\n![](https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b5you-800x700.jpg)\\n2. C\\u00e1ch 2\\nH\\u01b0\\u1edbng d\\u1eabn nhanh\\n\\nV\\u00e0o th\\u01b0 vi\\u1ec7n \\u0111i\\u1ec7n tho\\u1ea1i, ch\\u1ecdn video mu\\u1ed1n t\\u1ea3i > Ch\\u1ecdn Chia s\\u1ebb > \\n\\nH\\u01b0\\u1edbng d\\u1eabn chi ti\\u1ebft\\n\\nB\\u01b0\\u1edbc 1: V\\u00e0o th\\u01b0 vi\\u1ec7n \\u0111i\\u1ec7n tho\\u1ea1i, ch\\u1ecdn video mu\\u1ed1n t\\u1ea3i > Ch\\u1ecdn Chia s\\u1ebb.\\n![](https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b1c2-600x700-1.jpg)\\nB\\u01b0\\u1edbc 2: Chia s\\u1ebb video l\\u00ean Youtube.\\n![](https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/cuoiy-600x700-1.jpg)\\nB\\u01b0\\u1edbc 3: \\u0110i\\u1ec1n th\\u00f4ng tin, th\\u1ef1c hi\\u1ec7n t\\u01b0\\u01a1ng t\\u1ef1 nh\\u01b0 t\\u1eeb b\\u01b0\\u1edbc 4 \\u0111\\u1ebfn b\\u01b0\\u1edbc 5 c\\u1ee7a c\\u00e1ch 1.\\n![](https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/PTSYoutune-600x700.jpg)\\nV\\u1edbi 2 c\\u00e1ch \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0 tr\\u00ean l\\u00e0 b\\u1ea1n \\u0111\\u00e3 c\\u00f3 th\\u1ec3 ho\\u00e0n t\\u1ea5t vi\\u1ec7c t\\u1ea3i video l\\u00ean Youtube. Hy v\\u1ecdng b\\u00e0i vi\\u1ebft n\\u00e0y s\\u1ebd gi\\u00fap \\u00edch cho b\\u1ea1n, n\\u1ebfu c\\u00f3 video n\\u00e0o th\\u00fa v\\u1ecb h\\u00e3y chia s\\u1ebb b\\u00ean d\\u01b0\\u1edbi nh\\u00e9! Ch\\u00fac b\\u1ea1n th\\u00e0nh c\\u00f4ng.","html":"<p>I. H\\u1ec7 m\\u00e1y \\u00e1p d\\u1ee5ng<br \\/>\\niOS: Y\\u00eau c\\u1ea7u 11.0 tr\\u1edf l\\u00ean<\\/p>\\n<p>Android: Kh\\u00e1c nhau t\\u00f9y theo \\u0111i\\u1ec7n tho\\u1ea1i<\\/p>\\n<p>II. H\\u01b0\\u1edbng d\\u1eabn c\\u00e1ch t\\u1ea3i video l\\u00ean Youtube b\\u1eb1ng \\u0111i\\u1ec7n tho\\u1ea1i nhanh ch\\u00f3ng<\\/p>\\n<ol>\\n<li>C\\u00e1ch 1<br \\/>\\nH\\u01b0\\u1edbng d\\u1eabn nhanh<\\/li>\\n<\\/ol>\\n<p>V\\u00e0o \\u1ee9ng d\\u1ee5ng Youtube &gt; Ch\\u1ecdn m\\u1ee5c Th\\u01b0 vi\\u1ec7n &gt; Ch\\u1ecdn Video c\\u1ee7a b\\u1ea1n &gt; <\\/p>\\n<p>Nh\\u1ea5n v\\u00e0o T\\u1ea3i video l\\u00ean &gt; Ch\\u1ecdn video c\\u00f3 s\\u1eb5n, ghi video m\\u1edbi &gt; Th\\u00eam ti\\u00eau \\u0111\\u1ec1 v\\u00e0 m\\u00f4 t\\u1ea3 &gt; Ch\\u1ecdn bi\\u1ec3u t\\u01b0\\u1ee3ng Upload.<\\/p>\\n<p>H\\u01b0\\u1edbng d\\u1eabn chi ti\\u1ebft <\\/p>\\n<p>B\\u01b0\\u1edbc 1: T\\u1eeb giao di\\u1ec7n trang ch\\u1ee7 Youtube &gt; Ch\\u1ecdn m\\u1ee5c Th\\u01b0 vi\\u1ec7n &gt; Ch\\u1ecdn Video c\\u1ee7a b\\u1ea1n.<br \\/>\\n<img src=\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b1you-800x700.jpg\\" alt=\\"\\" \\/><br \\/>\\nB\\u01b0\\u1edbc 2: Nh\\u1ea5n v\\u00e0o bi\\u1ec3u t\\u01b0\\u1ee3ng t\\u1ea3i Video l\\u00ean.<br \\/>\\n<img src=\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b2-600x700.jpg\\" alt=\\"\\" \\/><br \\/>\\nB\\u01b0\\u1edbc 3: Ch\\u1ecdn video c\\u00f3 s\\u1eb5n t\\u1eeb th\\u01b0 vi\\u1ec7n, ghi video m\\u1edbi.<br \\/>\\n<img src=\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b3YOu-600x700.jpg\\" alt=\\"\\" \\/><br \\/>\\nB\\u01b0\\u1edbc 4: \\u1ede m\\u1ee5c Th\\u00eam chi ti\\u1ebft, th\\u00eam Ti\\u00eau \\u0111\\u1ec1 v\\u00e0 M\\u00f4 t\\u1ea3.<br \\/>\\n<img src=\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b4you-600x700.jpg\\" alt=\\"\\" \\/><br \\/>\\nB\\u01b0\\u1edbc 5: Nh\\u1ea5n v\\u00e0o T\\u1ea3i l\\u00ean.<br \\/>\\n<img src=\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b5you-800x700.jpg\\" alt=\\"\\" \\/><\\/p>\\n<ol start=\\"2\\">\\n<li>C\\u00e1ch 2<br \\/>\\nH\\u01b0\\u1edbng d\\u1eabn nhanh<\\/li>\\n<\\/ol>\\n<p>V\\u00e0o th\\u01b0 vi\\u1ec7n \\u0111i\\u1ec7n tho\\u1ea1i, ch\\u1ecdn video mu\\u1ed1n t\\u1ea3i &gt; Ch\\u1ecdn Chia s\\u1ebb &gt; <\\/p>\\n<p>H\\u01b0\\u1edbng d\\u1eabn chi ti\\u1ebft<\\/p>\\n<p>B\\u01b0\\u1edbc 1: V\\u00e0o th\\u01b0 vi\\u1ec7n \\u0111i\\u1ec7n tho\\u1ea1i, ch\\u1ecdn video mu\\u1ed1n t\\u1ea3i &gt; Ch\\u1ecdn Chia s\\u1ebb.<br \\/>\\n<img src=\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/b1c2-600x700-1.jpg\\" alt=\\"\\" \\/><br \\/>\\nB\\u01b0\\u1edbc 2: Chia s\\u1ebb video l\\u00ean Youtube.<br \\/>\\n<img src=\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/cuoiy-600x700-1.jpg\\" alt=\\"\\" \\/><br \\/>\\nB\\u01b0\\u1edbc 3: \\u0110i\\u1ec1n th\\u00f4ng tin, th\\u1ef1c hi\\u1ec7n t\\u01b0\\u01a1ng t\\u1ef1 nh\\u01b0 t\\u1eeb b\\u01b0\\u1edbc 4 \\u0111\\u1ebfn b\\u01b0\\u1edbc 5 c\\u1ee7a c\\u00e1ch 1.<br \\/>\\n<img src=\\"https:\\/\\/cdn.tgdd.vn\\/2020\\/04\\/content\\/PTSYoutune-600x700.jpg\\" alt=\\"\\" \\/><br \\/>\\nV\\u1edbi 2 c\\u00e1ch \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0 tr\\u00ean l\\u00e0 b\\u1ea1n \\u0111\\u00e3 c\\u00f3 th\\u1ec3 ho\\u00e0n t\\u1ea5t vi\\u1ec7c t\\u1ea3i video l\\u00ean Youtube. Hy v\\u1ecdng b\\u00e0i vi\\u1ebft n\\u00e0y s\\u1ebd gi\\u00fap \\u00edch cho b\\u1ea1n, n\\u1ebfu c\\u00f3 video n\\u00e0o th\\u00fa v\\u1ecb h\\u00e3y chia s\\u1ebb b\\u00ean d\\u01b0\\u1edbi nh\\u00e9! Ch\\u00fac b\\u1ea1n th\\u00e0nh c\\u00f4ng.<\\/p>"}', 'https://cdn.tgdd.vn/2020/04/content/youtube_800x450-800x450.jpg', 'Cách tải video lên Youtube bằng điện thoại nhanh chóng', 0, 0, 44, '2021-07-07 04:52:36', '2021-08-24 02:36:12', '2021-09-28 14:09:02', NULL),
	(2, 7, 2, 2, 'vitae-officia-vel-a5kps', 'Vitae officia vel.', 'vitae officia vel.', '{"raw":"Culpa ducimus eveniet recusandae vel veniam harum ullam sed. Corrupti corrupti eveniet aut quia similique ut. Sequi vitae ut veniam deserunt sequi est asperiores molestiae.","html":"<p>Culpa ducimus eveniet recusandae vel veniam harum ullam sed. Corrupti corrupti eveniet aut quia similique ut. Sequi vitae ut veniam deserunt sequi est asperiores molestiae.<\\/p>"}', 'https://lorempixel.com/640/480/?46423', 'Et molestiae molestiae aliquid ut.', 0, 0, 91, '2021-06-30 18:07:43', '2021-08-24 02:36:12', '2021-08-31 09:09:08', NULL),
	(3, 7, 12, 10, 'illum-error-impedit-cupiditate-optio-deleniti-et-omnis-modi-fugit-maxime-illum-sit-sxr6j', 'Illum error impedit cupiditate optio deleniti et omnis modi fugit maxime illum sit.', 'illum error impedit cupiditate optio deleniti et omnis modi fugit maxime illum sit.', '{"raw":"Aspernatur est vero quibusdam autem asperiores aut similique odit. Nemo sunt et veritatis sed atque et praesentium. Id excepturi est ipsa molestiae porro ea. Recusandae ab ut voluptatibus et officia.","html":"<p>Aspernatur est vero quibusdam autem asperiores aut similique odit. Nemo sunt et veritatis sed atque et praesentium. Id excepturi est ipsa molestiae porro ea. Recusandae ab ut voluptatibus et officia.<\\/p>"}', 'https://lorempixel.com/640/480/?52237', 'Quia consequuntur quisquam earum et.', 0, 0, 82, '2021-07-18 03:40:49', '2021-08-24 02:36:12', '2021-08-26 15:48:10', NULL),
	(4, 5, 2, 3, 'molestiae-perspiciatis-aliquid-dgkkp', 'Molestiae perspiciatis aliquid.', 'molestiae perspiciatis aliquid.', '{"raw":"Architecto distinctio autem dolore esse. Qui culpa qui sunt adipisci. Nostrum doloremque sint quo non commodi nesciunt debitis. Quia dolorum ad debitis natus. Dignissimos molestias rerum sint quae nobis adipisci.","html":"<p>Architecto distinctio autem dolore esse. Qui culpa qui sunt adipisci. Nostrum doloremque sint quo non commodi nesciunt debitis. Quia dolorum ad debitis natus. Dignissimos molestias rerum sint quae nobis adipisci.<\\/p>"}', 'https://lorempixel.com/640/480/?92678', 'Laudantium perspiciatis et nesciunt nostrum non molestiae.', 0, 0, 21, '2021-07-18 18:21:27', '2021-08-24 02:36:12', '2021-08-26 15:09:05', NULL),
	(5, 6, 1, 7, 'harum-enim-nostrum-voluptatem-a-dolorum-perspiciatis-eligendi-voluptatibus-dg9wf', 'Harum enim nostrum voluptatem a dolorum perspiciatis eligendi voluptatibus.', 'harum enim nostrum voluptatem a dolorum perspiciatis eligendi voluptatibus.', '{"raw":"Et et accusamus quisquam blanditiis voluptatem cum nesciunt qui. Dolorem dolor inventore eos voluptatem ea non. Minima atque placeat eaque nihil.","html":"<p>Et et accusamus quisquam blanditiis voluptatem cum nesciunt qui. Dolorem dolor inventore eos voluptatem ea non. Minima atque placeat eaque nihil.<\\/p>"}', 'https://lorempixel.com/640/480/?64722', 'Aut asperiores exercitationem omnis deleniti.', 0, 0, 47, '2021-07-23 23:19:55', '2021-08-24 02:36:12', '2021-08-26 15:08:59', NULL),
	(6, 5, 12, 11, 'voluptas-quia-ratione-non-non-placeat-doloremque-kn4tc', 'Voluptas quia ratione non non placeat doloremque.', 'voluptas quia ratione non non placeat doloremque.', '{"raw":"Minima maiores exercitationem provident voluptatem dignissimos. Velit error sit sapiente sit. Ullam voluptatem repellat quia fugit iusto dignissimos adipisci. Aliquid sed debitis ea iusto.","html":"<p>Minima maiores exercitationem provident voluptatem dignissimos. Velit error sit sapiente sit. Ullam voluptatem repellat quia fugit iusto dignissimos adipisci. Aliquid sed debitis ea iusto.<\\/p>"}', 'https://lorempixel.com/640/480/?41271', 'Et sint minus beatae.', 0, 0, 15, '2021-07-26 14:40:47', '2021-08-24 02:36:12', '2021-09-01 15:42:22', NULL),
	(7, 2, 1, 1, 'nam-nemo-fugit-piygs', 'Nam nemo fugit.', 'nam nemo fugit.', '{"raw":"Laudantium consectetur autem neque. Quia aperiam itaque libero dignissimos qui laudantium. Nam soluta enim rerum inventore. Iure cupiditate et aut recusandae similique soluta.","html":"<p>Laudantium consectetur autem neque. Quia aperiam itaque libero dignissimos qui laudantium. Nam soluta enim rerum inventore. Iure cupiditate et aut recusandae similique soluta.<\\/p>"}', 'https://lorempixel.com/640/480/?81376', 'Labore et explicabo similique ullam distinctio voluptas illum nemo.', 0, 0, 47, '2021-08-02 10:03:03', '2021-08-24 02:36:12', '2021-09-01 15:41:49', NULL),
	(8, 10, 2, 4, 'nesciunt-eveniet-quaerat-aut-autem-sunt-eos-aut-2qlf1', 'Nesciunt eveniet quaerat aut autem sunt eos aut.', 'nesciunt eveniet quaerat aut autem sunt eos aut.', '{"raw":"Rerum ad repellendus fuga inventore. Hic enim impedit velit corporis molestias est enim. Sunt possimus saepe saepe voluptatum veniam error et. Temporibus eveniet sunt quis impedit repellendus error.","html":"<p>Rerum ad repellendus fuga inventore. Hic enim impedit velit corporis molestias est enim. Sunt possimus saepe saepe voluptatum veniam error et. Temporibus eveniet sunt quis impedit repellendus error.<\\/p>"}', 'https://lorempixel.com/640/480/?47835', 'Voluptas sit est in omnis blanditiis a illum laudantium.', 0, 0, 190, '2021-08-22 07:42:44', '2021-08-24 02:36:12', '2021-09-30 09:15:06', NULL),
	(9, 1, 1, 3, 'nesciunt-corporis-pariatur-qui-corrupti-totam-deleniti-mfxvh', 'Nesciunt corporis pariatur qui corrupti totam deleniti.', 'nesciunt corporis pariatur qui corrupti totam deleniti.', '{"raw":"Officia ex perspiciatis explicabo repudiandae ut nihil voluptatem. Ut aspernatur est facere aperiam totam. Ut eos porro dolor.","html":"<p>Officia ex perspiciatis explicabo repudiandae ut nihil voluptatem. Ut aspernatur est facere aperiam totam. Ut eos porro dolor.<\\/p>"}', 'https://lorempixel.com/640/480/?84221', 'Id beatae nostrum modi ut.', 0, 0, 97, '2021-07-03 04:41:20', '2021-08-24 02:36:12', '2021-08-27 10:44:35', NULL),
	(10, 5, 2, 3, 'eum-id-rerum-voluptatem-repellendus-commodi-sed-tenetur-17giv', 'Eum id rerum voluptatem repellendus commodi sed tenetur.', 'eum id rerum voluptatem repellendus commodi sed tenetur.', '{"raw":"Error officiis quibusdam consequuntur impedit saepe dicta. Ut et qui deleniti sit quisquam. Minus laboriosam asperiores aut rerum aspernatur rerum. Enim voluptate consectetur ea enim. Voluptatem distinctio et doloribus autem molestiae et repellendus tenetur.","html":"<p>Error officiis quibusdam consequuntur impedit saepe dicta. Ut et qui deleniti sit quisquam. Minus laboriosam asperiores aut rerum aspernatur rerum. Enim voluptate consectetur ea enim. Voluptatem distinctio et doloribus autem molestiae et repellendus tenetur.<\\/p>"}', 'https://lorempixel.com/640/480/?30973', 'Quis praesentium aperiam voluptates fugit rerum et non.', 0, 0, 121, '2021-08-19 06:44:18', '2021-08-24 02:36:12', '2021-09-29 13:50:41', NULL),
	(11, 7, 12, 1, 'aut-sapiente-commodi-me65v', 'Aut sapiente commodi.', 'aut sapiente commodi.', '{"raw":"Asperiores saepe pariatur maxime ut et. Vitae debitis molestiae velit sit eos. Placeat aut autem veritatis cupiditate necessitatibus sint.","html":"<p>Asperiores saepe pariatur maxime ut et. Vitae debitis molestiae velit sit eos. Placeat aut autem veritatis cupiditate necessitatibus sint.<\\/p>"}', 'https://lorempixel.com/640/480/?65253', 'Consectetur aut eum quia cum sit.', 0, 0, 7, '2021-06-29 08:49:39', '2021-08-24 02:36:12', '2021-08-24 02:36:13', NULL),
	(12, 7, 12, 10, 'cupiditate-voluptas-dolorem-consequatur-voluptate-architecto-rjg1y', 'Cupiditate voluptas dolorem consequatur voluptate architecto.', 'cupiditate voluptas dolorem consequatur voluptate architecto.', '{"raw":"In cupiditate ut eveniet molestiae. Ipsum ipsa rerum nostrum veritatis. Culpa ipsa facere doloremque eius dolores labore ipsa. Ullam ea inventore enim rerum vero quia.","html":"<p>In cupiditate ut eveniet molestiae. Ipsum ipsa rerum nostrum veritatis. Culpa ipsa facere doloremque eius dolores labore ipsa. Ullam ea inventore enim rerum vero quia.<\\/p>"}', 'https://lorempixel.com/640/480/?84331', 'Fuga exercitationem ratione dolore aliquam nesciunt autem minima.', 0, 0, 24, '2021-08-12 11:02:24', '2021-08-24 02:36:12', '2021-09-01 16:00:25', NULL),
	(13, 3, 1, 4, 'eos-debitis-qui-ut-sunt-maiores-commodi-quo-dfpyx', 'Eos debitis qui ut sunt maiores commodi quo.', 'eos debitis qui ut sunt maiores commodi quo.', '{"raw":"Qui eaque rerum rerum debitis molestiae necessitatibus quia. Quia optio perspiciatis cum accusamus aperiam et. Debitis quia cupiditate molestiae sed hic impedit dicta.","html":"<p>Qui eaque rerum rerum debitis molestiae necessitatibus quia. Quia optio perspiciatis cum accusamus aperiam et. Debitis quia cupiditate molestiae sed hic impedit dicta.<\\/p>"}', 'https://lorempixel.com/640/480/?70713', 'Iusto voluptatem perspiciatis at error ducimus tempore qui accusantium.', 0, 0, 86, '2021-07-04 01:21:11', '2021-08-24 02:36:12', '2021-08-26 15:08:30', NULL),
	(14, 6, 2, 2, 'sequi-nulla-dignissimos-et-voluptas-tempora-tempore-odit-ut-debitis-euj4d', 'Sequi nulla dignissimos et voluptas tempora tempore odit ut debitis.', 'sequi nulla dignissimos et voluptas tempora tempore odit ut debitis.', '{"raw":"Et ipsam temporibus neque qui neque saepe. Neque dolores vero optio sapiente.","html":"<p>Et ipsam temporibus neque qui neque saepe. Neque dolores vero optio sapiente.<\\/p>"}', 'https://lorempixel.com/640/480/?77011', 'Est harum dolorum dolores repellendus autem est est aut.', 0, 0, 60, '2021-06-25 06:28:21', '2021-08-24 02:36:12', '2021-08-24 02:36:13', NULL),
	(15, 7, 1, 7, 'doloremque-omnis-ducimus-nihil-corporis-esse-eum-laudantium-non-quasi-enim-nryke', 'Doloremque omnis ducimus nihil corporis esse eum laudantium non quasi enim.', 'doloremque omnis ducimus nihil corporis esse eum laudantium non quasi enim.', '{"raw":"Aut officia consequatur eos id quod et. Unde maiores excepturi molestiae soluta. Corporis voluptas ea esse itaque ipsa.","html":"<p>Aut officia consequatur eos id quod et. Unde maiores excepturi molestiae soluta. Corporis voluptas ea esse itaque ipsa.<\\/p>"}', 'https://lorempixel.com/640/480/?90164', 'Delectus possimus ab sequi similique.', 0, 0, 52, '2021-08-16 11:11:05', '2021-08-24 02:36:12', '2021-08-26 15:02:31', NULL),
	(16, 10, 1, 4, 'qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx', 'Qui perferendis aut magnam omnis ullam non aut nobis.', 'qui perferendis aut magnam omnis ullam non aut nobis.', '{"raw":"Consequatur blanditiis hic laudantium beatae. Perspiciatis qui vitae ut quia culpa repellat rerum. Minus qui et dolorem qui unde. Est et aperiam voluptas et omnis.","html":"<p>Consequatur blanditiis hic laudantium beatae. Perspiciatis qui vitae ut quia culpa repellat rerum. Minus qui et dolorem qui unde. Est et aperiam voluptas et omnis.<\\/p>"}', 'https://lorempixel.com/640/480/?50921', 'Dolor eaque doloremque nesciunt.', 0, 0, 43, '2021-08-16 11:33:04', '2021-08-24 02:36:12', '2021-09-30 09:13:39', NULL),
	(17, 4, 12, 10, 'nesciunt-velit-eveniet-dolores-a-ke8x9', 'Nesciunt velit eveniet dolores a.', 'nesciunt velit eveniet dolores a.', '{"raw":"Repudiandae quis ratione iure exercitationem animi sed. Magni esse et eos optio. Explicabo ut eaque corrupti est.","html":"<p>Repudiandae quis ratione iure exercitationem animi sed. Magni esse et eos optio. Explicabo ut eaque corrupti est.<\\/p>"}', 'https://lorempixel.com/640/480/?29912', 'Suscipit voluptas aut mollitia architecto maiores laborum dolores.', 0, 0, 47, '2021-08-03 13:22:12', '2021-08-24 02:36:12', '2021-08-26 15:08:53', NULL),
	(18, 2, 1, 5, 'fugiat-vel-id-uxiaf', 'Fugiat vel id.', 'fugiat vel id.', '{"raw":"Numquam ut maiores aut pariatur ipsum facere suscipit. Modi est maxime commodi sit doloremque asperiores. Quis voluptatem illum inventore perferendis a pariatur id.","html":"<p>Numquam ut maiores aut pariatur ipsum facere suscipit. Modi est maxime commodi sit doloremque asperiores. Quis voluptatem illum inventore perferendis a pariatur id.<\\/p>"}', 'https://lorempixel.com/640/480/?47947', 'Illo neque aut sed nihil quaerat nostrum magni voluptatem.', 0, 0, 35, '2021-07-13 15:57:20', '2021-08-24 02:36:12', '2021-08-26 15:01:28', NULL),
	(19, 10, 2, 4, 'nostrum-eveniet-vitae-repellendus-repellendus-ipsum-illum-est-qui-sgwei', 'Nostrum eveniet vitae repellendus repellendus ipsum illum est qui.', 'nostrum eveniet vitae repellendus repellendus ipsum illum est qui.', '{"raw":"Vero unde quo sunt ullam laboriosam voluptates. Voluptatum officia qui facilis laborum ut. Consequatur delectus nemo necessitatibus qui excepturi. Molestiae beatae quas consequuntur nisi atque et. Dicta hic atque ut error quod quam tempora.","html":"<p>Vero unde quo sunt ullam laboriosam voluptates. Voluptatum officia qui facilis laborum ut. Consequatur delectus nemo necessitatibus qui excepturi. Molestiae beatae quas consequuntur nisi atque et. Dicta hic atque ut error quod quam tempora.<\\/p>"}', 'https://lorempixel.com/640/480/?24059', 'Aperiam error et atque est maxime recusandae.', 0, 0, 9, '2021-06-27 02:28:21', '2021-08-24 02:36:12', '2021-08-26 15:12:15', NULL),
	(20, 2, 1, 1, 'nam-reprehenderit-odit-quia-in-ueroz', 'Nam reprehenderit odit quia in.', 'nam reprehenderit odit quia in.', '{"raw":"A facere libero exercitationem nostrum. Sunt sunt aliquid necessitatibus et cupiditate nostrum perferendis. Minima odit officia sit aut quae suscipit quos. Harum velit provident atque aperiam nesciunt.","html":"<p>A facere libero exercitationem nostrum. Sunt sunt aliquid necessitatibus et cupiditate nostrum perferendis. Minima odit officia sit aut quae suscipit quos. Harum velit provident atque aperiam nesciunt.<\\/p>"}', 'https://lorempixel.com/640/480/?49121', 'Voluptates provident qui quis et aut quibusdam et.', 0, 0, 51, '2021-07-14 15:21:43', '2021-08-24 02:36:12', '2021-08-26 15:05:17', NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Dumping structure for table blog.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.categories: ~10 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parent_id`, `name`, `path`, `description`, `image_url`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Danh mục 1', 'http://www.bailey.info/eaque-repellendus-totam-qui-ratione-earum-amet-quos.html', NULL, NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12'),
	(2, 0, 'Danh mục 2', 'http://www.jaskolski.net/ducimus-nesciunt-minus-rerum-voluptates-minima', NULL, NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12'),
	(3, 0, 'Danh mục 3', 'https://www.connelly.net/enim-cumque-officiis-magnam', NULL, NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12'),
	(4, 0, 'Danh mục 3', 'http://barrows.com/nobis-alias-ut-sunt-ipsa-sequi', NULL, NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12'),
	(5, 0, 'Danh mục 4', 'http://www.marvin.com/et-magni-veritatis-praesentium', NULL, NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12'),
	(6, 0, 'Danh mục 5', 'http://wintheiser.com/quo-ad-repudiandae-consequatur-praesentium-officiis.html', NULL, NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12'),
	(7, 0, 'Danh mục 6', 'http://murray.com/', NULL, NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12'),
	(8, 0, 'Danh mục 7', 'http://www.wilkinson.com/perferendis-libero-blanditiis-reiciendis-hic-est', NULL, NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12'),
	(9, 0, 'Danh mục  8', 'http://lang.com/aut-architecto-debitis-culpa-veniam-et-voluptatem.html', NULL, NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12'),
	(10, 0, 'Danh mục 9', 'https://www.treutel.biz/et-velit-officiis-libero-distinctio', NULL, NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table blog.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `commentable_id` bigint(20) unsigned NOT NULL,
  `commentable_type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.comments: ~0 rows (approximately)
DELETE FROM `comments`;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table blog.discussions
CREATE TABLE IF NOT EXISTS `discussions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `last_user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.discussions: ~0 rows (approximately)
DELETE FROM `discussions`;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;

-- Dumping structure for table blog.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table blog.followers
CREATE TABLE IF NOT EXISTS `followers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `follow_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.followers: ~0 rows (approximately)
DELETE FROM `followers`;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;

-- Dumping structure for table blog.ipinfo
CREATE TABLE IF NOT EXISTS `ipinfo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locationinfo` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `severinfo` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IPtype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proxy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browserlang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ipinfo_article_id_foreign` (`article_id`),
  CONSTRAINT `ipinfo_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.ipinfo: ~22 rows (approximately)
DELETE FROM `ipinfo`;
/*!40000 ALTER TABLE `ipinfo` DISABLE KEYS */;
INSERT INTO `ipinfo` (`id`, `ip`, `port`, `locationinfo`, `severinfo`, `IPtype`, `country`, `country_flag`, `region`, `city`, `lat`, `long`, `asn`, `org`, `isp`, `proxy`, `device`, `browserlang`, `article_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '222.255.157.161', '62356', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"62356","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:14', '2021-09-28 13:33:15', NULL),
	(2, '222.255.157.161', '52960', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"52960","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:22', '2021-09-28 13:33:22', NULL),
	(3, '222.255.157.161', '62356', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"62356","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:26', '2021-09-28 13:33:27', NULL),
	(4, '222.255.157.161', '52960', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"52960","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:31', '2021-09-28 13:33:31', NULL),
	(5, '222.255.157.161', '62356', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"62356","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:35', '2021-09-28 13:33:35', NULL),
	(6, '222.255.157.161', '55419', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"55419","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:36', '2021-09-28 13:33:37', NULL),
	(7, '222.255.157.161', '52960', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"52960","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:36', '2021-09-28 13:33:37', NULL),
	(8, '222.255.157.161', '62355', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"62355","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:37', '2021-09-28 13:33:38', NULL),
	(9, '222.255.157.161', '64754', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"64754","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:37', '2021-09-28 13:33:38', NULL),
	(10, '222.255.157.161', '59029', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"59029","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:38', '2021-09-28 13:33:38', NULL),
	(11, '222.255.157.161', '62356', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"62356","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:40', '2021-09-28 13:33:40', NULL),
	(12, '222.255.157.161', '55419', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"55419","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:41', '2021-09-28 13:33:41', NULL),
	(13, '222.255.157.161', '52960', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"52960","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:42', '2021-09-28 13:33:42', NULL),
	(14, '222.255.157.161', '64754', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"64754","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:42', '2021-09-28 13:33:43', NULL),
	(15, '222.255.157.161', '62355', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"62355","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:43', '2021-09-28 13:33:43', NULL),
	(16, '222.255.157.161', '59029', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"59029","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:43', '2021-09-28 13:33:44', NULL),
	(17, '222.255.157.161', '62356', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"62356","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:45', '2021-09-28 13:33:45', NULL),
	(18, '222.255.157.161', '55419', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"55419","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:45', '2021-09-28 13:33:46', NULL),
	(19, '222.255.157.161', '52960', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"52960","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:46', '2021-09-28 13:33:47', NULL),
	(20, '222.255.157.161', '64754', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"64754","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 16, '2021-09-28 13:33:47', '2021-09-28 13:33:48', NULL),
	(21, '222.255.157.161', '53096', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"53096","REDIRECT_URL":"\\/nesciunt-eveniet-quaerat-aut-autem-sunt-eos-aut-2qlf1","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 8, '2021-09-29 13:50:18', '2021-09-29 13:50:18', NULL),
	(22, '222.255.157.161', '59101', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/93.0.4577.82 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"59101","REDIRECT_URL":"\\/eum-id-rerum-voluptatem-repellendus-commodi-sed-tenetur-17giv","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WebKit<br>Chrome:93.0.4577.82<br>Windows:10.0', 'en-us', 10, '2021-09-29 13:50:41', '2021-09-29 13:50:41', NULL),
	(23, '222.255.157.161', '57584', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.61 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"57584","REDIRECT_URL":"\\/qui-perferendis-aut-magnam-omnis-ullam-non-aut-nobis-ue4gx","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', 'IPv4', 'Vietnam', 'https://cdn.ipwhois.io/flags/vn.svg', 'Hanoi', 'Hanoi', '21.0277644', '105.8341598', 'AS45899', 'VietNam Data Communication Company', 'VNPT Corp', 'IP chưa qua proxy. Chỉ số đánh giá là: 0', 'WebKit<br>Chrome:94.0.4606.61<br>Windows:10.0', 'en-us', 16, '2021-09-30 09:13:39', '2021-09-30 09:13:40', NULL),
	(24, '222.255.157.161', '63695', '', '{"HTTP_UPGRADE_INSECURE_REQUESTS":"1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/94.0.4606.61 Safari\\/537.36","HTTP_SEC_GPC":"1","HTTP_ACCEPT_ENCODING":"gzip, deflate","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.9","REMOTE_ADDR":"127.0.0.1","REMOTE_PORT":"63695","REDIRECT_URL":"\\/nesciunt-eveniet-quaerat-aut-autem-sunt-eos-aut-2qlf1","REQUEST_METHOD":"GET","BROADCAST_DRIVER":"log","CACHE_DRIVER":"file"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WebKit<br>Chrome:94.0.4606.61<br>Windows:10.0', 'en-us', 8, '2021-09-30 09:15:06', '2021-09-30 09:15:06', NULL);
/*!40000 ALTER TABLE `ipinfo` ENABLE KEYS */;

-- Dumping structure for table blog.links
CREATE TABLE IF NOT EXISTS `links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `links_name_index` (`name`),
  KEY `links_link_index` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.links: ~10 rows (approximately)
DELETE FROM `links`;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` (`id`, `name`, `link`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Lorenza Ferry', 'http://www.harris.org/aut-voluptates-magni-velit-sit-quis-eos', 'https://lorempixel.com/640/480/?78488', 1, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(2, 'Prof. Jerad Hudson PhD', 'http://www.auer.net/assumenda-fuga-amet-nam-porro-sint', 'https://lorempixel.com/640/480/?91216', 1, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(3, 'Kamille Heathcote DVM', 'http://hintz.com/', 'https://lorempixel.com/640/480/?47563', 1, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(4, 'Clement Friesen', 'http://kilback.com/', 'https://lorempixel.com/640/480/?16949', 1, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(5, 'Stephen Goyette', 'http://roob.com/enim-est-voluptatem-magni-in-unde-animi', 'https://lorempixel.com/640/480/?94549', 1, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(6, 'Saul Kerluke', 'http://www.rolfson.net/sint-animi-deleniti-aut.html', 'https://lorempixel.com/640/480/?94430', 1, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(7, 'Prof. Gregg Larkin Sr.', 'http://hills.com/temporibus-maxime-voluptates-dolorem-quos-quidem-sit.html', 'https://lorempixel.com/640/480/?89628', 1, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(8, 'Patience Kovacek MD', 'http://www.miller.com/cumque-et-libero-ut-impedit-similique', 'https://lorempixel.com/640/480/?24580', 1, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(9, 'Prof. Jaylan Borer', 'http://dooley.com/quisquam-et-necessitatibus-qui-aspernatur', 'https://lorempixel.com/640/480/?17736', 1, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(10, 'Mrs. Assunta Howe I', 'http://www.wolff.com/', 'https://lorempixel.com/640/480/?72023', 1, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;

-- Dumping structure for table blog.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.migrations: ~21 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(44, '2014_10_12_000000_create_users_table', 1),
	(45, '2014_10_12_100000_create_password_resets_table', 1),
	(46, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(47, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(48, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(49, '2016_06_01_000004_create_oauth_clients_table', 1),
	(50, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(51, '2016_09_02_065857_create_articles_table', 1),
	(52, '2016_09_02_065920_create_tags_table', 1),
	(53, '2016_09_02_065952_create_visitors_table', 1),
	(54, '2016_09_02_070119_create_categories_table', 1),
	(55, '2016_09_02_070132_create_discussions_table', 1),
	(56, '2016_09_02_070151_create_comments_table', 1),
	(57, '2016_09_13_022056_create_links_table', 1),
	(58, '2016_11_11_163610_create_taggables_table', 1),
	(59, '2016_12_11_153312_create_followers_table', 1),
	(60, '2016_12_12_171655_create_notifications_table', 1),
	(61, '2016_12_12_205419_create_failed_jobs_table', 1),
	(62, '2018_05_22_091255_create_permission_tables', 1),
	(63, '2021_03_13_000000_create_votes_table', 1),
	(64, '2021_08_24_005322_create_ipinfos_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table blog.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.model_has_permissions: ~0 rows (approximately)
DELETE FROM `model_has_permissions`;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Dumping structure for table blog.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.model_has_roles: ~0 rows (approximately)
DELETE FROM `model_has_roles`;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Dumping structure for table blog.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.notifications: ~0 rows (approximately)
DELETE FROM `notifications`;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table blog.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.oauth_access_tokens: ~0 rows (approximately)
DELETE FROM `oauth_access_tokens`;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table blog.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.oauth_auth_codes: ~0 rows (approximately)
DELETE FROM `oauth_auth_codes`;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table blog.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.oauth_clients: ~0 rows (approximately)
DELETE FROM `oauth_clients`;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table blog.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.oauth_personal_access_clients: ~0 rows (approximately)
DELETE FROM `oauth_personal_access_clients`;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table blog.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.oauth_refresh_tokens: ~0 rows (approximately)
DELETE FROM `oauth_refresh_tokens`;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table blog.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table blog.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.permissions: ~38 rows (approximately)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'list_user', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(2, 'create_user', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(3, 'update_user', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(4, 'destroy_user', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(5, 'list_article', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(6, 'create_article', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(7, 'update_article', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(8, 'destroy_article', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(9, 'list_discussion', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(10, 'create_discussion', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(11, 'update_discussion', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(12, 'destroy_discussion', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(13, 'list_comment', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(14, 'update_comment', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(15, 'destroy_comment', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(16, 'list_file', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(17, 'create_file_folder', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(18, 'upload_file', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(19, 'destroy_file', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(20, 'list_tag', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(21, 'create_tag', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(22, 'update_tag', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(23, 'destroy_tag', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(24, 'list_category', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(25, 'create_category', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(26, 'update_category', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(27, 'destroy_category', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(28, 'list_link', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(29, 'create_link', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(30, 'update_link', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(31, 'destroy_link', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(32, 'list_role', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(33, 'create_role', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(34, 'update_role', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(35, 'update_role_permissions', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(36, 'destroy_role', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(37, 'list_visitor', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(38, 'list_system_info', 'web', '2021-08-24 02:36:13', '2021-08-24 02:36:13');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table blog.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.roles: ~0 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table blog.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.role_has_permissions: ~0 rows (approximately)
DELETE FROM `role_has_permissions`;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping structure for table blog.taggables
CREATE TABLE IF NOT EXISTS `taggables` (
  `tag_id` bigint(20) unsigned NOT NULL,
  `taggable_id` bigint(20) unsigned NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `taggables_tag_id_index` (`tag_id`),
  KEY `taggables_taggable_id_index` (`taggable_id`),
  KEY `taggables_taggable_type_index` (`taggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.taggables: ~0 rows (approximately)
DELETE FROM `taggables`;
/*!40000 ALTER TABLE `taggables` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggables` ENABLE KEYS */;

-- Dumping structure for table blog.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_tag_unique` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.tags: ~5 rows (approximately)
DELETE FROM `tags`;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `tag`, `title`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'tag1', 'Tag thứ 1', 'Tag thứ 1', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(2, 'tag2', 'Tag thứ 2', 'Tag thứ 2', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(3, 'tag3', 'Tag thứ 3', 'Tag thứ 3', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(4, 'tag4', 'Tag thứ 4', 'Tag thứ 4', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(5, 'tag5', 'Tag thứ 5', 'Tag thứ 5', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping structure for table blog.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weibo_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weibo_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_notify_enabled` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_confirm_code_unique` (`confirm_code`),
  KEY `users_email_notify_enabled_index` (`email_notify_enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.users: ~11 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `nickname`, `avatar`, `email`, `confirm_code`, `status`, `is_admin`, `password`, `github_id`, `github_name`, `github_url`, `weibo_name`, `weibo_link`, `website`, `description`, `email_notify_enabled`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Ngô Minh', NULL, NULL, 'dustbin201@gmail.com', 'nkNDlfn3HVeDq57zQFTC24HMdHRDzRKDdnygPJXSHJ2uU5A1Wj12kQhNVQK2GzC3', 1, 1, '$2y$10$kr3I47wBEJL.FRuN2wbac.Z3hvddJo8mudedy0tH/K1oO43NjKT32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(2, 'Neil Bernhard', NULL, NULL, 'dustbin203@gmail.com', 'lO3gCvE2n2GoFzcV459S5K6qLeWfKLQf7JRTSYjV0aOYd8C3a3oco0rtnh3vw9fR', 1, 0, '$2y$10$TFcuJU6HDN9cuG1vZXwITeUxv5gs5QXLidmLLZcl73LRoKmkyhCkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'HBVOM8i7QI', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(3, 'Jaunita Anderson', NULL, NULL, 'uwitting@example.org', 'QfFMJU1Tin6Cr6U5oWwrXa5S28hOkMu0KcFqG3xJuisBYoYdxoUwQPKk3DfJRRPm', 1, 0, '$2y$10$TFcuJU6HDN9cuG1vZXwITeUxv5gs5QXLidmLLZcl73LRoKmkyhCkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'a716Jnt0pC', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(4, 'Liam Wisozk', NULL, NULL, 'ywalter@example.org', 'YzRj6WOs9L8g7HQXPxjyBPEbBQYl7P5dTT0EarmtfLmMbjn6ysGOEluRbJh9naSC', 1, 0, '$2y$10$TFcuJU6HDN9cuG1vZXwITeUxv5gs5QXLidmLLZcl73LRoKmkyhCkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'xTPBXVtQsz', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(5, 'Angeline Purdy', NULL, NULL, 'khodkiewicz@example.com', 'SnRNt9mjUhjitOddqGhbDCTZUGWUtG30jLhBlvWwjhPbtPY72p8LANNsaOUEFM1f', 1, 0, '$2y$10$TFcuJU6HDN9cuG1vZXwITeUxv5gs5QXLidmLLZcl73LRoKmkyhCkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', '1IxG5mcvtw', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(6, 'Gerardo Bruen', NULL, NULL, 'jdonnelly@example.com', 'tDxCzpYO37ZzIivR12GrfSd2OD7WykqsjNosEkn2qmIRgk1sW0lo9wt21Ob8owfZ', 1, 0, '$2y$10$TFcuJU6HDN9cuG1vZXwITeUxv5gs5QXLidmLLZcl73LRoKmkyhCkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'iJyPDNADPH', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(7, 'Dr. Burdette Heidenreich', NULL, NULL, 'donna01@example.com', 'lr0k48YRxHWvaEz5kdullr5pmwjbmsZ2kx63gaROGk93Niea7ATNvcXDy8Oc43r9', 1, 0, '$2y$10$TFcuJU6HDN9cuG1vZXwITeUxv5gs5QXLidmLLZcl73LRoKmkyhCkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'dWwBF1C3XQ', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(8, 'Serenity Effertz', NULL, NULL, 'lowe.thad@example.org', 'y6JijdahSbpu4UJCcEqj3ThhafCVYrWOLT7HfXgIfIjlfDGjEjdkQyKFEchFO76m', 1, 0, '$2y$10$TFcuJU6HDN9cuG1vZXwITeUxv5gs5QXLidmLLZcl73LRoKmkyhCkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'TugOgc4fSo', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(9, 'Keith Koepp I', NULL, NULL, 'fheaney@example.org', 'gI6QemjVH3sU47NiyMzHG5bJuVGvVtnm1sM5f3SExmdyulXsOpYzViGlSQi0nlbz', 1, 0, '$2y$10$TFcuJU6HDN9cuG1vZXwITeUxv5gs5QXLidmLLZcl73LRoKmkyhCkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', '40MSrQ7cBu', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(10, 'Porter Hayes', NULL, NULL, 'lreichel@example.com', 'OrIQqDIxvSDftWtp06ebOwnWkD22bvWzGiwoNZdl5c9UWzk2vN81QPO7oyGlrMDt', 1, 0, '$2y$10$TFcuJU6HDN9cuG1vZXwITeUxv5gs5QXLidmLLZcl73LRoKmkyhCkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'fu9porBvqi', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(11, 'Murphy Halvorson', NULL, NULL, 'tianna56@example.org', '3RZLvN0TZP1AS5jaZwPOOY3K9BUmDdZEdH6BouxOgrhs78rBX50BwTZ6pYq8CCWW', 1, 0, '$2y$10$TFcuJU6HDN9cuG1vZXwITeUxv5gs5QXLidmLLZcl73LRoKmkyhCkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'H1Uosi5qjh', '2021-08-24 02:36:12', '2021-08-24 02:36:12', NULL),
	(12, 'test', NULL, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP8AAAD/CAIAAACxapedAAAABnRSTlMAAAAAAABupgeRAAAACXBIWXMAAA7EAAAOxAGVKw4bAAADCElEQVR4nO3WgYnCQBRF0c1iASkhJaXUlJQSUoINqCAIX7nnVPAYLp9Z/r7VdWzTE/iYdT+nJzzwPz0AxqifLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfruU6tukNMOM2PeCVdT+nJ/ABX3th/XzoUj9d6qdL/XSpny7106V+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpWq5jm94AM9x+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpUj9d6qdL/XSpny7106V+utRPl/rpuk0PeGXdz+kJD1zHNj3hKS/2FrefLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTtUwP+D3XsU1PeGrdz+kJv8Ttp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp0v9dKmfLvXTpX661E+X+ulSP13qp+sOXqMUfyOR+FUAAAAASUVORK5CYII=', 'dustbin303@gmail.com', NULL, 1, 0, '$2y$10$Pm1g0OtkSp9UoKDY8t/vpekQgOo/TtO0vdYDxu4G/.OURe.pK0VJ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, '2021-08-24 15:02:03', '2021-08-24 15:02:03', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table blog.visitors
CREATE TABLE IF NOT EXISTS `visitors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) unsigned NOT NULL,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicks` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visitors_article_id_foreign` (`article_id`),
  CONSTRAINT `visitors_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.visitors: ~100 rows (approximately)
DELETE FROM `visitors`;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` (`id`, `article_id`, `ip`, `country`, `clicks`, `created_at`, `updated_at`) VALUES
	(1, 17, '233.214.238.203', 'CN', 96, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(2, 12, '87.116.239.234', 'CN', 47, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(3, 16, '46.44.32.40', 'CN', 8, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(4, 19, '255.86.243.143', 'CN', 38, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(5, 11, '177.72.249.218', 'CN', 55, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(6, 5, '167.8.23.205', 'CN', 95, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(7, 10, '121.20.85.179', 'CN', 26, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(8, 10, '20.5.202.176', 'CN', 90, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(9, 8, '246.13.204.169', 'CN', 7, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(10, 5, '8.204.145.83', 'CN', 51, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(11, 2, '39.154.102.220', 'CN', 86, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(12, 19, '133.231.212.90', 'CN', 61, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(13, 15, '136.80.237.36', 'CN', 73, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(14, 19, '163.212.52.153', 'CN', 27, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(15, 2, '67.10.22.193', 'CN', 49, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(16, 11, '89.168.100.211', 'CN', 84, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(17, 2, '95.49.169.85', 'CN', 15, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(18, 2, '40.158.89.96', 'CN', 48, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(19, 7, '245.151.158.125', 'CN', 44, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(20, 20, '254.185.239.245', 'CN', 66, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(21, 8, '19.249.14.211', 'CN', 39, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(22, 15, '142.216.168.241', 'CN', 44, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(23, 9, '186.139.21.55', 'CN', 79, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(24, 12, '28.1.49.205', 'CN', 38, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(25, 6, '35.79.175.232', 'CN', 3, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(26, 12, '52.252.216.194', 'CN', 17, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(27, 3, '76.219.161.205', 'CN', 67, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(28, 4, '197.182.22.220', 'CN', 68, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(29, 6, '210.201.98.12', 'CN', 27, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(30, 5, '70.82.81.243', 'CN', 10, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(31, 11, '138.45.40.204', 'CN', 84, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(32, 8, '93.238.196.207', 'CN', 43, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(33, 9, '40.134.35.206', 'CN', 40, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(34, 8, '102.165.65.62', 'CN', 89, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(35, 13, '19.44.192.24', 'CN', 79, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(36, 20, '191.195.162.71', 'CN', 7, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(37, 8, '56.51.86.3', 'CN', 68, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(38, 7, '228.128.146.204', 'CN', 31, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(39, 9, '51.52.189.107', 'CN', 27, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(40, 17, '185.159.67.15', 'CN', 83, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(41, 20, '212.118.234.203', 'CN', 23, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(42, 3, '9.190.177.219', 'CN', 2, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(43, 11, '136.174.218.226', 'CN', 9, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(44, 1, '32.112.173.212', 'CN', 43, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(45, 2, '93.188.182.98', 'CN', 36, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(46, 18, '3.249.152.21', 'CN', 66, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(47, 2, '34.186.207.250', 'CN', 90, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(48, 18, '193.148.98.105', 'CN', 65, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(49, 19, '6.84.34.72', 'CN', 86, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(50, 3, '75.168.248.109', 'CN', 98, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(51, 13, '133.34.123.249', 'CN', 55, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(52, 19, '229.74.109.203', 'CN', 72, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(53, 9, '174.117.47.5', 'CN', 56, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(54, 6, '206.226.213.144', 'CN', 90, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(55, 8, '99.207.232.103', 'CN', 83, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(56, 5, '126.31.173.166', 'CN', 64, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(57, 15, '74.89.57.98', 'CN', 63, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(58, 10, '3.121.106.240', 'CN', 7, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(59, 7, '177.197.88.149', 'CN', 38, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(60, 4, '21.9.157.82', 'CN', 86, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(61, 19, '173.227.240.147', 'CN', 8, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(62, 19, '88.179.100.98', 'CN', 19, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(63, 17, '97.194.3.129', 'CN', 63, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(64, 17, '219.154.166.112', 'CN', 58, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(65, 4, '155.115.1.216', 'CN', 65, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(66, 6, '77.18.17.170', 'CN', 71, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(67, 2, '173.179.252.128', 'CN', 58, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(68, 5, '138.240.191.187', 'CN', 97, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(69, 2, '64.193.46.115', 'CN', 54, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(70, 12, '81.2.139.110', 'CN', 82, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(71, 13, '228.69.208.26', 'CN', 83, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(72, 18, '155.172.1.15', 'CN', 34, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(73, 14, '150.221.71.52', 'CN', 3, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(74, 4, '167.147.54.12', 'CN', 37, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(75, 19, '6.204.82.115', 'CN', 76, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(76, 15, '208.187.131.232', 'CN', 32, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(77, 20, '119.161.176.98', 'CN', 43, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(78, 20, '148.135.46.198', 'CN', 49, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(79, 11, '141.154.91.241', 'CN', 21, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(80, 10, '237.114.200.123', 'CN', 89, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(81, 2, '216.248.184.172', 'CN', 81, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(82, 11, '189.52.208.45', 'CN', 94, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(83, 5, '174.92.153.233', 'CN', 46, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(84, 17, '245.232.5.63', 'CN', 67, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(85, 19, '14.112.19.88', 'CN', 58, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(86, 9, '83.208.48.169', 'CN', 58, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(87, 19, '225.156.194.45', 'CN', 40, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(88, 12, '72.167.45.94', 'CN', 94, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(89, 17, '87.111.76.191', 'CN', 38, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(90, 3, '255.53.17.116', 'CN', 80, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(91, 12, '92.84.163.216', 'CN', 61, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(92, 6, '97.207.171.95', 'CN', 12, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(93, 12, '142.30.56.120', 'CN', 3, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(94, 14, '198.236.239.103', 'CN', 60, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(95, 4, '152.173.95.109', 'CN', 20, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(96, 9, '54.22.153.33', 'CN', 80, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(97, 11, '132.187.211.167', 'CN', 7, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(98, 15, '68.165.120.185', 'CN', 29, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(99, 15, '183.122.22.114', 'CN', 50, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(100, 19, '231.153.74.80', 'CN', 8, '2021-08-24 02:36:13', '2021-08-24 02:36:13'),
	(101, 17, '171.231.24.247', NULL, 7, '2021-08-24 02:37:19', '2021-08-24 09:41:04'),
	(102, 1, '171.231.24.247', NULL, 1, '2021-08-24 10:16:40', '2021-08-24 10:16:40'),
	(103, 15, '171.231.24.247', NULL, 1, '2021-08-24 10:24:35', '2021-08-24 10:24:35'),
	(104, 6, '171.231.24.247', NULL, 1, '2021-08-24 10:24:40', '2021-08-24 10:24:40'),
	(105, 7, '27.131.164.86', NULL, 2, '2021-08-24 14:25:25', '2021-08-24 14:26:51'),
	(106, 7, '113.185.113.74', NULL, 5, '2021-08-24 14:29:21', '2021-08-26 15:14:41'),
	(107, 7, '45.248.79.30', NULL, 1, '2021-08-24 14:32:06', '2021-08-24 14:32:06'),
	(108, 16, '45.248.79.30', NULL, 1, '2021-08-24 15:08:23', '2021-08-24 15:08:23'),
	(109, 8, '45.248.79.30', NULL, 59, '2021-08-24 16:30:38', '2021-08-26 08:42:45'),
	(110, 8, '113.185.113.74', NULL, 34, '2021-08-26 08:43:48', '2021-08-27 13:33:31'),
	(111, 8, '27.131.164.86', NULL, 7, '2021-08-26 08:45:26', '2021-08-26 08:57:43'),
	(112, 10, '113.185.113.74', NULL, 28, '2021-08-26 09:10:59', '2021-08-26 16:12:25'),
	(113, 16, '113.185.113.74', NULL, 9, '2021-08-26 10:46:57', '2021-08-26 15:47:55'),
	(114, 3, '113.185.113.74', NULL, 2, '2021-08-26 14:59:57', '2021-08-26 15:48:10'),
	(115, 17, '113.185.113.74', NULL, 2, '2021-08-26 15:00:28', '2021-08-26 15:08:53'),
	(116, 18, '113.185.113.74', NULL, 1, '2021-08-26 15:01:28', '2021-08-26 15:01:28'),
	(117, 15, '113.185.113.74', NULL, 1, '2021-08-26 15:02:31', '2021-08-26 15:02:31'),
	(118, 13, '113.185.113.74', NULL, 3, '2021-08-26 15:03:14', '2021-08-26 15:08:30'),
	(119, 20, '113.185.113.74', NULL, 2, '2021-08-26 15:03:53', '2021-08-26 15:05:17'),
	(120, 2, '113.185.113.74', NULL, 5, '2021-08-26 15:08:37', '2021-08-27 13:49:32'),
	(121, 5, '113.185.113.74', NULL, 1, '2021-08-26 15:09:00', '2021-08-26 15:09:00'),
	(122, 4, '113.185.113.74', NULL, 1, '2021-08-26 15:09:05', '2021-08-26 15:09:05'),
	(123, 6, '113.185.113.74', NULL, 1, '2021-08-26 15:12:01', '2021-08-26 15:12:01'),
	(124, 19, '113.185.113.74', NULL, 1, '2021-08-26 15:12:15', '2021-08-26 15:12:15'),
	(125, 12, '113.185.113.74', NULL, 19, '2021-08-26 16:12:30', '2021-08-26 16:17:22'),
	(126, 9, '113.185.113.74', NULL, 17, '2021-08-26 16:43:41', '2021-08-27 10:44:35'),
	(127, 2, '159.138.11.19', NULL, 5, '2021-08-27 14:44:47', '2021-08-31 09:09:08'),
	(128, 8, '159.138.11.19', NULL, 1, '2021-08-30 08:41:57', '2021-08-30 08:41:57'),
	(129, 10, '159.138.11.19', NULL, 3, '2021-08-30 08:51:30', '2021-08-30 08:52:50'),
	(130, 16, '127.0.0.1', NULL, 1, '2021-09-01 10:07:54', '2021-09-01 10:07:54'),
	(131, 8, '127.0.0.1', NULL, 3, '2021-09-01 11:02:20', '2021-09-27 10:59:50'),
	(132, 12, '127.0.0.1', NULL, 1, '2021-09-01 11:02:46', '2021-09-01 11:02:46'),
	(133, 7, '127.0.0.1', NULL, 1, '2021-09-01 15:41:49', '2021-09-01 15:41:49'),
	(134, 6, '127.0.0.1', NULL, 1, '2021-09-01 15:42:22', '2021-09-01 15:42:22'),
	(135, 12, '222.255.157.161', NULL, 1, '2021-09-01 16:00:25', '2021-09-01 16:00:25'),
	(136, 8, '222.255.157.161', NULL, 3, '2021-09-27 11:09:37', '2021-09-30 09:15:06'),
	(137, 16, '222.255.157.161', NULL, 24, '2021-09-27 11:10:25', '2021-09-30 09:13:39'),
	(138, 10, '222.255.157.161', NULL, 1, '2021-09-29 13:50:41', '2021-09-29 13:50:41');
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;

-- Dumping structure for table blog.votes
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `votable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `votable_id` bigint(20) unsigned NOT NULL,
  `vote_type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'up_vote',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `votes_votable_type_votable_id_index` (`votable_type`,`votable_id`),
  KEY `votes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blog.votes: ~0 rows (approximately)
DELETE FROM `votes`;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
