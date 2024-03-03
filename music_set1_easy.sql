
						-- Set 1 - Easy
                        
-- Q1  : Who is the senior most employee based on job title? 
select * from employee order by levels desc limit 1;


-- Q2: Which countries have the most Invoices?
select distinct(billing_country),count(billing_country) from invoice group by billing_country ;


-- Q3: What are top 3 values of total invoice? 
select * from invoice order by total desc limit 3;


-- Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
select city,sum(support_rep_id) as total from customer group by city order by total desc;

-- Write a query that returns one city that has the highest sum of invoice totals. 
select billing_city,sum(total) as one from invoice group by billing_city order by one desc limit 1;

-- Return both the city name & sum of all invoice totals 
select billing_city,sum(total) as Sum_Of_Invoice from invoice group by billing_city order by Sum_Of_Invoice desc;


-- Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer. 
-- Write a query that returns the person who has spent the most money.
select * from customer left outer join invoice on customer.customer_id=invoice.customer_id  order by total desc limit 1 ;
