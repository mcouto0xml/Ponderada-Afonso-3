-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'general_forms'
-- 
-- ---

DROP TABLE IF EXISTS `general_forms`;
		
CREATE TABLE `general_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `age` INTEGER NULL DEFAULT NULL,
  `house_type` VARCHAR(50) NULL DEFAULT NULL,
  `familiar_constitution` VARCHAR(50) NULL DEFAULT NULL,
  `home_income` INTEGER NULL DEFAULT NULL,
  `residents` INTEGER NULL DEFAULT NULL,
  `country` VARCHAR(50) NULL DEFAULT NULL,
  `state` VARCHAR(50) NULL DEFAULT NULL,
  `city` VARCHAR(50) NULL DEFAULT NULL,
  `district` INTEGER NULL DEFAULT NULL,
  `forms_type` VARCHAR(50) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `password` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'had_forms'
-- 
-- ---

DROP TABLE IF EXISTS `had_forms`;
		
CREATE TABLE `had_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog_name` VARCHAR(50) NULL DEFAULT NULL,
  `belong_to` VARCHAR(50) NULL DEFAULT NULL,
  `dog_personality` VARCHAR(100) NULL DEFAULT NULL,
  `dog_age` INTEGER NULL DEFAULT NULL,
  `first_dog` VARCHAR(20) NULL DEFAULT NULL,
  `have_others_pets` VARCHAR(50) NULL DEFAULT NULL,
  `dog_age_house` INTEGER NULL DEFAULT NULL,
  `castrated` VARCHAR(20) NULL DEFAULT NULL,
  `when_castrated` INTEGER NULL DEFAULT NULL,
  `have_breed` VARCHAR(50) NULL DEFAULT NULL,
  `dog_breed` VARCHAR(50) NULL DEFAULT NULL,
  `where_come_from` VARCHAR(50) NULL DEFAULT NULL,
  `dog_price` INTEGER NULL DEFAULT NULL,
  `why_have` VARCHAR(50) NULL DEFAULT NULL,
  `dog_ characteristics` VARCHAR(50) NULL DEFAULT NULL,
  `name_motive` VARCHAR(50) NULL DEFAULT NULL,
  `dog_like` VARCHAR(50) NULL DEFAULT NULL,
  `dog_dont_like` VARCHAR(50) NULL DEFAULT NULL,
  `went_vet` VARCHAR(50) NULL DEFAULT NULL,
  `vet_motives` VARCHAR(50) NULL DEFAULT NULL,
  `stopped_living` VARCHAR(50) NULL DEFAULT NULL,
  `dog_age_time` INTEGER NULL DEFAULT NULL,
  `stop_living` VARCHAR(50) NULL DEFAULT NULL,
  `new_dog` VARCHAR(50) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'have_forms'
-- 
-- ---

DROP TABLE IF EXISTS `have_forms`;
		
CREATE TABLE `have_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog_name` VARCHAR(50) NULL DEFAULT NULL,
  `dog_gender` VARCHAR(50) NULL DEFAULT NULL,
  `who_belongs` VARCHAR(50) NULL DEFAULT NULL,
  `castrated` VARCHAR(20) NULL DEFAULT NULL,
  `when_castrated` INTEGER NULL DEFAULT NULL,
  `years_with_dog` INTEGER NULL DEFAULT NULL,
  `first_dog` VARCHAR(50) NULL DEFAULT NULL,
  `other_pets` INTEGER NULL DEFAULT NULL,
  `dog_age` INTEGER NULL DEFAULT NULL,
  `dog_breed` VARCHAR(50) NULL DEFAULT NULL,
  `where_come_from` VARCHAR(50) NULL DEFAULT NULL,
  `paid_to_get` VARCHAR(50) NULL DEFAULT NULL,
  `dog_age_house` INTEGER NULL DEFAULT NULL,
  `dog_personality` VARCHAR(50) NULL DEFAULT NULL,
  `why_have` INTEGER NULL DEFAULT NULL,
  `dog_characteristics` VARCHAR(50) NULL DEFAULT NULL,
  `had_dog` VARCHAR(50) NULL DEFAULT NULL,
  `times_vet` INTEGER NULL DEFAULT NULL,
  `dog_about` VARCHAR(50) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'want_forms'
-- 
-- ---

DROP TABLE IF EXISTS `want_forms`;
		
CREATE TABLE `want_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog_size` VARCHAR(50) NULL DEFAULT NULL,
  `dog_coat` VARCHAR(50) NULL DEFAULT NULL,
  `dog_color` VARCHAR(50) NULL DEFAULT NULL,
  `dog_gender` VARCHAR(50) NULL DEFAULT NULL,
  `dog_age` INTEGER NULL DEFAULT NULL,
  `want_breed` VARCHAR(20) NULL DEFAULT NULL,
  `dog_breed` VARCHAR(50) NULL DEFAULT NULL,
  `why_live_dog` VARCHAR(50) NULL DEFAULT NULL,
  `name_idea` VARCHAR(20) NULL DEFAULT NULL,
  `dog_name` VARCHAR(50) NULL DEFAULT NULL,
  `name_motive` VARCHAR(50) NULL DEFAULT NULL,
  `buy_or_adopt` VARCHAR(50) NULL DEFAULT NULL,
  `when_house` VARCHAR NULL DEFAULT NULL,
  `dog_personality` VARCHAR(100) NULL DEFAULT NULL,
  `dog_expenses` VARCHAR(100) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'null_forms'
-- 
-- ---

DROP TABLE IF EXISTS `null_forms`;
		
CREATE TABLE `null_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `why_dont` VARCHAR(200) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `general_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `had_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `have_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `want_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `null_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `general_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `had_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `have_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `want_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `null_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `general_forms` (`id`,`age`,`house_type`,`familiar_constitution`,`home_income`,`residents`,`country`,`state`,`city`,`district`,`forms_type`,`id_users`) VALUES
-- ('','','','','','','','','','','','');
-- INSERT INTO `users` (`id`,`name`,`email`,`password`) VALUES
-- ('','','','');
-- INSERT INTO `had_forms` (`id`,`dog_name`,`belong_to`,`dog_personality`,`dog_age`,`first_dog`,`have_others_pets`,`dog_age_house`,`castrated`,`when_castrated`,`have_breed`,`dog_breed`,`where_come_from`,`dog_price`,`why_have`,`dog_ characteristics`,`name_motive`,`dog_like`,`dog_dont_like`,`went_vet`,`vet_motives`,`stopped_living`,`dog_age_time`,`stop_living`,`new_dog`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `have_forms` (`id`,`dog_name`,`dog_gender`,`who_belongs`,`castrated`,`when_castrated`,`years_with_dog`,`first_dog`,`other_pets`,`dog_age`,`dog_breed`,`where_come_from`,`paid_to_get`,`dog_age_house`,`dog_personality`,`why_have`,`dog_characteristics`,`had_dog`,`times_vet`,`dog_about`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `want_forms` (`id`,`dog_size`,`dog_coat`,`dog_color`,`dog_gender`,`dog_age`,`want_breed`,`dog_breed`,`why_live_dog`,`name_idea`,`dog_name`,`name_motive`,`buy_or_adopt`,`when_house`,`dog_personality`,`dog_expenses`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','','','','');
-- INSERT INTO `null_forms` (`id`,`why_dont`,`id_users`) VALUES
-- ('','','');