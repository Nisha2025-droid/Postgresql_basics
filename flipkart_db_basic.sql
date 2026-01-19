create table flipkart_db(
product_id serial primary key,
name varchar(50) not null,
sku_code char(8) unique,
max_price bigint,
stock_quantity bigint check(stock_quantity>=0),
isavailable boolean default true,
category text not null,
Added_on DATE default current_date,
Last_update timestamp default now()
);
select * from flipkart_db
insert into flipkart_db (name,sku_code,category) values('nisha','abcdefhi','kuchbhi');
INSERT INTO flipkart_db (name, sku_code, max_price , stock_quantity, isavailable, category)
VALUES
('Wireless Mouse', 'WM123456', 699.99, 50, TRUE, 'Electronics'),
('Bluetooth Speaker', 'BS234567', 1499.00, 30, TRUE, 'Electronics'),
('Laptop Stand', 'LS345678', 799.50, 20, TRUE, 'Accessories'),
('USB-C Hub', 'UC456789', 1299.99, 15, TRUE, 'Accessories'),
('Notebook', 'NB567890', 99.99, 100, TRUE, 'Stationery'),
('Pen Set', 'PS678901', 199.00, 200, TRUE, 'Stationery'),
('Coffee Mug', 'CM789012', 299.00, 75, TRUE, 'Home & Kitchen'),
('LED Desk Lamp', 'DL890123', 899.00, 40, TRUE, 'Home & Kitchen'),
('Yoga Mat', 'YM901234', 499.00, 25, TRUE, 'Fitness'),
('Water Bottle', 'WB012345', 349.00, 60, TRUE, 'Fitness');
select name,max_price from flipkart_db;
select * from flipkart_db where category='Electronics';
select category from flipkart_db group by category;
select * from flipkart_db order by max_price;
select * from flipkart_db limit 3;
select category,count(*) from flipkart_db group by category having count(*)>1;
select distinct category from flipkart_db;
select name,max_price from flipkart_db where max_price = (select min(max_price) from flipkart_db)
select avg(max_price) from flipkart_db where category in ('Fitness','Kitchen');
select name,stock_quantity from flipkart_db where
isavailable = true and stock_quantity>50 and max_price!=299;
//string functions
select upper(name) from flipkart_db;
select length(sku_code) from flipkart_db;
select lower(category) from flipkart_db;
select substring('brother in arms',1,7);
select name,right(sku_code,2) from flipkart_db;
select concat_ws(' ',name,category,sku_code) as product_with_category from flipkart_db;


