-- Insert into authors
INSERT INTO `bookstore`.`authors` (`author_id`, `author_firstname`, `author_lasttname`, `author_city`, `author_country`, `author_phone`) VALUES
('A001', 'John', 'Smith', 'New York', 'USA', '1234567890'),
('A002', 'Jane', 'Doe', 'Los Angeles', 'USA', '0987654321'),
('A003', 'Robert', 'Brown', 'Chicago', 'USA', '1122334455'),
('A004', 'Emily', 'Davis', 'Houston', 'USA', '2233445566'),
('A005', 'Michael', 'Wilson', 'Phoenix', 'USA', '3344556677'),
('A006', 'Sarah', 'Taylor', 'Philadelphia', 'USA', '4455667788'),
('A007', 'David', 'Anderson', 'San Antonio', 'USA', '5566778899'),
('A008', 'Laura', 'Thomas', 'San Diego', 'USA', '6677889900'),
('A009', 'James', 'Jackson', 'Dallas', 'USA', '7788990011'),
('A010', 'Elizabeth', 'White', 'San Jose', 'USA', '8899001122');

-- Insert into bookstype
INSERT INTO `bookstore`.`bookstype` (`booktype_id`, `booktype_name`) VALUES
('T001', 'Fiction'),
('T002', 'Non-Fiction'),
('T003', 'Science'),
('T004', 'History'),
('T005', 'Biography'),
('T006', 'Fantasy'),
('T007', 'Romance'),
('T008', 'Thriller'),
('T009', 'Mystery'),
('T010', 'Self-Help');

-- Insert into publishers
INSERT INTO `bookstore`.`publishers` (`publisher_id`, `publisher_name`, `publisher_address`, `publisher_city`, `publisher_country`, `publisher_phone`) VALUES
('P001', 'Penguin Books', '123 Book St', 'New York', 'USA', '555-1234'),
('P002', 'HarperCollins', '456 Read Ave', 'Los Angeles', 'USA', '555-5678'),
('P003', 'Simon & Schuster', '789 Novel Blvd', 'Chicago', 'USA', '555-9012'),
('P004', 'Random House', '101 Story Ln', 'Houston', 'USA', '555-3456'),
('P005', 'Macmillan', '202 Author Dr', 'Phoenix', 'USA', '555-7890'),
('P006', 'Hachette', '303 Publisher St', 'Philadelphia', 'USA', '555-2345'),
('P007', 'Scholastic', '404 Print Rd', 'San Antonio', 'USA', '555-6789'),
('P008', 'Chronicle Books', '505 Page St', 'San Diego', 'USA', '555-0123'),
('P009', 'Wiley', '606 Manuscript Ave', 'Dallas', 'USA', '555-4567'),
('P010', 'Dutton', '707 Volume St', 'San Jose', 'USA', '555-8901');

-- Insert into employees
INSERT INTO `bookstore`.`employees` (`employee_id`, `employee_firstname`, `employee_lastname`, `employee_age`, `employee_address`, `employee_responsibility`, `employee_salary`, `employee_suppervisor`) VALUES
('E001', 'John', 'Doe', 30, '123 Main St', 'Manager', 50000, NULL),
('E002', 'Jane', 'Smith', 28, '456 Elm St', 'Assistant Manager', 40000, 'E001'),
('E003', 'Emily', 'Johnson', 35, '789 Oak St', 'Sales Associate', 35000, 'E001'),
('E004', 'Michael', 'Brown', 40, '101 Pine St', 'Customer Service', 32000, 'E002'),
('E005', 'Jessica', 'Davis', 25, '202 Maple St', 'Inventory Clerk', 30000, 'E002'),
('E006', 'David', 'Wilson', 32, '303 Cedar St', 'Marketing Specialist', 45000, 'E003'),
('E007', 'Laura', 'Martinez', 29, '404 Birch St', 'Cashier', 28000, 'E003'),
('E008', 'Chris', 'Anderson', 37, '505 Walnut St', 'IT Support', 38000, 'E004'),
('E009', 'Amanda', 'Thomas', 27, '606 Spruce St', 'HR Coordinator', 34000, 'E004'),
('E010', 'Ryan', 'Moore', 33, '707 Willow St', 'Administrative Assistant', 31000, 'E005');

