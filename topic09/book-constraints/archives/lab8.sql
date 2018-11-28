CREATE TABLE graduates
( student_id INT(6),
  last_name VARCHAR(15),
  first_name VARCHAR(15),
  credits INT(3) DEFAULT 0,
  graduation_date DATE 
);


CREATE TABLE shift
(
  code INT(6),
  description VARCHAR(100)
);

CREATE TABLE orders_ff
(
number INT(6),
date DATE,
time TIME 
);

CREATE TABLE frequent_diner_card
(
  id INT(6),
  fname VARCHAR(20),
  lname VARCHAR(30),
  addr VARCHAR(100),
  city VARCHAR(20),
  state VARCHAR(20),
  zip VARCHAR(20)
);

CREATE TABLE shift_assignment
(
  date DATE
);

CREATE TABLE order_line
(
  quantity INT(6)
);

CREATE TABLE food_item
(
  item_num INT(8),
  description VARCHAR(60),
  price FLOAT(6,2)
);
