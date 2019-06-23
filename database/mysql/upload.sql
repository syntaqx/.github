CREATE TABLE `upload` (
  `id` BINARY(12) NOT NULL,
  `user_id` BINARY(12) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `filetype` VARCHAR(255) NOT NULL,
  `mimetype` VARCHAR(255) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  `deleted_at` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
