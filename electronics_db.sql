/*Create database*/

Create database electronics_db

/*Customer*/

CREATE TABLE Customer
(
Customer_ID           INT NOT NULL,
Cust_Firstname        VARCHAR(255),
Cust_Lastname         VARCHAR(255),
Cust_email            VARCHAR(255),
Cust_phn              VARCHAR(255),
Cust_billingaddress   VARCHAR(255),
Cust_shippingaddress  VARCHAR(255),
Cust_City             VARCHAR(255),
Cust_State            VARCHAR(255),
Cust_Country          VARCHAR(255),
Postal_code           INT,
Credits               INT,
Lifetime_orderval     FLOAT,
PRIMARY KEY (Customer_ID),
)

INSERT INTO Customer
(Customer_ID, Cust_Firstname, Cust_Lastname, Cust_email,Cust_Phn, Cust_billingaddress, Cust_shippingaddress, Cust_City, Cust_State, Cust_Country, Postal_code, Credits,Lifetime_orderval)
VALUES
(01,'Kasha','Todd','kasha.todd@gmail.com','646-720-2170','910 Vine Street','910 Vine Street','Campbell','CA','USA','95008','1','1000')

INSERT INTO Customer
(Customer_ID, Cust_Firstname, Cust_Lastname, Cust_email,Cust_Phn, Cust_billingaddress, Cust_shippingaddress, Cust_City, Cust_State, Cust_Country, Postal_code, Credits,Lifetime_orderval)
VALUES
(02,'John','Doe','john.doe@gmail.com','870-732-7448','9273 Thorne Ave','9273 Thorne Ave','Orchard Park','NY','USA','14127','3','3000')

INSERT INTO Customer
(Customer_ID, Cust_Firstname, Cust_Lastname, Cust_email,Cust_Phn, Cust_billingaddress, Cust_shippingaddress, Cust_City, Cust_State, Cust_Country, Postal_code, Credits,Lifetime_orderval)
VALUES
(03,'Sarah','Daniels','sarah.daniels@yahoo.com','417-253-2217','769C Honey Creek St','769C Honey Creek St','Redondo Beach','CA','USA','90278','6','6000')

INSERT INTO Customer
(Customer_ID, Cust_Firstname, Cust_Lastname, Cust_email,Cust_Phn, Cust_billingaddress, Cust_shippingaddress, Cust_City, Cust_State, Cust_Country, Postal_code, Credits,Lifetime_orderval)
VALUES
(04,'Alex','Parker','alex.parker@gmail.com','210-785-4848','3815 Williams Mine Road','3815 Williams Mine Road','Maplewood','New Jersey','USA','07040','7','7000')

INSERT INTO Customer
(Customer_ID, Cust_Firstname, Cust_Lastname, Cust_email,Cust_Phn, Cust_billingaddress, Cust_shippingaddress, Cust_City, Cust_State, Cust_Country, Postal_code, Credits,Lifetime_orderval)
VALUES
(05,'Tony','Stark','tony.stark@gmail.com','620-892-9654','2395 Jerome Avenue','2395 Jerome Avenue','Edinburg','Texas','USA','78539','9','9000')

INSERT INTO Customer
(Customer_ID, Cust_Firstname, Cust_Lastname, Cust_email,Cust_Phn, Cust_billingaddress, Cust_shippingaddress, Cust_City, Cust_State, Cust_Country, Postal_code, Credits,Lifetime_orderval)
VALUES
(06,'Celia','Parker','celia.parker@gmail.com',' 210-785-4848','427 Don Jackson Lane','427 Don Jackson Lane',' Detroit','Michigan','USA','48219','8','8000')

INSERT INTO Customer
(Customer_ID, Cust_Firstname, Cust_Lastname, Cust_email,Cust_Phn, Cust_billingaddress, Cust_shippingaddress, Cust_City, Cust_State, Cust_Country, Postal_code, Credits,Lifetime_orderval)
VALUES
(07,'Natasha','Sethi','natasha.sethi@gmail.com','9876241090','12/216 Mahal Samuel Street','12/216 Mahal Samuel Street','Mumbai','Maharashtra','India','41109','5','5000')

INSERT INTO Customer
(Customer_ID, Cust_Firstname, Cust_Lastname, Cust_email,Cust_Phn, Cust_billingaddress, Cust_shippingaddress, Cust_City, Cust_State, Cust_Country, Postal_code, Credits,Lifetime_orderval)
VALUES
(08,'Aditya','Birla','aditya.birla@gmail.com','8820196583','398 Spring Building Nsr Road, ','398 Spring Building Nsr Road ','Ranchi','Jharkhand','India','41152','6','6000')

