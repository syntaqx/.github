CREATE TABLE `users_emails` (
	`id` BINARY(12) NOT NULL,
	`user_id` BINARY(12) NOT NULL,
	`email` VARCHAR(255) NOT NULL,
  `token` VARCHAR(32) NULL DEFAULT NULL,
	`is_primary` BOOLEAN NOT NULL DEFAULT false,
	`created_at` DATETIME NOT NULL,
	`modified_at` DATETIME NOT NULL,
	`verified_at` DATETIME NULL DEFAULT NULL,
	`deleted_at` DATETIME NULL DEFAULT NULL,
	PRIMARY KEY (`id`),
	KEY `user_id` (`user_id`),
  UNIQUE INDEX `email` (`email`, `is_primary`)
) ENGINE=InnoDB;
