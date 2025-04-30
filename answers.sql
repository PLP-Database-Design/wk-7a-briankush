-- Question 1
-- we will create a separate table for order products and orders and link them using a foreign key as shown below
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);


CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(255),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);



-- QUESTION 2
-- Here i will create a  table for Customer details and relating it via OrderID and Product Id
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