-- Insert into promotions
INSERT INTO `bookstore`.`promotions` (`promotion_id`, `promotion_name`, `promotion_discount`, `promotion_start_date`, `promotion_end_date`) VALUES
('P001', 'Summer Sale', 10, '2024-06-01', '2024-06-30'),
('P002', 'Winter Discount', 15, '2024-12-01', '2024-12-31'),
('P003', 'Buy One Get One Free', 50, '2024-07-01', '2024-07-31'),
('P004', 'Holiday Special', 20, '2024-11-01', '2024-11-30'),
('P005', 'Spring Clearance', 25, '2024-03-01', '2024-03-31'),
('P006', 'Black Friday Deal', 30, '2024-11-29', '2024-11-29'),
('P007', 'Cyber Monday Sale', 35, '2024-12-02', '2024-12-02'),
('P008', 'New Year Offer', 40, '2024-12-31', '2024-12-31'),
('P009', 'Weekend Discount', 10, '2024-08-01', '2024-08-31'),
('P010', 'Flash Sale', 50, '2024-09-01', '2024-09-01');


-- Insert into productcountry
INSERT INTO `bookstore`.`productcountry` (`product_country_id`, `product_country_name`) VALUES
('PC001', 'USA'),
('PC002', 'UK'),
('PC003', 'Canada'),
('PC004', 'Germany'),
('PC005', 'France'),
('PC006', 'Japan'),
('PC007', 'China'),
('PC008', 'India'),
('PC009', 'Australia'),
('PC010', 'Brazil');

-- Insert into product_type
INSERT INTO `bookstore`.`product_type` (`product_type_id`, `promotion_id`, `product_country_id`, `book_id`, `boxset_id`, `toy_id`) VALUES
(1, 'P001', 'PC001', 'B001', 'BX01', 'T001'),
(2, 'P002', 'PC002', 'B002', 'BX02', 'T002'),
(3, 'P003', 'PC003', 'B003', 'BX03', 'T003'),
(4, 'P004', 'PC004', 'B004', 'BX04', 'T004'),
(5, 'P005', 'PC005', 'B005', 'BX05', 'T005'),
(6, 'P006', 'PC001', 'B006', 'BX01', 'T006'),
(7, 'P007', 'PC002', 'B007', 'BX02', 'T007'),
(8, 'P008', 'PC003', 'B008', 'BX03', 'T008'),
(9, 'P009', 'PC004', 'B009', 'BX04', 'T009'),
(10, 'P010', 'PC005', 'B010', 'BX05', 'T010');

-- Insert into books
INSERT INTO `bookstore`.`books` (`book_id`, `book_name`, `book_quantity`, `book_price`, `booktype_id`, `author_id`, `publisher_id`, `employee_id`) VALUES
('B001', 'The Great Adventure', 10, 15, 'T001', 'A001', 'P001', 'E001'),
('B002', 'Mystery of the Sea', 5, 20, 'T002', 'A002', 'P002', 'E002'),
('B003', 'Science of Life', 8, 25, 'T003', 'A003', 'P003', 'E003'),
('B004', 'History Unfolded', 12, 30, 'T004', 'A004', 'P004', 'E004'),
('B005', 'Biographies of Legends', 7, 35, 'T005', 'A005', 'P005', 'E005'),
('B006', 'Fantasy Realm', 15, 40, 'T006', 'A006', 'P006', 'E006'),
('B007', 'Romantic Tales', 10, 45, 'T007', 'A007', 'P007', 'E007'),
('B008', 'Thriller Nights', 6, 50, 'T008', 'A008', 'P008', 'E008'),
('B009', 'Mysteries Unsolved', 9, 55, 'T009', 'A009', 'P009', 'E009'),
('B010', 'Self-Help Secrets', 20, 60, 'T010', 'A010', 'P010', 'E010');

