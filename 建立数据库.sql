USE project;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    INDEX idx_customer_id (customer_id)
);

CREATE TABLE Account (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL, -- hash
    account_status VARCHAR(20) DEFAULT 'Active' CHECK (account_status IN ('Active', 'Inactive', 'Suspended')),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE,
    INDEX idx_username (username)
);


CREATE TABLE Dish (
    dish_id INT PRIMARY KEY AUTO_INCREMENT,
    dish_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) CHECK (price >= 0),
    size VARCHAR(50) CHECK (size IN ('Small', 'Medium', 'Large')), 
    taste_level INT CHECK (taste_level >= 1 AND taste_level <= 5), 
    INDEX idx_dish_id (dish_id)
);

CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    dish_id INT NOT NULL,
    stock_level INT NOT NULL DEFAULT 0 CHECK (stock_level >= 0),
    stock_status VARCHAR(20) DEFAULT 'In Stock' CHECK (stock_status IN ('In Stock', 'Low Stock', 'Out of Stock')),
    FOREIGN KEY (dish_id) REFERENCES Dish(dish_id) ON DELETE CASCADE
);

CREATE TABLE `Order` (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    dish_id INT NOT NULL,
    username VARCHAR(50) NOT NULL,
    order_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2) CHECK (total_amount >= 0),
    size VARCHAR(50) CHECK (size IN ('Small', 'Medium', 'Large')),
    price DECIMAL(10,2) CHECK (price >= 0),
    order_status VARCHAR(20) DEFAULT 'Pending' CHECK (order_status IN ('Pending', 'Confirmed', 'Cooking', 'Completed', 'Cancelled')),
    payment_status VARCHAR(20) DEFAULT 'Unpaid' CHECK (payment_status IN ('Unpaid', 'Paid', 'Refunded')),
    isTakeout BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (dish_id) REFERENCES Dish(dish_id) ON DELETE CASCADE,
    FOREIGN KEY (username) REFERENCES Account(username) ON DELETE CASCADE,
    INDEX idx_order_time (order_time)
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50) CHECK (role IN ('Chef', 'Waiter', 'Manager', 'Cleaner')),
    salary DECIMAL(10,2) CHECK (salary >= 0),
    leave_status VARCHAR(20) DEFAULT 'Active' CHECK (leave_status IN ('Active', 'On Leave')),
    INDEX idx_employee_id (employee_id)
);

CREATE TABLE Chef (
    chef_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    specialty VARCHAR(100), 
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE
);

CREATE TABLE Cook (
    cook_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    dish_id INT NOT NULL,
    item_id INT NOT NULL,
    count INT NOT NULL CHECK (count > 0),
    method VARCHAR(100),
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id) ON DELETE CASCADE,
    FOREIGN KEY (dish_id) REFERENCES Dish(dish_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES SupplyChain(item_id) ON DELETE CASCADE,
    UNIQUE KEY unique_cook_entry (order_id, dish_id, item_id) 
);

CREATE TABLE SupplyChain (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL DEFAULT 0 CHECK (quantity >= 0),
    INDEX idx_item_id (item_id)
);

CREATE TABLE SupplyRecord (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT NOT NULL,
    unit_price DECIMAL(10,2) CHECK (unit_price >= 0),
    count INT NOT NULL CHECK (count > 0),
    supply_date DATE NOT NULL,
    supplier VARCHAR(100),
    cost DECIMAL(10,2) CHECK (cost >= 0), 
    FOREIGN KEY (item_id) REFERENCES SupplyChain(item_id) ON DELETE CASCADE,
    INDEX idx_supply_date (supply_date)
);

CREATE TABLE LeaveRecord (
    leave_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    reason TEXT,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE,
    CHECK (end_date >= start_date)
);
CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_id INT NOT NULL,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comments TEXT,
    date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id) ON DELETE CASCADE,
    INDEX idx_feedback_date (date)
);

CREATE TABLE DailyRevenue (
    revenue_id INT PRIMARY KEY AUTO_INCREMENT,
    date DATE NOT NULL UNIQUE,
    total_revenue DECIMAL(10,2) NOT NULL CHECK (total_revenue >= 0),
    total_orders INT NOT NULL CHECK (total_orders >= 0),
    total_customers INT NOT NULL CHECK (total_customers >= 0),
    INDEX idx_date (date)
);