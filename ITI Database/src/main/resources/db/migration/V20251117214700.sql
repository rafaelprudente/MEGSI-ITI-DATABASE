CREATE TABLE IF NOT EXISTS `files`
(
    `id` uuid NOT NULL,
    `username` varchar(255) NOT NULL,
    `original_name` VARCHAR(1024) NOT NULL,
    `stored_name`   VARCHAR(1024) NOT NULL,
    `mime_type`     VARCHAR(255) NOT NULL,
    `size`          BIGINT       NOT NULL,
    `version`          BIGINT       NOT NULL,
    `create_at`     datetime     NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `FKb6o5dfg67pvxlmtq8j99iuc14` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;