INSERT INTO `bookstore`.`authors` (`author_id`, `author_firstname`, `author_lasttname`, `author_city`, `author_country`, `author_phone`) 
VALUES 
('A001', 'John', 'Doe', 'New York', 'USA', '1234567890'),
('A002', 'Jane', 'Smith', 'Los Angeles', 'USA', '0987654321');

INSERT INTO `bookstore`.`bookstype` (`booktype_id`, `booktype_name`) 
VALUES 
('BT01', 'Fiction'),
('BT02', 'Non-Fiction');

INSERT INTO `bookstore`.`publishers` (`publisher_id`, `publisher_name`, `publisher_address`, `publisher_city`, `publisher_country`, `publisher_phone`) 
VALUES 
('P001', 'Penguin Books', '375 Hudson Street', 'New York', 'USA', '1234567890'),
('P002', 'HarperCollins', '195 Broadway', 'New York', 'USA', '0987654321');

INSERT INTO `bookstore`.`employees` (`employee_id`, `employee_firstname`, `employee_lastname`, `employee_age`, `employee_address`, `employee_responsibility`, `employee_salary`, `employee_suppervisor`) 
VALUES 
('E001', 'Alice', 'Johnson', 30, '123 Elm Street', 'Manager', 50000, 'E003'),
('E002', 'Bob', 'Williams', 25, '456 Oak Street', 'Assistant', 30000, 'E003'),
('E003', 'Charlie', 'Brown', 40, '789 Pine Street', 'Director', 70000, 'E001');

INSERT INTO `bookstore`.`interpreters` (`interpreter_id`, `employee_id`) 
VALUES 
('I001', 'E002'),
('I002', 'E003');

INSERT INTO `bookstore`.`promotions` (`promotion_id`, `promotion_name`, `promotion_discount`) 
VALUES 
('PR01', 'Summer Sale', 20),
('PR02', 'Winter Sale', 15);

INSERT INTO `bookstore`.`producttype` (`producttype_id`, `producttype_name`, `promotion_id`, `productcountry_id`) 
VALUES 
(1, 'Novel', 'PR01', 'PC01'),
(2, 'Comic', 'PR02', 'PC02');

INSERT INTO `bookstore`.`books` (`book_id`, `book_name`, `book_quantity`, `book_price`, `booktype_id`, `author_id`, `publisher_id`, `interpreter_id`, `producttype_id`) 
VALUES 
('B001', 'The Great Adventure', 100, 15, 'BT01', 'A001', 'P001', 'I001', 1),
('B002', 'Mystery of the Lost City', 50, 20, 'BT02', 'A002', 'P002', 'I002', 2);

INSERT INTO `bookstore`.`toys` (`toy_id`, `toy_name`, `toy_price`, `toy_quantity`, `producttype_id`) 
VALUES 
('T001', 'Toy Car', 10, 100, 1),
('T002', 'Action Figure', 15, 150, 2);

INSERT INTO `bookstore`.`company` (`company_id`, `company_name`, `cm_Address`, `cm_tel`, `cm_Country`) 
VALUES 
('C001', 'BookCo Inc.', '123 Business Rd.', '5551234567', 'USA'),
('C002', 'ReadWell Ltd.', '456 Commerce Ave.', '5559876543', 'UK');
INSERT INTO `bookstore`.`branch` (`branch_id`, `branch_name`, `branch_address`, `branch_tel`, `branch_country`, `branch_city`, `branch_manager`, `company_id`) 
VALUES 
('BR001', 'Downtown Branch', '100 Main Street', '5550001111', 'USA', 'New York', 'E003', 'C001'),
('BR002', 'Uptown Branch', '200 Market Street', '5551112222', 'USA', 'New York', 'E002', 'C002');

INSERT INTO `bookstore`.`orders` (`order_id`, `member_Id`, `producttype_id`, `order_quantity`, `order_date`, `Bill_bill_id`, `Bill_branch_id`, `Bill_company_id`) 
VALUES 
('O001', 'M001', 1, 2, '2024-08-15', 'B001', 'BR001', 'C001'),
('O002', 'M002', 2, 1, '2024-08-16', 'B002', 'BR002', 'C002');

INSERT INTO `bookstore`.`Bill` (`bill_id`, `order_id`, `bill_date`, `vat`, `bill_total_price`, `branch_id`, `company_id`) 
VALUES 
('BR001', 'O001', '2024-08-15', 5, 30, 'BR01', 'C001'),
('BR002', 'O002', '2024-08-16', 5, 15, 'BR02', 'C002');