-- Insert into boxsets
INSERT INTO `bookstore`.`boxsets` (`boxset_id`, `boxset_name`, `boxset_description`, `boxset_price`, `boxset_quantity`) VALUES
('BS001', 'Fantasy Collection', 'A set of 3 popular fantasy novels', 45, 20),
('BS002', 'Science Series', 'A 5-book series on scientific discoveries', 75, 15),
('BS003', 'Romance Bundle', 'Collection of 4 romantic novels', 60, 25),
('BS004', 'Mystery Set', 'Includes 4 thrilling mystery novels', 55, 10),
('BS005', 'Historical Fiction', 'Set of 6 historical fiction books', 90, 12),
('BS006', 'Self-Help Kit', 'Includes 3 self-help bestsellers', 35, 30),
('BS007', 'Biography Pack', 'A collection of 5 inspiring biographies', 70, 20),
('BS008', 'Children\'s Favorites', 'Boxset of 7 popular children\'s books', 40, 25),
('BS009', 'Adventure Series', 'Set of 4 adventure novels', 50, 15),
('BS010', 'Classic Literature', 'A set of 6 classic literature books', 80, 10);

-- Insert into toys
INSERT INTO `bookstore`.`toys` (`toy_id`, `toy_name`, `toy_price`, `toy_quantity`, `toy_description`) VALUES
('T001', 'Building Blocks', 20, 50, 'A set of colorful building blocks'),
('T002', 'Action Figures', 15, 40, 'Set of 5 action figures with accessories'),
('T003', 'Dollhouse', 60, 10, 'A large dollhouse with furniture'),
('T004', 'Puzzle Set', 25, 30, 'A collection of challenging puzzles'),
('T005', 'Remote Control Car', 45, 20, 'A remote control car with rechargeable battery'),
('T006', 'Stuffed Animal', 18, 25, 'A soft and cuddly stuffed animal'),
('T007', 'Educational Toys', 30, 15, 'Toys that help with learning and development'),
('T008', 'Board Games', 35, 12, 'A set of popular board games'),
('T009', 'Toy Train Set', 50, 18, 'A toy train set with tracks and accessories'),
('T010', 'Craft Kit', 22, 22, 'A kit for creating various craft projects');

-- Insert into member
INSERT INTO `bookstore`.`member` (`member_Id`, `member_FirstName`, `member_lastName`, `member_Age`, `member_IDCard`, `member_Phone`) VALUES
('M001', 'John', 'Doe', '30', 'ID1234567890', '555-1234'),
('M002', 'Jane', 'Smith', '25', 'ID0987654321', '555-5678'),
('M003', 'Alice', 'Johnson', '40', 'ID1122334455', '555-8765'),
('M004', 'Bob', 'Brown', '35', 'ID2233445566', '555-4321'),
('M005', 'Charlie', 'Davis', '28', 'ID3344556677', '555-6789'),
('M006', 'Diana', 'Garcia', '32', 'ID4455667788', '555-3456'),
('M007', 'Eve', 'Wilson', '29', 'ID5566778899', '555-2345'),
('M008', 'Frank', 'Martinez', '45', 'ID6677889900', '555-5679'),
('M009', 'Grace', 'Lee', '31', 'ID7788990011', '555-6780'),
('M010', 'Henry', 'Miller', '38', 'ID8899001122', '555-7890');


