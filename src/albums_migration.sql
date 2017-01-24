CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id           INT UNSIGNED   NOT NULL AUTO_INCREMENT,
  artist       VARCHAR(300)   NOT NULL,
  name         VARCHAR(300)   NOT NULL,
  release_date INT            NOT NULL,
  sales        FLOAT UNSIGNED NOT NULL,
  genre        VARCHAR(300)   NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8
