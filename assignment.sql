CREATE DATABASE user_db;

CREATE TABLE users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE products(
	name VARCHAR(100)NOT NULL,
    description TEXT,
    price DECIMAL(10,2)NOT NULL,
	stock_quantity INT NOT NULL CHECK (stock_quantity >= 0),
    category VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('Pending', 'Shipped', 'Delivered', 'Canceled') DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);
