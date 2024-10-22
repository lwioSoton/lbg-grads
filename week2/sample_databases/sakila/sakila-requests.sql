USE sakila;

#Q1, 2, 3
SELECT * 
FROM actor;

#Q2
SELECT * 
FROM actor
HAVING first_name = "John";

#Q3
SELECT * 
FROM actor
HAVING last_name = "Neeson";

#Q4
SELECT * 
FROM actor
HAVING (actor_id % 10) = 0;

#Q5
SELECT * 
FROM film
HAVING film_id = 100;

#Q6
SELECT * 
FROM film
HAVING rating = "R";

#Q7
SELECT * 
FROM film
HAVING rating != "R";

#Q8
SELECT * 
FROM film
ORDER BY length ASC
LIMIT 10;

#Q9
SELECT * 
FROM film
#GROUP BY length
HAVING length > 180
ORDER BY length DESC;

#Q10
SELECT * 
FROM film
HAVING special_features LIKE "%Deleted Scenes%";

#Q11, 12 Test
SELECT 
	last_name
FROM actor
ORDER BY last_name DESC;

#Q11
SELECT 
	last_name
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) = 1 
ORDER BY last_name DESC;

#Q12
SELECT 
	last_name,
    COUNT(last_name)
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) >= 2
ORDER BY COUNT(last_name) DESC;