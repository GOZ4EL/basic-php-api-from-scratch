CREATE DATABASE api_example CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE api_example:

CREATE TABLE person (
    id INT NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    firstparent_id INT DEFAULT NULL,
    secondparent_id INT DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (firstparent_id)
        REFERENCES person(id)
        ON DELETE SET NULL,
    FOREIGN KEY (secondparent_id)
        REFERENCES person(id)
        ON DELETE SET NULL
) ENGINE=INNODB;
