USE db_DDD 
GO

CREATE TABLE tbCustomer
(
	CustomerID CHAR(5) NOT NULL,
	CustomerName VARCHAR(30) NOT NULL,
	StreetName VARCHAR(50) NOT NULL,
	PostCode VARCHAR(8) NOT NULL,
	PRIMARY KEY (customerID)
)
GO

SELECT * FROM dbo.tbCustomer
GO

CREATE TABLE tbSupplier
(
	-- identity cho số tăng tự động từ số nào và mỗi lần tăng bao nhiêu
	SupplierID INT IDENTITY(100,10) NOT NULL PRIMARY KEY,
	SupplierName NVARCHAR(30) NOT NULL
)
GO	

SELECT	* FROM	dbo.tbSupplier
GO	

INSERT	dbo.tbSupplier
(SupplierName)
VALUES
(
	N'Bảo Thy' -- SupplierName - varchar(30)
),
(
	N'Đông Nhi' -- SupplierName - varchar(30)
),
(
	N'Khởi My' -- SupplierName - varchar(30)
)
GO	

CREATE TABLE tbItem
(
	ItemID INT IDENTITY(1,5) PRIMARY KEY NOT NULL,
	ItemName NVARCHAR(30) NOT NULL,
	Price INT CHECK(Price>0 AND	Price<1000) NOT NULL,
	SupplierID INT ,
	FOREIGN KEY (SupplierID) REFERENCES dbo.tbSupplier
)
GO	

SELECT * FROM dbo.tbItem
GO	

INSERT dbo.tbItem
(
    ItemName,
    Price,
    SupplierID
)
VALUES
(   N'Lobster', -- ItemName - nvarchar(30)
    990,   -- Price - int
    100    -- SupplierID - int
),
(   N'King Crab Alaska', -- ItemName - nvarchar(30)
    950,   -- Price - int
    100    -- SupplierID - int
),
(   N'Kobe Beef', -- ItemName - nvarchar(30)
    800,   -- Price - int
    110    -- SupplierID - int
),
(   N'Chicken', -- ItemName - nvarchar(30)
    300,   -- Price - int
    110    -- SupplierID - int
),
(   N'Bag', -- ItemName - nvarchar(30)
    600,   -- Price - int
    120    -- SupplierID - int
),
(   N'Dress', -- ItemName - nvarchar(30)
    800,   -- Price - int
    120    -- SupplierID - int
),
(   N'Sneaker', -- ItemName - nvarchar(30)
    750,   -- Price - int
    100    -- SupplierID - int
)
GO	

ALTER	TABLE	dbo.tbItem
	    ADD Discount int NOT NULL DEFAULT 10 CHECK(discount BETWEEN 0 AND 100)

GO	

SELECT * FROM dbo.tbItem
GO	

--
SELECT tbItem.ItemID,tbItem.ItemName,tbItem.Price,Discount,FinalPrice=tbItem.Price*(100-Discount)/100.0
FROM dbo.tbItem
GO

ALTER TABLE dbo.tbItem
		ADD	FinalPrice as tbItem.Price*(100-Discount)/100.0;
GO	