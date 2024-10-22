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

#Q5 tEST
SELECT * 
FROM film;

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

#Q13 
SELECT
	CONCAT(a.first_name, " ", a.last_name) AS full_name,
	fa.actor_id,
    COUNT(*)
FROM film_actor AS fa
LEFT OUTER JOIN actor AS a #Google Inner Join and Outer Join. JOIN is part of FROM.
ON fa.actor_id = a.actor_id  #link the team.id to the hero.team_id. Google what ON does later.
GROUP BY actor_id
ORDER BY COUNT(*) DESC
LIMIT 1;

#Q14
SELECT date_add(r.rental_date, INTERVAL f.rental_duration WEEK) AS "Return Date"
FROM rental 
AS r
RIGHT JOIN inventory
AS i
ON r.inventory_id = i.inventory_id
INNER JOIN film
AS f
ON f.film_id = i.film_id
WHERE (title = "Academy Dinosaur")
AND (r.return_date IS NULL)
AND (r.rental_date IS NOT NULL)
;

#15
SELECT AVG(length)
FROM film;

#16
SELECT 
	c.name,
	AVG(length)
FROM film_category AS fc
JOIN category AS c
ON fc.category_id = c.category_id
RIGHT JOIN film AS f
ON f.film_id = fc.film_id
GROUP BY fc.category_id;

#17
SELECT * 
FROM film
HAVING description LIKE "%Robot%";

#18
SELECT 
	COUNT(release_year),
    release_year
FROM film
GROUP BY release_year;
#HAVING release_year LIKE 2010;