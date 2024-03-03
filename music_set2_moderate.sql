

					-- Set 2 - Moderate

-- Q1. Write query to return the email, first name, last name, & Genre of all Rock Music listeners. 
-- Return your list ordered alphabetically by email starting with A.
select  first_name,last_name from customer left outer join invoice on customer.customer_id=invoice.customer_id
where invoice_id in 
(select invoice_id from invoice_line where track_id in
   (select track_id from track where genre_id in
       (select genre_id from genre where name='Rock'))) order by email,upper(right(email,1)) in ('A');

-- Q2: Let's invite the artists who have written the most rock music in our dataset. 
-- Write a query that returns the Artist name and total track count of the top 10 rock bands.

select * from artist LEFT OUTER JOIN ALBUM2 ON ARTIST.ARTIST_ID=ALBUM2.ARTIST_ID
LEFT OUTER JOIN TRACK ON ALBUM2.ALBUM_ID=TRACK.ALBUM_ID
LEFT OUTER JOIN GENRE ON track.genre_id=genre.genre_id WHERE GENRE.NAME='Rock' LIMIT 10;



-- Q3: Return all the track names that have a song length longer than the average song length. 
-- Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first.
select TRACK.NAME, TRACK.MILLISECONDS from track WHERE Milliseconds >(select avg(Milliseconds) as avg from track ORDER BY avg DESC);





