create table raw_product(
	product_id int,
	product_name varchar(max),
	product_state varchar(max),
	selling_price int,
	product_cost int,
	quantity int,
	customer_name varchar(max),
	order_date date,
	city varchar(max),
	state varchar(max)
)

select * from dbo.raw_product


--truncate table raw_product


BULK INSERT raw_product
FROM 'S:\8_Intern\airbyte\sales.csv'
WITH (FORMAT = 'CSV'
 , FIRSTROW = 2
 , FIELDTERMINATOR = ','
 , ROWTERMINATOR = '0x0a');


 -- we are skipping this commented one as its already made in previous one

 /*
	USE master
GO
CREATE LOGIN [etl] WITH PASSWORD=N'demopass', DEFAULT_DATABASE=[AdventureWorksDW2019], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
 */

use Airbyte_ELT;
go
create user etl for login etl;
go
use Airbyte_ELT;
go
alter role db_datareader add member etl
go
use master 
grant connect sql to etl