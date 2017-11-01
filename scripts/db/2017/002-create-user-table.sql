SET NAMES utf8;

use symfonytest;

CREATE TABLE IF NOT EXISTS `st_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `st_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
  (1, 'evgeny', 'evgeny', 'bolteg86@ya.ru', 'bolteg86@ya.ru', 1, NULL, '$2y$13$2DqMoDAjwGr4u2ZPSJUyg.RV6fILuifWaWLF2EmhVLh3cBpz5.A/.', '2017-11-01 21:05:22', NULL, NULL, 'a:0:{}');

ALTER TABLE `st_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6CB0B5092FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_C6CB0B50A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_C6CB0B50C05FB297` (`confirmation_token`);

ALTER TABLE `st_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
