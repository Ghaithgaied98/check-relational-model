CREATE TABLE Product
(
    product_id VARCHAR2(20) PRIMARY KEY,
    product_Name VARCHAR2(20) NOT NULL,
    price NUMBER CHECK (price>0)
)

CREATE TABLE Customers
(
    customer_id VARCHAR2(20) PRIMARY KEY,
    customer_Name VARCHAR2(20) NOT NULL,
    customer_Tel NUMBER
)


CREATE TABLE Orders
(
    product_id VARCHAR2(20) FOREIGN KEY REFERENCES Products ,
    customer_id VARCHAR2(20) FOREIGN KEY REFERENCES Customers ,
    quantity NUMBER ,
    total_Amount Number,

)