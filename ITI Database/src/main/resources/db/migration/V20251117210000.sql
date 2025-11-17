CREATE TABLE IF NOT EXISTS `users` (
    `username` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `enabled` bit(1) NOT NULL,
    PRIMARY KEY (`username`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE IF NOT EXISTS `user_details` (
    `id` uuid NOT NULL,
    `username` varchar(255) NOT NULL,
    PRIMARY KEY (`username`),
    CONSTRAINT `FKb6o5pi8w5pvxlmtq8j99iuc14` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

CREATE TABLE IF NOT EXISTS `authorities` (
    `username` varchar(255) NOT NULL,
    `authority` varchar(255) NOT NULL,
    PRIMARY KEY (`authority`,`username`),
    KEY `FKhjuy9y4fd8v5m3klig05ktofg` (`username`),
    CONSTRAINT `FKhjuy9y4fd8v5m3klig05ktofg` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT IGNORE INTO ITI.users (username, password,enabled) VALUES ('aluno', '$2a$10$iErKNfA11N//GJC2qarsL.fOU/3QQ944PEV0.veR9c0foeKZWx/c2',true);
INSERT IGNORE INTO ITI.authorities (username, authority) VALUES ('aluno', 'SYSTEM_ADMINISTRATOR');
INSERT IGNORE INTO ITI.user_details (id, username) VALUES ('a34ae8c2-98ab-4777-873c-66de12f9175c', 'aluno');