DROP TABLE graduates;
CREATE TABLE graduates
( student_id INT(6) PRIMARY KEY AUTO_INCREMENT,
  last_name VARCHAR(15),
  first_name VARCHAR(15),
  credits INT(3) DEFAULT 0,
  graduation_date DATE
);

DROP TABLE shift;
CREATE TABLE shift
(
  code INT(6) PRIMARY KEY AUTO_INCREMENT,
  description VARCHAR(100)
);

DROP TABLE orders_ff;
CREATE TABLE orders_ff
(
number INT(6) PRIMARY KEY AUTO_INCREMENT,
date DATE,
time TIME,
freq_diner_num INT(6),
FOREIGN KEY fk_dinercard(freq_diner_num) REFERENCES frequent_diner_card(id)
ON UPDATE CASCADE
ON DELETE SET NULL
);

DROP TABLE frequent_diner_card;
CREATE TABLE frequent_diner_card
(
  id INT(6) PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(20),
  lname VARCHAR(30),
  addr VARCHAR(100),
  city VARCHAR(20),
  state VARCHAR(20),
  zip VARCHAR(20)
);

DROP TABLE shift_assignment;
CREATE TABLE shift_assignment
(
  date DATE
);

DROP TABLE order_line;
CREATE TABLE order_line
(
    quantity INT(6)
);

DROP TABLE food_item;
CREATE TABLE food_item
(
  item_num INT(8) PRIMARY KEY AUTO_INCREMENT,
  description VARCHAR(60),
  price FLOAT(6,2)
);

DROP TABLE employees_b;
CREATE TABLE employees_b
(
  employeeNumber INT(6) PRIMARY KEY AUTO_INCREMENT,
  lastName VARCHAR(20),
  firstName VARCHAR(20),
  extension INT(4),
  email VARCHAR(35),
  officeCode INT(4),
  managed_by INT(6),
  FOREIGN KEY FK_mgr_num(managed_by)
  REFERENCES employees_b(employeeNumber)
  ON DELETE SET NULL
  ON UPDATE CASCADE
  );
