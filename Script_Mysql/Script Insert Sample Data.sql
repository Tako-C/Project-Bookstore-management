-- Insert into authors
INSERT INTO `bookstore`.`authors` (`author_id`, `author_firstname`, `author_lasttname`, `author_city`, `author_country`, `author_phone`)
VALUES 
('A001', 'John', 'Doe', 'New York', 'USA', '1234567890'),
('A002', 'Jane', 'Smith', 'London', 'UK', '0987654321'),
('A003', 'Emily', 'Johnson', 'Paris', 'France', '2345678901'),
('A004', 'Michael', 'Williams', 'Berlin', 'Germany', '3456789012');

-- Insert into bookstype
INSERT INTO `bookstore`.`bookstype` (`booktype_id`, `booktype_name`)
VALUES 
('B001', 'Fiction'),
('B002', 'Non-Fiction'),
('B003', 'Science Fiction'),
('B004', 'Fantasy');

-- Insert into publishers
INSERT INTO `bookstore`.`publishers` (`publisher_id`, `publisher_name`, `publisher_address`, `publisher_city`, `publisher_country`, `publisher_phone`)
VALUES 
('P001', 'Penguin Books', '123 Penguin St', 'New York', 'USA', '1234567890'),
('P002', 'HarperCollins', '456 Harper Ave', 'London', 'UK', '0987654321'),
('P003', 'Simon & Schuster', '789 Simon Rd', 'Paris', 'France', '2345678901'),
('P004', 'Hachette Livre', '101 Hachette Blvd', 'Berlin', 'Germany', '3456789012');

-- Insert into employees
INSERT INTO `bookstore`.`employees` (`employee_id`, `employee_firstname`, `employee_lastname`, `employee_age`, `employee_address`, `employee_responsibility`, `employee_salary`, `employee_suppervisor`)
VALUES 
-- ('E001', 'Alice', 'Brown', 30, '123--  Brown St', 'Manager', 50000, null),
-- ('E002', 'Bob', 'Davis', 28, '456 Davis Ave', 'Sales', 40000, 'E001'),
-- ('E003', 'Charlie', 'Wilson', 35, '789 Wilson Rd', 'HR', 60000, 'E001'),
-- ('E004', 'David', 'Taylor', 32, '101 Taylor Blvd', 'IT', 45000, 'E003'),
('E005', 'Aliceffff', 'Brown', 30, '123 Brown St', 'Managerfffff', 50000, null),
('E006', 'Alicedgdfgd', 'Brown', 30, '123 Brown St', 'Managergggg', 50000, null),
('E007', 'Alicefgdggdg', 'Brown', 30, '123 Brown St', 'Managerjjjj', 50000, null);


-- Insert into interpreters
INSERT INTO `bookstore`.`interpreters` (`interpreter_id`, `employee_id`)
VALUES 
('I001', 'E002'),
('I002', 'E003'),
('I003', 'E004'),
('I004', 'E001');

-- Insert into promotions
INSERT INTO `bookstore`.`promotions` (`promotion_id`, `promotion_name`, `promotion_discount`)
VALUES 
('PR01', 'Summer Sale', 20),
('PR02', 'Winter Discount', 30),
('PR03', 'Spring Offer', 15),
('PR04', 'Autumn Deal', 25);

-- Insert into productcountry
INSERT INTO `bookstore`.`productcountry` (`productcountry_id`, `productcountry_name`)
VALUES 
('C001', 'USA'),
('C002', 'UK'),
('C003', 'France'),
('C004', 'Germany');

-- Insert into producttype
INSERT INTO `bookstore`.`producttype` (`producttype_id`, `producttype_name`, `promotion_id`, `productcountry_id`)
VALUES 
(1, 'Books', 'PR01', 'C001'),
(2, 'Toys', 'PR02', 'C002'),
(3, 'Boxsets', 'PR03', 'C003'),
(4, 'Games', 'PR04', 'C004');

