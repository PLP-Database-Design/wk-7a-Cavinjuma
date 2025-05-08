--Q1. 

CREATE TABLE ProductDetail1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(50)
);

INSERT INTO ProductDetail1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail1NF VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail1NF VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail1NF VALUES (103, 'Emily Clark', 'Phone');



-- Q2.
--Creating 2 tables; orders and orderItems

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO Orders VALUES (101, 'John Doe');
INSERT INTO Orders VALUES (102, 'Jane Smith');
INSERT INTO Orders VALUES (103, 'Emily Clark');

--OrderItems table

CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderItems VALUES (101, 'Laptop', 2);
INSERT INTO OrderItems VALUES (101, 'Mouse', 1);
INSERT INTO OrderItems VALUES (102, 'Tablet', 3);
INSERT INTO OrderItems VALUES (102, 'Keyboard', 1);
INSERT INTO OrderItems VALUES (102, 'Mouse', 2);
INSERT INTO OrderItems VALUES (103, 'Phone', 1);
