CREATE DATABASE Market

USE Market
CREATE TABLE Products(
Id int,
[Name] nvarchar(20),
Price int
)

ALTER TABLE Products 
ADD Brand nvarchar(25)

INSERT INTO Products 
VALUES('1','Iphone 12',1099,'Apple'),
('2','Iphone 12 Pro Max',1199,'Apple'),
('3','Iphone SE',599,'Apple')

INSERT INTO Products
VALUES('4','Samsung A20',299,'Samsung'),
('5','Samsung A51',450,'Samsung'),
('6','Samsung S21',1299,'Samsung'),
('7','Samsung Note 21',1399,'Samsung'),
('8','Redmi Note 5',550,'Xiaomi'),
('9','Poco X3 Pro',480,'Xiaomi'),
('10','Google Pixel 3',799,'Google'),
('11','Samsung GalaxyFold',2099,'Samsung'),
('12','OnePlus Nord N10',550,'OnePlus'),
('13','Xiaomi RedMi 10',399,'Xiaomi'),
('14','Samsung GalaxyFlip',1850,'Samsung'),
('15','Iphone 13 Pro Max',1299,'Apple')

SELECT * from Products 
WHERE price>(select AVG(price) from Products)

SELECT price from Products where price>600

SELECT	(Name + '' + Brand) 'ProductInfo',price,Id from Products 
Where LEN(Brand)>5


