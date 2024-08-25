-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bookstore
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bookstore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `bookstore` ;

-- -----------------------------------------------------
-- Table `bookstore`.`authors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`authors` (
  `author_id` CHAR(4) NOT NULL,
  `author_firstname` VARCHAR(50) NOT NULL,
  `author_lasttname` VARCHAR(50) NOT NULL,
  `author_city` VARCHAR(30) NOT NULL,
  `author_country` VARCHAR(30) NOT NULL,
  `author_phone` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE INDEX `author_id_UNIQUE` (`author_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`company` (
  `company_id` CHAR(4) NOT NULL,
  `company_name` VARCHAR(50) NOT NULL,
  `cm_Address` VARCHAR(100) NOT NULL,
  `cm_tel` VARCHAR(50) NOT NULL,
  `cm_Country` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`company_id`),
  UNIQUE INDEX `cmid_UNIQUE` (`company_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`employees` (
  `employee_id` CHAR(4) NOT NULL,
  `employee_firstname` VARCHAR(50) NOT NULL,
  `employee_lastname` VARCHAR(50) NOT NULL,
  `employee_age` INT NOT NULL,
  `employee_address` VARCHAR(100) NOT NULL,
  `employee_responsibility` VARCHAR(30) NOT NULL,
  `employee_salary` INT NOT NULL,
  `employee_suppervisor` CHAR(4) NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE INDEX `employee_id_UNIQUE` (`employee_id` ASC) VISIBLE,
  INDEX `fk_employees_employees1_idx` (`employee_suppervisor` ASC) VISIBLE,
  INDEX `idx_employee_suppervisor` (`employee_suppervisor` ASC) VISIBLE,
  INDEX `idx_employee_responsibility` (`employee_responsibility` ASC) VISIBLE,
  CONSTRAINT `fk_employees_employee_id`
    FOREIGN KEY (`employee_suppervisor`)
    REFERENCES `bookstore`.`employees` (`employee_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`branch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`branch` (
  `branch_id` CHAR(5) NOT NULL,
  `branch_name` VARCHAR(50) NOT NULL,
  `branch_address` VARCHAR(50) NOT NULL,
  `branch_tel` VARCHAR(10) NOT NULL,
  `branch_country` VARCHAR(50) NOT NULL,
  `branch_city` VARCHAR(50) NOT NULL,
  `employee_id` CHAR(4) NOT NULL,
  `company_id` CHAR(4) NOT NULL,
  PRIMARY KEY (`branch_id`, `employee_id`, `company_id`),
  UNIQUE INDEX `branch_UNIQUE` (`branch_id` ASC) VISIBLE,
  INDEX `fk_branch_employees1_idx` (`employee_id` ASC) VISIBLE,
  INDEX `fk_branch_company1_idx` (`company_id` ASC) VISIBLE,
  INDEX `idx_branch_id_company_id` (`branch_id` ASC, `company_id` ASC) VISIBLE,
  INDEX `idx_branch_name` (`branch_name` ASC) VISIBLE,
  CONSTRAINT `fk_branch_company_id`
    FOREIGN KEY (`company_id`)
    REFERENCES `bookstore`.`company` (`company_id`),
  CONSTRAINT `fk_branch_employee_id`
    FOREIGN KEY (`employee_id`)
    REFERENCES `bookstore`.`employees` (`employee_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`bill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`bill` (
  `bill_id` CHAR(6) NOT NULL,
  `order_id` CHAR(4) NOT NULL,
  `bill_date` DATE NOT NULL,
  `vat` INT NOT NULL,
  `bill_total_price` INT NOT NULL,
  `branch_id` CHAR(5) NOT NULL,
  PRIMARY KEY (`bill_id`, `branch_id`),
  UNIQUE INDEX `Bid_UNIQUE` (`bill_id` ASC) VISIBLE,
  INDEX `fk_Bill_branch1_idx` (`branch_id` ASC) VISIBLE,
  CONSTRAINT `fk_Bill_branch_id`
    FOREIGN KEY (`branch_id`)
    REFERENCES `bookstore`.`branch` (`branch_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`bookstype`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`bookstype` (
  `booktype_id` CHAR(4) NOT NULL,
  `booktype_name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`booktype_id`),
  INDEX `idx_booktype_name` (`booktype_name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`publishers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`publishers` (
  `publisher_id` CHAR(4) NOT NULL,
  `publisher_name` VARCHAR(50) NOT NULL,
  `publisher_address` VARCHAR(100) NOT NULL,
  `publisher_city` VARCHAR(30) NOT NULL,
  `publisher_country` VARCHAR(30) NOT NULL,
  `publisher_phone` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`publisher_id`),
  UNIQUE INDEX `publisher_id_UNIQUE` (`publisher_id` ASC) VISIBLE,
  INDEX `idx_publisher_name` (`publisher_name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`books` (
  `book_id` CHAR(4) NOT NULL,
  `book_name` VARCHAR(50) NOT NULL,
  `book_quantity` INT NOT NULL,
  `book_price` INT NOT NULL,
  `booktype_id` CHAR(4) NOT NULL,
  `author_id` CHAR(4) NOT NULL,
  `publisher_id` CHAR(4) NOT NULL,
  `employee_id` CHAR(4) NOT NULL,
  PRIMARY KEY (`book_id`, `booktype_id`, `author_id`, `publisher_id`, `employee_id`),
  UNIQUE INDEX `book_id_UNIQUE` (`book_id` ASC) VISIBLE,
  INDEX `fk_books_bookstype1_idx` (`booktype_id` ASC) VISIBLE,
  INDEX `fk_books_authors1_idx` (`author_id` ASC) VISIBLE,
  INDEX `fk_books_publishers1_idx` (`publisher_id` ASC) VISIBLE,
  INDEX `idx_book_name` (`book_name` ASC) VISIBLE,
  INDEX `fk_books_employee_id_idx` (`employee_id` ASC) VISIBLE,
  CONSTRAINT `fk_books_author_id`
    FOREIGN KEY (`author_id`)
    REFERENCES `bookstore`.`authors` (`author_id`),
  CONSTRAINT `fk_books_bookstype_id`
    FOREIGN KEY (`booktype_id`)
    REFERENCES `bookstore`.`bookstype` (`booktype_id`),
  CONSTRAINT `fk_books_employee_id`
    FOREIGN KEY (`employee_id`)
    REFERENCES `bookstore`.`employees` (`employee_id`),
  CONSTRAINT `fk_books_publisher_id`
    FOREIGN KEY (`publisher_id`)
    REFERENCES `bookstore`.`publishers` (`publisher_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`boxsets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`boxsets` (
  `boxset_id` CHAR(5) NOT NULL,
  `boxset_name` VARCHAR(50) NOT NULL,
  `boxset_description` VARCHAR(255) NULL DEFAULT NULL,
  `boxset_price` INT NOT NULL,
  `boxset_quantity` INT NOT NULL,
  PRIMARY KEY (`boxset_id`),
  UNIQUE INDEX `boxset_id_UNIQUE` (`boxset_id` ASC) VISIBLE,
  INDEX `idx_boxset_name` (`boxset_name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`member` (
  `member_Id` CHAR(4) NOT NULL,
  `member_FirstName` VARCHAR(45) NOT NULL,
  `member_lastName` VARCHAR(45) NOT NULL,
  `member_Age` VARCHAR(45) NOT NULL,
  `member_IDCard` VARCHAR(45) NOT NULL,
  `member_Phone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`member_Id`),
  UNIQUE INDEX `MId_UNIQUE` (`member_Id` ASC) VISIBLE,
  INDEX `idx_member_IDCard` (`member_IDCard` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`productcountry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`productcountry` (
  `product_country_id` CHAR(5) NOT NULL,
  `product_country_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`product_country_id`),
  UNIQUE INDEX `productcountry_id_UNIQUE` (`product_country_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`promotions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`promotions` (
  `promotion_id` CHAR(4) NOT NULL,
  `promotion_name` VARCHAR(50) NOT NULL,
  `promotion_discount` INT NOT NULL,
  `promotion_start_date` DATE NOT NULL,
  `promotion_end_date` DATE NOT NULL,
  PRIMARY KEY (`promotion_id`),
  UNIQUE INDEX `promotion_id_UNIQUE` (`promotion_id` ASC) VISIBLE,
  INDEX `idx_promotion_name` (`promotion_name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`toys`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`toys` (
  `toy_id` CHAR(4) NOT NULL,
  `toy_name` VARCHAR(50) NOT NULL,
  `toy_description` VARCHAR(255) NULL DEFAULT NULL,
  `toy_price` INT NOT NULL,
  `toy_quantity` INT NOT NULL,
  PRIMARY KEY (`toy_id`),
  UNIQUE INDEX `toy_id_UNIQUE` (`toy_id` ASC) VISIBLE,
  INDEX `idx_toy_name` (`toy_name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`product_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`product_type` (
  `product_type_id` INT NOT NULL,
  `promotion_id` CHAR(4) NOT NULL,
  `product_country_id` CHAR(5) NOT NULL,
  `book_id` CHAR(4) NOT NULL,
  `boxset_id` CHAR(5) NOT NULL,
  `toy_id` CHAR(4) NOT NULL,
  PRIMARY KEY (`product_type_id`, `promotion_id`, `product_country_id`, `book_id`, `toy_id`, `boxset_id`),
  UNIQUE INDEX `producttype_id_UNIQUE` (`product_type_id` ASC) VISIBLE,
  INDEX `fk_producttype_promotions1_idx` (`promotion_id` ASC) VISIBLE,
  INDEX `fk_producttype_productcountry1_idx` (`product_country_id` ASC) VISIBLE,
  INDEX `fk_producttype_book_id_idx` (`book_id` ASC) VISIBLE,
  INDEX `fk_producttype_toy_id_idx` (`toy_id` ASC) VISIBLE,
  INDEX `fk_producttype_boxset_id_idx` (`boxset_id` ASC) VISIBLE,
  CONSTRAINT `fk_producttype_book_id`
    FOREIGN KEY (`book_id`)
    REFERENCES `bookstore`.`books` (`book_id`),
  CONSTRAINT `fk_producttype_boxset_id`
    FOREIGN KEY (`boxset_id`)
    REFERENCES `bookstore`.`boxsets` (`boxset_id`),
  CONSTRAINT `fk_producttype_productcountry_id`
    FOREIGN KEY (`product_country_id`)
    REFERENCES `bookstore`.`productcountry` (`product_country_id`),
  CONSTRAINT `fk_producttype_promotions_id`
    FOREIGN KEY (`promotion_id`)
    REFERENCES `bookstore`.`promotions` (`promotion_id`),
  CONSTRAINT `fk_producttype_toy_id`
    FOREIGN KEY (`toy_id`)
    REFERENCES `bookstore`.`toys` (`toy_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bookstore`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`orders` (
  `order_id` CHAR(4) NOT NULL,
  `member_Id` CHAR(4) NOT NULL,
  `producttype_id` INT NOT NULL,
  `order_quantity` INT NOT NULL,
  `order_date` DATE NOT NULL,
  `bill_id` CHAR(6) NOT NULL,
  PRIMARY KEY (`order_id`, `producttype_id`, `bill_id`),
  INDEX `fk_orders_has_productcountry_has_producttype_Member1_idx` (`member_Id` ASC) VISIBLE,
  INDEX `fk_orders_has_productcountry_has_producttype_producttype1_idx` (`producttype_id` ASC) VISIBLE,
  INDEX `fk_orders_Bill1_idx` (`bill_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_Bill1`
    FOREIGN KEY (`bill_id`)
    REFERENCES `bookstore`.`bill` (`bill_id`),
  CONSTRAINT `fk_orders_member`
    FOREIGN KEY (`member_Id`)
    REFERENCES `bookstore`.`member` (`member_Id`),
  CONSTRAINT `fk_orders_product_type`
    FOREIGN KEY (`producttype_id`)
    REFERENCES `bookstore`.`product_type` (`product_type_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
