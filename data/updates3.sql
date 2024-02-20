CREATE TABLE config
(
    id            INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    email         VARCHAR(255),
    address       VARCHAR(255),
    working_hours TEXT,
    info          TEXT,
    contact_info          TEXT,
    phone_number  VARCHAR(255),
    mobile_number VARCHAR(255),
    facebook      VARCHAR(255),
    instagram     VARCHAR(255),
    whatsapp      VARCHAR(255),
    youtube       VARCHAR(255)
);

ALTER TABLE `config`
    ADD COLUMN `language_id` INT UNSIGNED NULL AFTER `id`;