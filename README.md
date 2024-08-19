# Project-Bookstore-management
Welcome to the Bookstore Database project. This database schema is designed to manage information for a bookstore, including authors, books, employees, and more.
## Why this project?
![Books Kinokuniya](https://insideretail.com.au/wp-content/uploads/2021/01/Books-Kinokuniya.jpg)
- ผมต้องการสร้างระบบที่จำลองภายในร้านหนังสือต่างๆ ที่มีอยู่ในปัจจุบัน โดยผมได้แรงบันดารใจมาจากร้านหนังสือ Kinokuniya ซึ่งเป็นร้านหนังสือที่มีชื่อเสียงร้านหนึ่งและมีสาขามากมายทั้งในประเทศและต่างประเทศ

# Bookstore Database Schema
## Schema Overview

The schema includes the following tables:
- [authors](#authors)
- [bookstype](#bookstype)
- [publishers](#publishers)
- [employees](#employees)
- [interpreters](#interpreters)
- [promotions](#promotions)
- [productcountry](#productcountry)
- [producttype](#producttype)
- [books](#books)
- [boxsets](#boxsets)
- [toys](#toys)
- [Member](#member)
- [orders](#orders)
- [company](#company)
- [branch](#branch)
- [bill](#bill)
  
 ## ER-Diargram
 - This image is an example of a bookstore schema design.
   
   ![ER-Diargram](https://github.com/Tako-C/Project-Bookstore-management/blob/main/Image/BooksStore-ER-V2.png?raw=true)
   

## Table Overview
The `bookstore` schema includes the following tables, each serving a specific purpose for managing bookstore-related data:

### `authors`
- `author_id`: Unique identifier for the author.
- `author_firstname`: First name of the author.
- `author_lastname`: Last name of the author.
- `author_city`: City where the author resides.
- `author_country`: Country where the author resides.
- `author_phone`: Phone number of the author.

### `bookstype`
- `booktype_id`: Unique identifier for the book type.
- `booktype_name`: Name of the book type (e.g., Fiction, Non-Fiction).

### `publishers`
- `publisher_id`: Unique identifier for the publisher.
- `publisher_name`: Name of the publisher.
- `publisher_address`: Address of the publisher.
- `publisher_city`: City where the publisher is located.
- `publisher_country`: Country where the publisher is located.
- `publisher_phone`: Phone number of the publisher.

### `employees`
- `employee_id`: Unique identifier for the employee.
- `employee_firstname`: First name of the employee.
- `employee_lastname`: Last name of the employee.
- `employee_age`: Age of the employee.
- `employee_address`: Address of the employee.
- `employee_responsibility`: Responsibility or role of the employee.
- `employee_salary`: Salary of the employee.
- `employee_supervisor`: ID of the employee's supervisor.

### `interpreters`
- `interpreter_id`: Unique identifier for the interpreter.
- `employee_id`: ID of the employee who is an interpreter.

### `promotions`
- `promotion_id`: Unique identifier for the promotion.
- `promotion_name`: Name of the promotion.
- `promotion_discount`: Discount percentage for the promotion.

### `productcountry`
- `productcountry_id`: Unique identifier for the product country.
- `productcountry_name`: Name of the country related to the product.

### `producttype`
- `producttype_id`: Unique identifier for the product type.
- `producttype_name`: Name of the product type.
- `promotion_id`: ID of the associated promotion.
- `productcountry_id`: ID of the associated product country.

### `books`
- `book_id`: Unique identifier for the book.
- `book_name`: Name of the book.
- `book_quantity`: Quantity of the book in stock.
- `book_price`: Price of the book.
- `booktype_id`: ID of the book type.
- `author_id`: ID of the author of the book.
- `publisher_id`: ID of the publisher of the book.
- `interpreter_id`: ID of the interpreter associated with the book.
- `producttype_id`: ID of the product type associated with the book.

### `boxsets`
- `boxset_id`: Unique identifier for the boxset.
- `boxset_name`: Name of the boxset.
- `boxset_price`: Price of the boxset.
- `boxset_quantity`: Quantity of the boxset in stock.
- `producttype_id`: ID of the product type associated with the boxset.

### `toys`
- `toy_id`: Unique identifier for the toy.
- `toy_name`: Name of the toy.
- `toy_price`: Price of the toy.
- `toy_quantity`: Quantity of the toy in stock.
- `producttype_id`: ID of the product type associated with the toy.

### `Member`
- `member_id`: Unique identifier for the member.
- `member_firstname`: First name of the member.
- `member_lastname`: Last name of the member.
- `member_age`: Age of the member.
- `member_idcard`: ID card number of the member.

### `orders`
- `order_id`: Unique identifier for the order.
- `member_id`: ID of the member who placed the order.
- `producttype_id`: ID of the product type ordered.
- `order_quantity`: Quantity of the product ordered.
- `order_date`: Date when the order was placed.
- `bill_bill_id`: ID of the associated bill.
- `bill_branch_id`: ID of the branch where the bill was issued.
- `bill_company_id`: ID of the company where the bill was issued.

### `company`
- `company_id`: Unique identifier for the company.
- `company_name`: Name of the company.
- `cm_address`: Address of the company.
- `cm_tel`: Telephone number of the company.
- `cm_country`: Country where the company is located.

### `branch`
- `branch_id`: Unique identifier for the branch.
- `branch_name`: Name of the branch.
- `branch_address`: Address of the branch.
- `branch_tel`: Telephone number of the branch.
- `branch_country`: Country where the branch is located.
- `branch_city`: City where the branch is located.
- `branch_manager`: ID of the branch manager.
- `company_id`: ID of the company that owns the branch.

### `bill`
- `bill_id`: Unique identifier for the bill.
- `order_id`: ID of the associated order.
- `bill_date`: Date of the bill.
- `vat`: VAT amount on the bill.
- `bill_total_price`: Total price on the bill.
- `branch_id`: ID of the branch that issued the bill.
- `company_id`: ID of the company that issued the bill.

