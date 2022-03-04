-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: larprj60
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'recusandae-omnis-repudiandae-sint-est-facere','Nam itaque vitae natus aut et iusto.',NULL,'<p>Magnam voluptatibus deleniti consectetur repellat dolorem ea commodi. Velit magnam nostrum vel. Et nihil ut totam ea temporibus rerum quia iste. Odit cum iure minima.</p><p>Corrupti magnam autem ad nulla sint qui exercitationem. Iste aut accusamus alias ut unde modi reprehenderit similique. Ut fuga consectetur quidem quia distinctio fugit et.</p>','<p>Deleniti praesentium ab ut voluptatem consequatur molestiae nostrum voluptates. A et animi doloremque voluptatem id reiciendis. Tempora magnam iure vel quos qui harum eum. Recusandae vero dolorem molestias cupiditate quis enim.</p><p>Eos eos eos distinctio harum nemo illo officia quaerat. Quis harum ad quasi. Inventore corrupti tempore sequi repellendus vel voluptatem. Est dolor repudiandae iusto et omnis eum corporis.</p><p>Quia voluptatem eos fugit. Totam alias vel soluta porro. Ea quaerat iusto praesentium ut facere explicabo.</p><p>Sunt laudantium non enim numquam. Nam tempora molestias et nihil. Ad doloribus sit nostrum voluptas earum.</p><p>Quia beatae est ea sed. Nam dignissimos est cum saepe ab veniam dolorem debitis. Minus quod et est dignissimos qui sed. Impedit earum voluptates ea aliquid.</p><p>Numquam incidunt ut sed sed distinctio. Iure sint provident sit porro fugit nam. Mollitia sed perspiciatis quia odit officiis animi rerum quis.</p>','2021-12-19 18:48:03','2021-12-19 18:48:03',NULL),(2,1,2,'sint-consectetur-occaecati-velit-voluptate-beatae-et-sit','Sit quo quibusdam ea ratione ullam maxime.',NULL,'<p>Alias non ipsa suscipit ut quia iusto molestiae. Et aut fuga deleniti dolore odio. Quod harum velit numquam at id sed fugiat.</p><p>Omnis est mollitia vitae repellendus dolor occaecati est. Laborum aut veniam nesciunt rerum eos beatae necessitatibus. Natus sit rerum tempore tenetur rerum reprehenderit praesentium velit. Incidunt qui nesciunt deserunt harum est officiis itaque.</p>','<p>Animi tempore ducimus odit explicabo. Est dolores et vel dignissimos aperiam. Aut eius deserunt sunt nisi. Quis architecto magni eligendi nisi id ducimus laboriosam.</p><p>Eum non voluptates necessitatibus repellat nihil. Voluptatem facilis est omnis autem aut porro officiis. Nihil sint ut esse iure saepe suscipit. Error consequatur quod nisi unde assumenda neque fugiat.</p><p>In est provident culpa voluptatem corrupti ab quisquam. Quia cupiditate vel culpa. Debitis quia quis perspiciatis. Quo nihil quia unde magnam.</p><p>Quaerat odio voluptatem corrupti placeat. Architecto dolores voluptas reiciendis saepe quaerat nulla harum. Amet provident nemo adipisci aut. Placeat similique voluptatem non illo vitae fuga.</p><p>Voluptas aut voluptatem eius dolore ducimus quia. Tempora modi pariatur saepe. A omnis labore laudantium quas tenetur. Laborum velit voluptatum tenetur veritatis aut.</p><p>Explicabo ad animi quisquam aut et. Labore nemo libero molestias aperiam. Qui esse sapiente enim qui temporibus omnis.</p>','2021-12-19 18:48:03','2021-12-19 18:48:03',NULL),(3,1,3,'explicabo-ut-ea-possimus-saepe-et','Est odio molestias suscipit aliquam ut et.',NULL,'<p>Delectus placeat at sed architecto tempore nobis commodi. Optio aut quae autem saepe voluptas. Et optio velit reiciendis cum rerum corporis neque ut. Amet beatae est dolorem sint. Voluptatum est quod aut qui porro deserunt.</p><p>Iure et voluptas placeat in rerum vitae magnam. Velit quis pariatur est. Molestiae voluptatem quis qui ratione et est est. Molestiae est est perspiciatis accusamus corporis dolor cupiditate.</p>','<p>Velit iusto velit aliquid explicabo aut ipsam. Mollitia fuga ea harum.</p><p>Excepturi possimus sit amet maiores velit iure. Omnis qui sed blanditiis. Eum impedit voluptates fugit explicabo eos voluptatibus voluptatem. Perferendis deleniti adipisci sit ut a quia dolores.</p><p>Corrupti deleniti accusamus consequatur in modi numquam. Itaque repudiandae est eaque iste quia quisquam. Quas est molestiae error culpa. Ea ab quae corporis sit omnis nostrum.</p><p>Aut sapiente accusantium autem voluptas iure unde iste enim. Voluptatem odio dicta et nobis consequatur. Aut omnis et repudiandae tenetur. Non assumenda nihil velit voluptas et.</p><p>Blanditiis et qui aut voluptas ratione aut sed. Optio id odit ab repellendus tempora facere. Consequatur repellendus atque tempore fuga itaque. Voluptas dolor saepe dolorem suscipit reprehenderit ea omnis et.</p><p>Exercitationem dolorum esse ea et qui. Dolores laudantium maxime aut optio aut. Eum non sit sint perferendis fugiat consequatur. Qui explicabo soluta nam molestiae ut dicta.</p>','2021-12-19 18:48:03','2021-12-19 18:48:03',NULL),(4,1,4,'et-aperiam-voluptatem-corporis-et','Quis occaecati voluptatem voluptas in ullam sunt amet consectetur.',NULL,'<p>Voluptas aut ipsa sed nesciunt reiciendis velit nisi. Reprehenderit illo architecto eius natus. Autem fugit occaecati dignissimos unde doloremque. Possimus nihil laboriosam laboriosam.</p><p>Deserunt quo et omnis eaque officiis. Quidem aut ratione qui neque libero praesentium. Alias qui praesentium voluptas non omnis enim. Accusantium totam velit voluptatem omnis nesciunt.</p>','<p>Quia eos mollitia consequatur blanditiis accusamus quia fugiat. Dolorum quisquam dicta doloribus rem nisi voluptas unde. Aut a tempore ea quis.</p><p>Facere facere ea ipsam pariatur occaecati aut voluptatibus. Quas voluptas accusantium consequatur. Dolorum ipsum necessitatibus vel aut cum aspernatur.</p><p>Sit dolor occaecati voluptatibus sit id occaecati. Qui ut aperiam accusantium illum. Corrupti animi ut omnis nam corporis ullam quo.</p><p>Repellat est velit labore dolorum rerum corporis et. Ut fugit rerum totam molestiae quia facilis sapiente vitae. Dolor fugit officiis consequatur qui aspernatur.</p><p>Eaque sed tenetur vitae. Aliquam ipsam incidunt nostrum recusandae quia.</p><p>Corrupti sed rerum ipsa. Incidunt dignissimos repellendus aut. Voluptatem magni dolorum quod maxime. Non temporibus nisi eum qui illo iusto ea qui.</p>','2021-12-19 18:48:03','2021-12-19 18:48:03',NULL),(5,1,5,'voluptates-nam-dolorum-alias-ducimus-voluptatem-voluptates','Et in sit praesentium sunt deleniti.',NULL,'<p>Dolores praesentium hic ratione nobis. Molestiae aut explicabo qui dolorem. Saepe et harum quod qui sapiente architecto amet.</p><p>Sit maiores aspernatur maiores. Mollitia ab reiciendis expedita accusantium voluptatibus ratione saepe. Repudiandae non quas ut quam.</p>','<p>Ad suscipit praesentium similique consequuntur praesentium. Id velit omnis voluptatum est voluptas aspernatur consequuntur. Dolor fugiat et facilis consectetur blanditiis tenetur. Modi corporis voluptatem quam ratione quia ex.</p><p>Possimus aut atque explicabo velit quis perferendis. Maiores repudiandae est dolores sint impedit est. Sequi dolorem vel odit dolore placeat.</p><p>Aut sed suscipit debitis minima. Modi nemo dolores quis nam voluptas aliquid repellat. Aut provident unde qui eos ad expedita assumenda.</p><p>Eligendi et perspiciatis odio. Sed provident et officiis quis sit. Sequi et dolorem cupiditate quia.</p><p>Incidunt adipisci natus laboriosam nam consequatur quo. Ut et neque tenetur repellendus eos nostrum. Aliquid perferendis repellat distinctio dolor consequatur aut non eum. Sit eum saepe consequatur expedita nesciunt.</p><p>Saepe quo dolores deleniti asperiores quo quia. Id id minima accusamus dolorum ab. Ut veritatis doloribus consequatur modi quis est dolorem. Consequatur eos eaque aut quia odit ea ipsam.</p>','2021-12-19 18:48:03','2021-12-19 18:48:03',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-04  6:53:09
