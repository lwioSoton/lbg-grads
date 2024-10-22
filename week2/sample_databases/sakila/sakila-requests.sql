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