-- Insert into company
INSERT INTO `bookstore`.`company` (`company_id`, `company_name`, `cm_Address`, `cm_tel`, `cm_Country`) VALUES
('C001', 'ABC Corp', '123 Elm St', '555-1234', 'USA'),
('C002', 'XYZ Ltd', '456 Oak St', '555-5678', 'USA'),
('C003', 'LMN Inc', '789 Pine St', '555-9012', 'USA'),
('C004', 'OPQ PLC', '101 Maple St', '555-3456', 'USA'),
('C005', 'RST LLC', '202 Birch St', '555-7890', 'USA'),
('C006', 'UVW Group', '303 Cedar St', '555-2345', 'USA'),
('C007', 'GHI Enterprises', '404 Fir St', '555-6789', 'USA'),
('C008', 'JKL Holdings', '505 Spruce St', '555-0123', 'USA'),
('C009', 'MNO Ltd', '606 Redwood St', '555-4567', 'USA'),
('C010', 'PQR Corp', '707 Chestnut St', '555-8901', 'USA');

-- Insert into branch
INSERT INTO `bookstore`.`branch` (`branch_id`, `branch_name`, `branch_address`, `branch_tel`, `branch_country`, `branch_city`, `employee_id`, `company_id`) VALUES
('B001', 'Branch A', '123 Main St', '555-1234', 'USA', 'New York', 'E001', 'C001'),
('B002', 'Branch B', '456 Second St', '555-5678', 'USA', 'Los Angeles', 'E002', 'C002'),
('B003', 'Branch C', '789 Third St', '555-9012', 'USA', 'Chicago', 'E003', 'C003'),
('B004', 'Branch D', '101 Fourth St', '555-3456', 'USA', 'Houston', 'E004', 'C004'),
('B005', 'Branch E', '202 Fifth St', '555-7890', 'USA', 'Phoenix', 'E005', 'C005'),
('B006', 'Branch F', '303 Sixth St', '555-2345', 'USA', 'Philadelphia', 'E006', 'C006'),
('B007', 'Branch G', '404 Seventh St', '555-6789', 'USA', 'San Antonio', 'E007', 'C007'),
('B008', 'Branch H', '505 Eighth St', '555-0123', 'USA', 'San Diego', 'E008', 'C008'),
('B009', 'Branch I', '606 Ninth St', '555-4567', 'USA', 'Dallas', 'E009', 'C009'),
('B010', 'Branch J', '707 Tenth St', '555-8901', 'USA', 'San Jose', 'E010', 'C010');

-- Insert into bill
INSERT INTO `bookstore`.`bill` (`bill_id`, `order_id`, `bill_date`, `vat`, `bill_total_price`, `branch_id`) VALUES
('B001', 'O001', '2024-01-01', 10, 100, 'B001'),
('B002', 'O002', '2024-01-02', 15, 150, 'B002'),
('B003', 'O003', '2024-01-03', 20, 200, 'B003'),
('B004', 'O004', '2024-01-04', 25, 250, 'B004'),
('B005', 'O005', '2024-01-05', 30, 300, 'B005'),
('B006', 'O006', '2024-01-06', 35, 350, 'B006'),
('B007', 'O007', '2024-01-07', 40, 400, 'B007'),
('B008', 'O008', '2024-01-08', 45, 450, 'B008'),
('B009', 'O009', '2024-01-09', 50, 500, 'B009'),
('B010', 'O010', '2024-01-10', 55, 550, 'B010');

-- Insert into orders
INSERT INTO `bookstore`.`orders` (`order_id`, `member_Id`, `producttype_id`, `order_quantity`, `order_date`, `bill_id`) VALUES
('O001', 'M001', 1, 3, '2024-08-01', 'B001'),
('O002', 'M002', 2, 5, '2024-08-02', 'B002'),
('O003', 'M003', 3, 2, '2024-08-03', 'B003'),
('O004', 'M004', 4, 10, '2024-08-04', 'B004'),
('O005', 'M005', 1, 7, '2024-08-05', 'B005'),
('O006', 'M006', 2, 1, '2024-08-06', 'B006'),
('O007', 'M007', 5, 4, '2024-08-07', 'B007'),
('O008', 'M008', 3, 8, '2024-08-08', 'B008'),
('O009', 'M009', 4, 6, '2024-08-09', 'B009'),
('O010', 'M010', 2, 9, '2024-08-10', 'B010');


