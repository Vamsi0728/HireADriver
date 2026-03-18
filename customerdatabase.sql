CREATE TABLE customers (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(15),
  password VARCHAR(100) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email (email)
); 
INSERT INTO customers (name, email, phone, password) VALUES
('Vamsi', 'vamsi@gmail.com', '9876543210', 'pass123'),
('Ravi Kumar', 'ravi@gmail.com', '9123456780', 'ravi123'),
('Suresh Reddy', 'suresh@gmail.com', '9012345678', 'suresh123'),
('Anil Kumar', 'anil@gmail.com', '9988776655', 'anil123'),
('Kiran', 'kiran@gmail.com', '9090909090', 'kiran123'),
('Mahesh', 'mahesh@gmail.com', '8888888888', 'mahesh123'),
('Prasad', 'prasad@gmail.com', '7777777777', 'prasad123'),
('Naresh', 'naresh@gmail.com', '9666666666', 'naresh123'),
('Ramesh', 'ramesh@gmail.com', '9555555555', 'ramesh123'),
('Sai', 'sai@gmail.com', '9444444444', 'sai123');
SELECT * FROM customers;