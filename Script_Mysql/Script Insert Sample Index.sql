-- Add index for 'book_name' in 'books' table
CREATE INDEX idx_book_name ON bookstore.books(book_name);

-- Add index for 'booktype_name' in 'bookstype' table
CREATE INDEX idx_booktype_name ON bookstore.bookstype(booktype_name);

-- Add index for 'boxset_name' in 'boxsets' table
CREATE INDEX idx_boxset_name ON bookstore.boxsets(boxset_name);

-- Add index for 'branch_name' in 'branch' table
CREATE INDEX idx_branch_name ON bookstore.branch(branch_name);

-- Add index for 'employee_responsibility' in 'employees' table
CREATE INDEX idx_employee_responsibility ON bookstore.employees(employee_responsibility);

-- Add index for 'employee_suppervisor' in 'employees' table
-- CREATE INDEX idx_employee_suppervisor ON bookstore.employees(employee_suppervisor);


CREATE INDEX idx_member_IDCard ON bookstore.Member(member_IDCard);

-- Add index for 'producttype_name' in 'producttype' table
CREATE INDEX idx_producttype_name ON bookstore.producttype(producttype_name);

-- Add index for 'promotion_name' in 'promotions' table
CREATE INDEX idx_promotion_name ON bookstore.promotions(promotion_name);

-- Add index for 'publisher_name' in 'publishers' table
CREATE INDEX idx_publisher_name ON bookstore.publishers(publisher_name);

-- Add index for 'toy_name' in 'toys' table
CREATE INDEX idx_toy_name ON bookstore.toys(toy_name);