INSERT INTO Customer
(Customer_ID, Cust_Firstname, Cust_Lastname, Cust_email,Cust_Phn, Cust_billingaddress, Cust_shippingaddress, Cust_City, Cust_State, Cust_Country, Postal_code, Credits,Lifetime_orderval)
VALUES
(09,'Avanti','Sharma','avanti.sharma@gmail.com','7598001249','201 City View Building','89 D Kamla Nagar','Delhi','Delhi','India','11100','4','4000')

INSERT INTO Customer
(Customer_ID, Cust_Firstname, Cust_Lastname, Cust_email, Cust_Phn, Cust_billingaddress, Cust_shippingaddress, Cust_City, Cust_State, Cust_Country, Postal_code, Credits,Lifetime_orderval)
VALUES
(10,'Ben','Miller','ben.miller@gmail.com','847-525-4886','476 Chestnut Ave','476 Chestnut Ave','Monroe','NY','USA','10950','2','2000');


SELECT * FROM Customer;

/* ORDERS*/
CREATE TABLE Orders (
    Order_ID int NOT NULL,
	OrderDate DATE NOT NULL,
	Shipped_Date DATE NOT NULL,
	Cust_shippingaddress varchar(50) NOT NULL,
	Total_Amount float NOT NULL,
	Offer_ID varchar(255) NOT NULL,
	Discount float,
	PRIMARY KEY (Order_ID),
	Customer_ID int foreign key references Customer(Customer_ID)
	);


INSERT INTO Orders(Order_ID, Customer_ID, OrderDate,Shipped_Date,Cust_shippingaddress,Total_Amount, Offer_ID, Discount)
VALUES ('001', '01', '2021-01-01','2021-01-03','910 Vine Street', '200', 'axs1','5.0');

INSERT INTO Orders(Order_ID, Customer_ID, OrderDate,Shipped_Date,Cust_shippingaddress,Total_Amount, Offer_ID, Discount)
VALUES ('002', '02', '2021-01-02','2021-01-04','Orchard Park', '760', 'axs2','10.0');

INSERT INTO Orders(Order_ID, Customer_ID, OrderDate,Shipped_Date,Cust_shippingaddress,Total_Amount, Offer_ID, Discount)
VALUES ('003', '03', '2021-01-02','2021-01-04','769C Honey Creek St', '1200','axs2', '10.0');

INSERT INTO Orders(Order_ID, Customer_ID, OrderDate,Shipped_Date,Cust_shippingaddress,Total_Amount, Offer_ID, Discount)
VALUES ('004', '04', '2021-01-03','2021-01-05','3815 Williams Mine Road', '1960','axs3','15.0');

INSERT INTO Orders(Order_ID, Customer_ID, OrderDate,Shipped_Date,Cust_shippingaddress,Total_Amount, Offer_ID, Discount)
VALUES ('005', '05', '2021-01-14','2021-01-16','2395 Jerome Avenue', '760','axs3','15.0');

INSERT INTO Orders(Order_ID, Customer_ID, OrderDate,Shipped_Date,Cust_shippingaddress,Total_Amount, Offer_ID, Discount)
VALUES ('006', '06', '2021-01-18','2021-01-20','427 Don Jackson Lane', '670','axs3','15.0');

INSERT INTO Orders(Order_ID, Customer_ID, OrderDate,Shipped_Date,Cust_shippingaddress,Total_Amount, Offer_ID, Discount)
VALUES ('007', '07', '2021-01-08','2021-01-10','12/216 Mahal Samuel Street', '890','axs2','10.0');

INSERT INTO Orders(Order_ID, Customer_ID, OrderDate,Shipped_Date,Cust_shippingaddress,Total_Amount, Offer_ID, Discount)
VALUES ('008', '08', '2021-01-12','2021-01-14','398 Spring Building Nsr Road', '960','axs2','10.0');

INSERT INTO Orders(Order_ID, Customer_ID, OrderDate,Shipped_Date,Cust_shippingaddress,Total_Amount, Offer_ID, Discount)
VALUES ('009', '09', '2021-01-14','2021-01-16','89 D Kamla Nagar', '140','axs2','10.0');

INSERT INTO Orders(Order_ID, Customer_ID, OrderDate,Shipped_Date,Cust_shippingaddress,Total_Amount, Offer_ID, Discount)
VALUES ('010', '10', '2021-01-24','2021-01-26','476 Chestnut Ave', '230','axs1', '5.0');

SELECT *
FROM Orders;
DROP Table Orders;

/*Product_category*/

CREATE TABLE Product_category(
    Category_ID int NOT NULL,
	Category_name varchar(255),
	Category_des varchar(255),
	PRIMARY KEY (Category_ID),
	);

