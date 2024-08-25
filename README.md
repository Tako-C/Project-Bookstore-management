# Project-Bookstore-management
Welcome to the Bookstore Database project. This database schema is designed to manage information for a bookstore, including authors, books, employees, and more.
## Why this project?
![Books Kinokuniya](https://insideretail.com.au/wp-content/uploads/2021/01/Books-Kinokuniya.jpg)
- I want to create a system that replicates the interior of different bookstores. currently available I got inspiration from Kinokuniya Bookstore, which is a famous bookstore with many branches both domestically and abroad.

# Bookstore Database Schema

## Table of Contents
- [Database Schema Overview](#database-schema-overview)
- [Tables](#tables)
  - [authors](#authors)
  - [bookstype](#bookstype)
  - [members](#members)
  - [orders](#orders)
  - [bill](#bill)
  - [branch](#branch)
  - [product_type](#product_type)
  - [productcountry](#productcountry)
  - [books](#books)
  - [publishers](#publishers)
  - [boxsets](#boxsets)
  - [toys](#toys)
  - [promotions](#promotions)
  - [employees](#employees)
  - [company](#company)

## Database Schema Overview

The database is designed to manage various aspects of a book store, including information about books, authors, publishers, promotions, employees, and transactions. The schema provides a comprehensive structure to store and manage data efficiently.

## Tables

### `authors`
- **author_id**: Unique identifier for the author (CHAR(4))
- **author_firstname**: First name of the author (VARCHAR(50))
- **author_lastname**: Last name of the author (VARCHAR(50))
- **author_city**: City where the author resides (VARCHAR(30))
- **author_country**: Country where the author resides (VARCHAR(30))
- **author_phone**: Phone number of the author (VARCHAR(10))

### `bookstype`
- **booktype_id**: Unique identifier for the book type (CHAR(4))
- **booktype_name**: Name of the book type (VARCHAR(50))

### `members`
- **member_id**: Unique identifier for each member (CHAR(4))
- **member_firstname**: First name of the member (VARCHAR(45))
- **member_lastname**: Last name of the member (VARCHAR(45))
- **member_age**: Age of the member (VARCHAR(45))
- **member_DOB**: Date of birth of the member (VARCHAR(45))
- **member_phone**: Phone number of the member (VARCHAR(45))

### `orders`
- **order_id**: Unique identifier for each order (CHAR(4))
- **member_id**: Identifier for the member who placed the order (CHAR(4))
- **producttype_id**: Identifier for the type of product ordered (CHAR(4))
- **order_quantity**: Quantity of the product ordered (INT)
- **order_date**: Date when the order was placed (DATE)
- **bill_id**: Identifier for the bill associated with the order (CHAR(4))

### `bill`
- **bill_id**: Unique identifier for each bill (CHAR(4))
- **bill_date**: Date of the bill (DATE)
- **bill_price**: Total price of the bill (INT)
- **branch_id**: Identifier for the branch that issued the bill (CHAR(4))

### `branch`
- **branch_id**: Unique identifier for each branch (CHAR(4))
- **branch_name**: Name of the branch (VARCHAR(50))
- **branch_address**: Address of the branch (VARCHAR(50))
- **branch_tel**: Telephone number of the branch (VARCHAR(15))
- **bill_id**: Identifier for the bill associated with the branch (CHAR(4))

### `product_type`
- **product_type_id**: Unique identifier for each product type (INT)
- **promotion_id**: Identifier for the promotion applied to the product type (CHAR(4))
- **product_country_id**: Identifier for the country of origin of the product (CHAR(4))
- **book_id**: Identifier for the book (CHAR(4))
- **boxset_id**: Identifier for the box set (CHAR(4))
- **toy_id**: Identifier for the toy (CHAR(4))

### `productcountry`
- **product_country_id**: Unique identifier for each product country (CHAR(4))
- **product_country_name**: Name of the product country (VARCHAR(20))

### `books`
- **book_id**: Unique identifier for each book (CHAR(4))
- **book_name**: Name of the book (VARCHAR(50))
- **book_quantity**: Quantity of the book available (INT)
- **book_price**: Price of the book (INT)
- **author_id**: Identifier for the author (CHAR(4))
- **publisher_id**: Identifier for the publisher (CHAR(4))
- **employee_id**: Identifier for the employee who manages the book (CHAR(4))

### `publishers`
- **publisher_id**: Unique identifier for each publisher (CHAR(4))
- **publisher_name**: Name of the publisher (VARCHAR(50))
- **publisher_address**: Address of the publisher (VARCHAR(50))
- **publisher_city**: City where the publisher is located (VARCHAR(30))
- **publisher_country**: Country where the publisher is located (VARCHAR(30))
- **publisher_phone**: Phone number of the publisher (VARCHAR(10))

### `boxsets`
- **boxset_id**: Unique identifier for each box set (CHAR(4))
- **boxset_name**: Name of the box set (VARCHAR(50))
- **boxset_description**: Description of the box set (VARCHAR(255))
- **boxset_quantity**: Quantity of the box set available (INT)

### `toys`
- **toy_id**: Unique identifier for each toy (CHAR(4))
- **toy_name**: Name of the toy (VARCHAR(50))
- **toy_description**: Description of the toy (VARCHAR(255))
- **toy_price**: Price of the toy (INT)

### `promotions`
- **promotion_id**: Unique identifier for each promotion (CHAR(4))
- **promotion_name**: Name of the promotion (VARCHAR(50))
- **promotion_discount**: Discount percentage offered by the promotion (INT)
- **promotion_start_date**: Start date of the promotion (DATE)
- **promotion_end_date**: End date of the promotion (DATE)

### `employees`
- **employee_id**: Unique identifier for each employee (CHAR(4))
- **employee_firstname**: First name of the employee (VARCHAR(50))
- **employee_lastname**: Last name of the employee (VARCHAR(50))
- **employee_age**: Age of the employee (INT)
- **employee_address**: Address of the employee (VARCHAR(100))
- **employee_responsibility**: Role or responsibility of the employee (VARCHAR(30))
- **employee_salary**: Salary of the employee (INT)
- **employee_supervisor**: Identifier of the employee's supervisor (CHAR(4))

### `company`
- **company_id**: Unique identifier for each company (CHAR(4))
- **company_name**: Name of the company (VARCHAR(50))
- **cm_Address**: Address of the company (VARCHAR(50))
- **cm_tel**: Telephone number of the company (VARCHAR(15))
- **cm_Country**: Country where the company is located (VARCHAR(50))

