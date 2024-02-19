ALTER TABLE `authors`
    ADD COLUMN `featured` TINYINT(1) NULL DEFAULT 0 AFTER `name`;

ALTER TABLE `authors`
    ADD COLUMN `status` TINYINT(1) NULL DEFAULT 1 AFTER `featured`;

ALTER TABLE `authors`
    ADD COLUMN `slug` VARCHAR(255) NULL AFTER `name`;

ALTER TABLE `users`
    ADD COLUMN `phone_number` VARCHAR(255) NULL AFTER `address`;