INSERT INTO Product_category
(Category_ID,Category_name,Category_des)
VALUES
(01,'TV & Video', 'Latest Television with OTT features that will enhance the entertainment experience for you. Variety of TV brands along with their accessories are includes in this category')

INSERT INTO Product_category
(Category_ID,Category_name,Category_des)
VALUES
(02,'Cell Phones & Accessories', 'Covers all types of cellphones like Iphone, Onplus, Samsung, etc along with their accessories')

INSERT INTO Product_category
(Category_ID,Category_name,Category_des)
VALUES
(03,'Computers & Accessories', 'Covers all types of computers like Mac, Windows surface, Dell, Lenovo, etc along with their accessories')

INSERT INTO Product_category
(Category_ID,Category_name,Category_des)
VALUES
(04,'Home Audio & Theater', 'Covers all types of home theaters and bluetooth speakers for better entertainment experience')

INSERT INTO Product_category
(Category_ID,Category_name,Category_des)
VALUES
(05,'Printers and Accessories', 'Covers all types of office printers and their accessories')

SELECT * 
FROM Product_category;

/*Product*/
CREATE TABLE Product
(
Product_ID           INT NOT NULL,
Product_name         VARCHAR(255),
Product_price        FLOAT,
Product_des          VARCHAR(255),
PRIMARY KEY (Product_ID),
Category_ID INT FOREIGN KEY REFERENCES Product_category(Category_ID) ON DELETE CASCADE
);


INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('100','HP Ink Tank 315 Colour Printer','180.00','Wireless Touchscreen printer, Auto Document feeder,Scan,works with Alexa','05');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('200','JS Nova Printer Stand ','20.00','Printer cart with 2 tier wood storage shelves,brown color and weigh 8.2 pounds','05');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('300','Amazon Fire TV 65 inch','400.00','Omni series 4K UHD smart TV with dolby Vision, hands free with Alexa','01');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('400','Roku Smart LED TV','230.00','TCL 40-inch 1080p Smart LED roku TV-model 40S325,black color','01');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('500','Universal Remote Control','10.00','Remote for Samsung Smart TV LED,QLED TVs, with Netflix, Prime Video buttons','01');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('600','iphone 13 ','730.00','iphone 13 64GB Blue color','02');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('700','One plus 8','600.00','OnePlus 8 Glacial Green 8GB RAM+128GB Storage','02');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('800','Cordking iphone13 case','15.00','Silicone ultra slim shockproof protective phone case, 6.1 inch, Midnight Green color','02');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('900','Apple MacBook Pro','1200.00','Apple MacBook Pro (13.3-inch/33.78 cm, Apple M1 chip with 8‑core CPU and 8‑core GPU, 8GB RAM, 256GB SSD) - Silver','03');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('1000','Dell 15 laptop','1500.00','Ryzen 5-5600H Gaming Laptop, 8GB DDR4, 512GB SSD, Win 10 + MS Office, NVIDIA RTX 3050 4GB, 15.6" (39.61 cms) FHD, Phantom Grey','03');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('1100','Matein Travel Laptop Backpack','30.00','Business anti theft slim durable laptop backpack with USB charging port and water resistant','03');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('1200','Rockville channel Home Theater','180.00','ROCKVILLE HTS56 1000w 5.1 channel Home Theater system','04');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('1300','Bose TV Speaker','280.00','Soundbar for TV with bluetooth and HDMI-ARC connectivity, black, includes remote control','04');

INSERT INTO Product
(Product_ID,Product_name,Product_price,Product_des,Category_ID)
VALUES
('1400','Pro universal Folio case','20.00','Case for 9-10 inch tablet,leather and black in color','02');


select * from Product


/*Order_details*/

CREATE TABLE Order_details (
    Order_ID int NOT NULL,
	Quantity int NOT NULL,
	Amount float NOT NULL,
	Total_Amount float NOT NULL,
    Product_ID INT FOREIGN KEY REFERENCES Product(Product_ID) ON DELETE CASCADE
	);



INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('001','100','1','200','200')

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('002','600','1','730','730' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('002','800','2','15','30' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('003','900','1','1200','1200' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('004','1000','1','1500','1500' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('004','1100','1','30','30' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('004','100','1','180','180')

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('004','200','1','20','20' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('004','1300','1','260','260')

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('005','600','1','730','730' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('005','800','2','15','30' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('006','700','1','600','600')

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('006','1400','2','20','40' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('006','1100','1','30','30' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('007','300','1','400','400' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('007','400','1','230','230' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('007','1300','1','260','260' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('008','600','1','730','730' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('008','400','1','230','230' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('009','1400','5','20','100' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('009','1100','1','30','30' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('009','500','1','10','10' )

INSERT INTO Order_details 
(Order_ID,Product_ID,Quantity,Amount,Total_Amount)
VALUES
('010','400','1','230','230')

SELECT*
FROM Order_details;


/* Suppliers */
   CREATE TABLE Suppliers (
    Supplier_ID int,
	supplier_name varchar(40),
	Supplier_address varchar(100),
	Supplier_Amount float,
	PRIMARY KEY (Supplier_ID), 
    Category_ID int FOREIGN KEY REFERENCES Product_category (Category_ID)
    );

INSERT INTO Suppliers(Supplier_ID, Category_ID, supplier_name, supplier_address,Supplier_Amount)
VALUES ('001', '05', 'Jeffrey Lebowski',  'Silver Lake Los Angeles 75626','2000.00');

INSERT INTO Suppliers(Supplier_ID, Category_ID, supplier_name, supplier_address,Supplier_Amount)
VALUES ('002', '02', 'Nicholas McDunnough',  'Scottsdale Arizona 76566','2000.00');

INSERT INTO Suppliers(Supplier_ID, Category_ID, supplier_name, supplier_address,Supplier_Amount)
VALUES ('003', '04', 'Tyler Durden',  'Milford Drive Delaware 75248','2000.00');

INSERT INTO Suppliers(Supplier_ID, Category_ID, supplier_name, supplier_address,Supplier_Amount)
VALUES ('004', '01', 'Luke Skywalker', 'Brooklyn New York 76651','2000.00');

INSERT INTO Suppliers(Supplier_ID, Category_ID, supplier_name, supplier_address,Supplier_Amount)
VALUES ('005', '03', 'John McClane',  'Nakatomi Plaza Los Angeles 79015','2000.00' );

select * from Suppliers


/*offers*/

CREATE TABLE Offers (
    Offer_ID varchar(255),
	Levels varchar(255),
    discount float,
    delivery varchar(255),
    PRIMARY KEY (Offer_ID)
    );

SELECT * FROM Offers

INSERT INTO Offers(Offer_ID, levels, discount,delivery)
VALUES ('axs1','level 1','5.0','Paid');

INSERT INTO Offers(Offer_ID, levels, discount,delivery)
VALUES ('axs2','level 2','10.0','Free');

INSERT INTO Offers(Offer_ID, levels, discount,delivery)
VALUES ('axs3','level 3','15.0','Free');


/* Queris*/

/*Business Problem 1: Understanding the current revenue and setting the target for coming months*/
CREATE VIEW Revenue as 
select DISTINCT
  (
    SELECT 
      SUM(Total_Amount) as val1 
    from 
      Orders
  ) - (
    SELECT 
      SUM(Supplier_Amount) as val2 
    from 
      Suppliers
  ) as Revenue
  FROM Suppliers;

SELECT *
FROM Revenue;

SELECT SUM(Revenue) as Current_month_profit,
CASE 
    WHEN Revenue < 0  THEN 'Sell more and puchase less'
    WHEN Revenue < 2000 AND Revenue > 0  THEN 'Purchase less and sales target for next month should be'
    ELSE 'Purchase less and sales target for next month should be'
END AS current_status,
CASE
    WHEN Revenue < 0  THEN Revenue*(-2)
    WHEN Revenue < 2000 AND Revenue > 0  THEN Revenue*(2)
    ELSE Revenue*(1.5)
END AS Targets
FROM Revenue
GROUP BY Revenue;

/* Business Problem 2 A: Segmenting customers*/
/* Segmenting customers based on lifetime order value*/
SELECT Lifetime_orderval,
CASE
    WHEN Lifetime_orderval < 3000 THEN 'level 1'
    WHEN Lifetime_orderval between 3000 and 6000 THEN 'level 2'
    ELSE 'level 3'
END AS Levels
FROM Customer;

/*Calculating the discounts*/  
CREATE VIEW Final_Amount as 
SELECT Total_Amount,
CASE
    WHEN Offer_ID='axs1' THEN Total_Amount*(100-5)/(100)
    WHEN Offer_ID='axs2' THEN Total_Amount*(100-10)/(100)
    ELSE Total_Amount*(100-15)/(100)
END AS Final_Amount
FROM Orders;

SELECT *
FROM Final_Amount;

/*Business Problem 2B: Recommendation system*/

SELECT distinct o.order_id, o.product_id,p.product_name as Recommendation
FROM order_details o 
INNER JOIN Product p
on o.product_id=p.product_id
where order_id=2
AND o.product_id NOT IN ( select product_id
from order_details 
where order_id=8 );


















