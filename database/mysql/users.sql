CREATE TABLE `users` (
	`id` BINARY(12) NOT NULL,
	`email_id` BINARY(12) NOT NULL,
	`username` VARCHAR(255) NOT NULL,
	`password_hash` VARCHAR(255) NOT NULL,
	`name` VARCHAR(255) NULL DEFAULT NULL,
	`avatar` VARCHAR(255) NULL DEFAULT NULL,
	`created_at` DATETIME NOT NULL,
	`modified_at` DATETIME NOT NULL,
	`deleted_at` DATETIME NULL DEFAULT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `username` (`username`)
) ENGINE=InnoDB;
