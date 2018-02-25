--
-- This file is part of hibernate-examples.
--
-- hibernate-examples is free software; you can redistribute it and/or modify it under the
-- terms of the GNU General Public License as published by the Free Software
-- Foundation; either version 2, or (at your option) any later version.
--
-- hibernate-examples is distributed in the hope that it will be useful, but WITHOUT ANY
-- WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
-- A PARTICULAR PURPOSE. See the GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License along with
-- this program; see the file COPYING. If not, see
-- <http://www.gnu.org/licenses/>.
--
-- @author Adrian Novegil Toledo
-- @mail adrian.novegil@gmail.com
-- @description Script de creación del modelo de aplicaicón para el presente 
-- ejemplo.
--

--
-- Base de datos: `hibernate_relationship_one_to_one_annotation`
--
CREATE DATABASE IF NOT EXISTS hibernate_relationship_one_to_one_annotation DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hibernate_relationship_one_to_one_annotation`;

--
-- Objeto employee
--
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
    `id` BIGINT(10) NOT NULL AUTO_INCREMENT,
    `firstname` VARCHAR(50) NULL DEFAULT NULL,
    `lastname` VARCHAR(50) NULL DEFAULT NULL,
    `birth_date` DATE NOT NULL,
    `cell_phone` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;

--
-- Objeto employee_detail
--
DROP TABLE IF EXISTS `employee_detail`;
CREATE TABLE `employee_detail` (
    `employee_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `street` VARCHAR(50) NULL DEFAULT NULL,
    `city` VARCHAR(50) NULL DEFAULT NULL,
    `state` VARCHAR(50) NULL DEFAULT NULL,
    `country` VARCHAR(50) NULL DEFAULT NULL,
    PRIMARY KEY (`employee_id`),
    CONSTRAINT `fkempl` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) DEFAULT CHARSET=utf8;