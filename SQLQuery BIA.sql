--Melihat seluruh isi tabel
select*
from [Tugas BIA].[dbo].[Penjualan]

--Pergerakan Total Keuntungan perhari
select sum(Profit) as Profit_Harian, Sales_Date
from [Tugas BIA].[dbo].[Penjualan]
group by Sales_Date

--Kuantitas Produk dengan Penjualan Terbanyak
select count(Product_Name) as Jumlah, Product_Name 
from [Tugas BIA].[dbo].[Penjualan]
group by Product_Name
order by Jumlah desc

--Produk dengan total keuntungan terbanyak
select sum(Profit) as Profit_Product, Product_Name
from [Tugas BIA].[dbo].[Penjualan]
group by Product_Name
order by Profit_Product desc


--Pergerakan Kuantitas Penjualan setiap produk
select count(Product_Name) as Kuantitas_Americano, Sales_Date
from [Tugas BIA].[dbo].[Penjualan]
where Product_Name = 'Americano'
Group by Sales_Date 

select count(Product_Name) as Kuantitas_Creamy, Sales_Date
from [Tugas BIA].[dbo].[Penjualan]
where Product_Name = 'Creamy'
Group by Sales_Date 

select count(Product_Name) as Kuantitas_Strong, Sales_Date
from [Tugas BIA].[dbo].[Penjualan]
where Product_Name = 'Strong'
Group by Sales_Date 

select count(Product_Name) as Kuantitas_MatchaLatte, Sales_Date
from [Tugas BIA].[dbo].[Penjualan]
where Product_Name = 'Matcha Latte'
Group by Sales_Date 

--Pergerakan Kuantitas Penjualan Produk 
select count(Product_Name) as Kuantitas, Sales_Date
from [Tugas BIA].[dbo].[Penjualan]
group by Sales_Date

--Rataan Kuantitas Produk Terjual
WITH DailySales AS (
    SELECT COUNT(Product_Name) AS DailyCount, Sales_Date
    FROM [Tugas BIA].[dbo].[Penjualan]
    WHERE Product_Name = 'Americano'
    GROUP BY Sales_Date
)
SELECT AVG(DailyCount) AS AverageDailySales
FROM DailySales;
---
WITH DailySales AS (
    SELECT COUNT(Product_Name) AS DailyCount, Sales_Date
    FROM [Tugas BIA].[dbo].[Penjualan]
    WHERE Product_Name = 'Creamy'
    GROUP BY Sales_Date
)
SELECT AVG(DailyCount) AS AverageDailySales
FROM DailySales;
---
WITH DailySales AS (
    SELECT COUNT(Product_Name) AS DailyCount, Sales_Date
    FROM [Tugas BIA].[dbo].[Penjualan]
    WHERE Product_Name = 'Strong'
    GROUP BY Sales_Date
)
SELECT AVG(DailyCount) AS AverageDailySales
FROM DailySales;

---
WITH DailySales AS (
    SELECT COUNT(Product_Name) AS DailyCount, Sales_Date
    FROM [Tugas BIA].[dbo].[Penjualan]
    WHERE Product_Name = 'Matcha Latte'
    GROUP BY Sales_Date
)
SELECT AVG(DailyCount) AS AverageDailySales
FROM DailySales;







