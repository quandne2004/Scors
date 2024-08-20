

create database sis
use sis

select * from student

select * from score
select * from sis.subject

SHOW CREATE TABLE student

CREATE TABLE `student` (
   `id` bigint NOT NULL AUTO_INCREMENT,
   `address` varchar(255) DEFAULT NULL,
   `full_name` varchar(255) DEFAULT NULL,
   `student_code` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
 
 SHOW CREATE TABLE score

CREATE TABLE `score` (
   `id` bigint NOT NULL AUTO_INCREMENT,
   `score1` double NOT NULL,
   `score2` double NOT NULL,
   `student_id` bigint DEFAULT NULL,
   `subject_id` bigint DEFAULT NULL,
   PRIMARY KEY (`id`),
   KEY `FKnap51mbove93yjb09idc9jic6` (`student_id`),
   KEY `FK56nv285e8l73fru4sw2152y87` (`subject_id`),
   CONSTRAINT `FK56nv285e8l73fru4sw2152y87` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
   CONSTRAINT `FKnap51mbove93yjb09idc9jic6` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
 
 
  SHOW CREATE TABLE subject
  
  CREATE TABLE `subject` (
   `id` bigint NOT NULL AUTO_INCREMENT,
   `credit` int NOT NULL,
   `subject_code` varchar(255) DEFAULT NULL,
   `subject_name` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

 
