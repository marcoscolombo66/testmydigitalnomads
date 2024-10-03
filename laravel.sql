-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-10-2024 a las 17:54:52
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `event_date` datetime NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `attendee_limit` int NOT NULL,
  `reservation_deadline` datetime NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `event_date`, `location`, `price`, `attendee_limit`, `reservation_deadline`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Vero tenetur quae quam voluptatem.', 'Odit ut reprehenderit tempore ut dolore. Quis accusamus alias ut eaque ut. Velit voluptatem qui officiis dolores sit corporis fugit id.', '2024-10-21 21:09:47', '27002 Roselyn Prairie Apt. 352\nEast Rosella, CA 65522-4248', 80.54, 59, '2024-10-07 22:49:58', 11, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(2, 'Est sequi asperiores asperiores sit impedit incidunt earum.', 'Eos esse dolorem itaque minima magnam est. Fugiat harum qui aut consectetur. Consequatur quam earum laborum sed ea.', '2024-10-11 08:36:10', '8701 Stella Points Suite 729\nLake Pattie, MO 89799-6664', 174.78, 92, '2024-10-04 03:22:02', 12, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(3, 'Optio velit tenetur aut velit et.', 'Nostrum qui sequi quia optio fugiat. In illum temporibus cum sunt dicta sit. Voluptatem ipsa eius ipsum necessitatibus qui accusamus quidem qui.', '2024-11-02 21:29:02', '8385 Stokes Fort Suite 063\nPort Belle, MN 50691', 25.26, 64, '2024-10-08 04:29:56', 13, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(4, 'Molestiae voluptates minus dolore quisquam.', 'Praesentium rerum dolor nostrum facere adipisci. Quae consequatur debitis cum labore asperiores eligendi unde tempore. Sed veniam omnis quidem qui ipsa odit. Hic non aperiam enim facilis.', '2024-10-31 15:26:21', '8565 Terrell Summit Suite 917\nNorth Lutherberg, MO 19967-2769', 11.48, 45, '2024-10-03 15:04:28', 14, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(5, 'Quia ab assumenda alias quam cum est aliquam nesciunt.', 'Iste voluptate et qui iure. Itaque pariatur consequatur ipsum aperiam delectus. Itaque rem repellendus omnis ea ea inventore.', '2024-10-16 10:28:05', '731 Daugherty Station\nLake Heloiseport, AL 55355-1086', 161.10, 60, '2024-10-06 10:44:06', 15, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(6, 'Porro id inventore qui vel.', 'Earum ipsam animi porro. Consequuntur hic qui sed molestiae. Et autem ducimus omnis et impedit et. Est voluptas nihil error aut.', '2024-10-17 07:25:49', '1925 Yasmine Ports\nWest Maxside, IL 54664', 193.95, 88, '2024-10-06 12:28:43', 16, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(7, 'Rerum optio consequuntur est dolorem omnis quasi qui voluptas.', 'Quidem vel quasi perspiciatis ut qui non. Sed ut rerum incidunt molestias. Quasi dolorem aut autem quia suscipit. Ut maiores eos aut fuga.', '2024-10-26 17:22:06', '30093 Elinor Freeway\nWest Bertha, RI 22894', 109.82, 37, '2024-10-04 05:56:08', 17, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(8, 'Eum asperiores aspernatur officiis pariatur quaerat est.', 'Dolores aut officia velit praesentium. Aut et earum expedita animi. Quam nulla expedita eos enim soluta accusamus a. Distinctio provident maxime excepturi autem perferendis.', '2024-10-13 02:03:27', '8799 Torp Ranch\nNew Norwoodfurt, KS 53968', 170.86, 51, '2024-10-06 15:13:46', 18, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(9, 'Distinctio minima omnis cum dolor eius.', 'Consequuntur deserunt sed placeat. Consectetur quas fuga ipsum quisquam minima. Nostrum sed maiores itaque sequi neque molestiae quasi. Deleniti provident enim corporis ab.', '2024-10-13 06:49:56', '4877 Emile Way Apt. 317\nBriaborough, LA 01049', 14.06, 99, '2024-10-05 18:21:10', 19, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(10, 'Illo et mollitia nihil porro ducimus dolores.', 'Et atque repudiandae iste natus ea ut natus. Aut ut voluptatum pariatur doloremque. Quidem aperiam culpa ut aut voluptatem.', '2024-10-12 23:08:31', '3429 Madeline Groves\nFarrellhaven, DC 75181', 73.32, 59, '2024-10-07 22:43:21', 20, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(11, 'Laudantium temporibus eveniet minus facilis.', 'Iusto iste tempore molestiae dolore blanditiis non sit. Inventore repellendus necessitatibus fuga. Nostrum molestiae est enim sunt eaque.', '2024-10-30 13:02:21', '7769 Hettinger Glens Suite 775\nLilianemouth, WY 82661', 138.87, 31, '2024-10-09 01:48:03', 21, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(12, 'Error quaerat ducimus animi harum excepturi.', 'Tempore eligendi nostrum delectus suscipit tenetur illum deserunt. Qui voluptatem ullam et ab officiis laudantium. Ex quia qui aliquam harum qui molestias ab voluptas. Quisquam nobis vitae animi.', '2024-10-30 00:35:27', '8963 Floyd Well Apt. 960\nEast Dina, ID 77186', 96.27, 54, '2024-10-05 20:40:40', 22, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(13, 'Perferendis accusantium qui ea quo corporis ea earum.', 'Eveniet corrupti ad necessitatibus voluptatem et ratione. Minima in magnam consequatur. Consequatur iure culpa recusandae labore.', '2024-10-24 13:58:56', '73994 Kaitlin Rest\nAbnerport, IN 43269', 162.14, 16, '2024-10-06 10:58:05', 23, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(14, 'Quia nihil aut officiis eum quis corrupti est.', 'Cumque nobis voluptatibus repellat earum et. Praesentium nam velit natus aut expedita omnis ducimus distinctio. Ut labore ipsam sint corrupti. Blanditiis itaque ut nulla ut aperiam molestiae.', '2024-11-02 18:40:17', '5738 Helga Hollow\nTiaberg, AR 43497-6621', 171.82, 46, '2024-10-06 08:43:47', 24, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(15, 'Consequuntur accusantium qui est aut nostrum ut blanditiis.', 'Quaerat qui asperiores nihil dolor molestias minus distinctio. Incidunt veritatis voluptates commodi consequatur eveniet quae rerum. Quo quas culpa quisquam animi adipisci enim.', '2024-10-13 14:55:18', '5101 Kris Circles Apt. 380\nPadbergbury, CA 82868', 163.23, 56, '2024-10-09 15:56:43', 25, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(16, 'Sunt error et libero amet.', 'Et nulla est quaerat qui rerum quasi reprehenderit. Cum est vel eos ea consequuntur. Voluptas maiores voluptatum et tempora consequatur mollitia corporis. Sapiente neque accusantium tempora velit odit molestiae.', '2024-11-01 17:43:19', '40322 Swaniawski Walk Apt. 751\nDannieside, CO 42397', 74.99, 93, '2024-10-08 13:11:03', 26, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(17, 'Labore cupiditate et ratione.', 'Ut iure veritatis sequi recusandae sed nostrum sit. Praesentium soluta fuga quaerat aut fugit voluptatem hic. Cupiditate nam quos incidunt enim quas aut. Iusto sequi et error dolores.', '2024-10-22 03:29:54', '59374 Taylor Radial\nLake Aurelio, SD 11414', 30.11, 70, '2024-10-03 16:39:37', 27, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(18, 'In natus id molestias maxime.', 'Et est voluptatibus eveniet tenetur. Qui enim aliquid libero id. Placeat numquam at asperiores aut voluptatum.', '2024-10-14 15:41:30', '836 Doris Skyway Apt. 911\nLake Milford, NY 72390', 50.98, 72, '2024-10-03 16:22:12', 28, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(19, 'Repellendus in laborum quos est ut.', 'Eaque minus necessitatibus vel. Blanditiis ea eius recusandae id ducimus. Delectus totam exercitationem rem veritatis dolore quam ea quis.', '2024-10-17 18:13:16', '975 Schowalter Haven\nLake Davionfurt, NH 58294', 136.67, 32, '2024-10-09 18:20:27', 29, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(20, 'Est ut inventore quaerat vero voluptas a sed qui.', 'Impedit laboriosam architecto est dolore. Dolorem magnam recusandae cum. Facilis dolor repellendus eos aut eaque corrupti ipsum. Eaque ut sed vero ea et sed.', '2024-10-11 02:10:53', '66152 Schinner Place Suite 377\nGeovannyfort, NJ 08947', 129.09, 61, '2024-10-06 23:17:11', 30, '2024-10-03 00:53:49', '2024-10-03 00:53:49'),