-- Insert into books
INSERT INTO `bookstore`.`books` (`book_id`, `book_name`, `book_quantity`, `book_price`, `booktype_id`, `author_id`, `publisher_id`, `interpreter_id`, `producttype_id`)
VALUES 
('B001', 'The Great Gatsby', 100, 20, 'B001', 'A001', 'P001', 'I001', 1),
('B002', '1984', 150, 15, 'B002', 'A002', 'P002', 'I002', 2),
('B003', 'Brave New World', 200, 25, 'B003', 'A003', 'P003', 'I003', 3),
('B004', 'To Kill a Mockingbird', 50, 10, 'B004', 'A004', 'P004', 'I004', 4);

-- Insert into boxsets
INSERT INTO `bookstore`.`boxsets` (`boxset_id`, `boxset_name`, `boxset_price`, `boxset_quantity`, `producttype_id`)
VALUES 
('BX01', 'Harry Potter Set', 100, 10, 1),
('BX02', 'Lord of the Rings Set', 150, 5, 2),
('BX03', 'Game of Thrones Set', 200, 7, 3),
('BX04', 'Narnia Set', 50, 8, 4);

-- Insert into toys
INSERT INTO `bookstore`.`toys` (`toy_id`, `toy_name`, `toy_price`, `toy_quantity`, `producttype_id`)
VALUES 
('T001', 'Lego Set', 50, 20, 1),
('T002', 'Barbie Doll', 30, 15, 2),
('T003', 'Hot Wheels', 20, 25, 3),
('T004', 'Action Figure', 40, 10, 4);

-- Insert into member
INSERT INTO `bookstore`.`member` (`member_Id`, `member_FirstName`, `member_lastName`, `member_Age`, `member_IDCard`, `member_Phone`)
VALUES 
('M001', 'John', 'Doe', '30', '1234567890', '0987654321'),
('M002', 'Jane', 'Smith', '28', '2345678901', '1234567890'),
('M003', 'Emily', 'Johnson', '35', '3456789012', '2345678901'),
('M004', 'Michael', 'Williams', '32', '4567890123', '3456789012');


-- Insert into company
INSERT INTO `bookstore`.`company` (`company_id`, `company_name`, `cm_Address`, `cm_tel`, `cm_Country`)
VALUES 
('C001', 'Global Books', '123 Global St', '1234567890', 'USA'),
('C002', 'Books United', '456 United Ave', '0987654321', 'UK'),
('C003', 'Books World', '789 World Rd', '2345678901', 'France'),
('C004', 'Book House', '101 House Blvd', '3456789012', 'Germany');

-- Insert into branch
INSERT INTO `bookstore`.`branch` (`branch_id`, `branch_name`, `branch_address`, `branch_tel`, `branch_country`, `branch_city`, `branch_manager`, `company_id`)
VALUES 
('BR01', 'Main Branch', '123 Main St', '1234567890', 'USA', 'New York', 'E001', 'C001'),
('BR02', 'Downtown Branch', '456 Downtown Ave', '0987654321', 'UK', 'London', 'E002', 'C002'),
('BR03', 'City Center Branch', '789 Center Rd', '2345678901', 'France', 'Paris', 'E003', 'C003'),
('BR04', 'West Side Branch', '101 West Blvd', '3456789012', 'Germany', 'Berlin', 'E004', 'C004');

-- Insert into bill
INSERT INTO `bookstore`.`bill` (`bill_id`, `order_id`, `bill_date`, `vat`, `bill_total_price`, `branch_id`, `company_id`)
VALUES 
('B001', 'O001', '2023-08-05', 7, 100, 'BR01', 'C001'),
('B002', 'O002', '2023-08-06', 7, 200, 'BR02', 'C002'),
('B003', 'O003', '2023-08-07', 7, 300, 'BR03', 'C003'),
('B004', 'O004', '2023-08-08', 7, 400, 'BR04', 'C004');
-- Insert into orders
INSERT INTO `bookstore`.`orders` (`order_id`, `member_Id`, `producttype_id`, `order_quantity`, `order_date`, `Bill_bill_id`, `Bill_branch_id`, `Bill_company_id`)
VALUES 
('O001', 'M001', 1, 5, '2023-08-01', 'B001', 'BR01', 'C001'),
('O002', 'M002', 2, 3, '2023-08-02', 'B002', 'BR02', 'C002'),
('O003', 'M003', 3, 2, '2023-08-03', 'B003', 'BR03', 'C003'),
('O004', 'M004', 4, 1, '2023-08-04', 'B004', 'BR04', 'C004');

