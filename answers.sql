-- Question 1
-- we will create a separate table for order products and orders and link them using a foreign key as shown below
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);


CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(255),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);



-- QUESTION 2
-- Here i will create a separate table for Customer details and relating it via OrderID
CREATE TABLE Customers AS
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;
-- Next we will drop the customerName column and link the tables via a foreign key
ALTER TABLE OrderDetails DROP COLUMN CustomerName;
ALTER TABLE OrderDetails ADD FOREIGN KEY (OrderID) REFERENCES Customers(OrderID);