(21, 'Concierto de Rock', 'Únete a nosotros para una noche increíble de música en vivo.', '2024-12-15 00:00:00', 'Estadio Central, Ciudad de Buenos Aires', 1500.00, 500, '2024-12-10 00:00:00', 31, '2024-10-03 01:05:19', '2024-10-03 01:05:19'),
(22, 'Concierto de Rock', 'Únete a nosotros para una noche increíble de música en vivo.', '2024-12-15 00:00:00', 'Estadio Central, Ciudad de Buenos Aires', 1500.00, 500, '2024-12-10 00:00:00', 31, '2024-10-03 19:52:05', '2024-10-03 19:52:05'),
(23, 'Concierto de Rock', 'Únete a nosotros para una noche increíble de música en vivo.', '2024-12-15 00:00:00', 'Estadio Central, Ciudad de Buenos Aires', 1500.00, 500, '2024-12-10 00:00:00', 31, '2024-10-03 19:54:25', '2024-10-03 19:54:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_01_153725_create_events_table', 1),
(6, '2024_10_01_153726_create_reservations_table', 1),
(7, '2024_10_01_153903_add_role_to_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 31, 'auth_token', '2bae38359cb5a9434aab180b53610edf0cf176e69eadb75a37a22b1848f6388b', '[\"*\"]', '2024-10-03 19:54:25', NULL, '2024-10-03 01:05:02', '2024-10-03 19:54:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `event_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 31, 1, '2024-10-03 01:06:02', '2024-10-03 01:06:02'),
(2, 31, 2, '2024-10-03 19:44:29', '2024-10-03 19:44:29'),
(3, 31, 2, '2024-10-03 19:49:53', '2024-10-03 19:49:53'),
(4, 31, 3, '2024-10-03 19:52:57', '2024-10-03 19:52:57'),
(5, 31, 3, '2024-10-03 19:53:48', '2024-10-03 19:53:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Adah Hilpert', 'okiehn@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'pRBF9NVsrB', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(2, 'Mrs. Alana White', 'walker.skiles@example.org', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'zVSB7KRg5Y', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(3, 'Dr. Viola Kihn', 'al03@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'ObWzzYPRoX', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(4, 'Roberto Kozey', 'payton.keeling@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'QhYlTUobwg', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(5, 'Prof. Kathryn Jacobi III', 'deion15@example.net', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'tPIaYfr7FL', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(6, 'Prof. Danika Bahringer PhD', 'pfriesen@example.net', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'E36rZGKKtY', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(7, 'Mrs. Theresia O\'Hara I', 'tomas02@example.net', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'Ns8NzzOEbf', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(8, 'Bianka Cremin', 'niko.cremin@example.net', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'HaWUeB2OW3', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(9, 'Mylene Medhurst', 'emilia93@example.net', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', '6BYGfxWiAH', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(10, 'Elvera Gerlach', 'herbert92@example.org', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'W0luwonOvX', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(11, 'Hattie Gutmann', 'fbednar@example.net', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'mz9pMmAh0H', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(12, 'Chase Paucek', 'wintheiser.helen@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'YPtiePURbp', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(13, 'Shakira Friesen', 'era69@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'A0ghfjYXUH', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(14, 'Mr. Nels Morissette', 'hartmann.armani@example.org', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'GlgalC50h3', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(15, 'Ms. Clemmie Langworth', 'jaleel96@example.org', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'wb9Sy9igA2', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(16, 'Mrs. Eldora Corwin', 'kling.arely@example.net', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'Oe0re2YFsx', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(17, 'Clementine Blanda IV', 'hsanford@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'wVy8CjoiA8', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(18, 'Ms. Earline Blick', 'misty47@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'xNGLol7ld3', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(19, 'Audra Reichel IV', 'mackenzie.rau@example.net', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'SmUfMkHIIY', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(20, 'Sierra Beier', 'annamarie45@example.net', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'qUw5sC0ESA', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(21, 'Fausto Will V', 'robin.kohler@example.org', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', '6DM3DnxCqD', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(22, 'Kylie Stiedemann', 'sframi@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'KWhHF5MdiO', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(23, 'Prof. Sasha Borer IV', 'brekke.sonia@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', '9H5XKIN5Gi', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(24, 'Cooper Littel', 'wolf.audra@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'ZKgDyVkBAp', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(25, 'Magdalena Hyatt', 'ykunze@example.net', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'cuq1dFvJaz', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(26, 'Luigi Hammes', 'kerluke.deron@example.org', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'Ubj863aR0C', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(27, 'Mafalda Weissnat', 'runte.mayra@example.org', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'C01e3JT3is', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(28, 'Dr. Trace Bartoletti', 'graham.delaney@example.org', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'oBnzlrshB1', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(29, 'Torey Green V', 'huel.tiara@example.org', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'uhFXX7LhOk', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(30, 'Tobin Legros', 'joshua.bailey@example.com', '2024-10-03 00:53:49', '$2y$12$CPtk3lRuj/ar5mNVNEBJvOsXuFL09KX80YEACMqOql4/9UbJVwmCq', 'ExYk3piZTk', '2024-10-03 00:53:49', '2024-10-03 00:53:49', 'user'),
(31, 'Marcos', 'Marcos@test.com', NULL, '$2y$12$FsOUxnxtscrzgQez.a72/.VY5uCyFLwMPp9PRULezW4fA27l6idbS', NULL, '2024-10-03 01:05:02', '2024-10-03 01:05:02', 'user');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`),
  ADD KEY `reservations_event_id_foreign` (`event_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
