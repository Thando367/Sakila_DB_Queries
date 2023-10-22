USE sakila;

SELECT
    a.last_name AS actor_last_name,
    f.title AS film_title,
    f.release_year
FROM
    actor AS a
JOIN
    film_actor AS fa ON a.actor_id = fa.actor_id
JOIN
    film AS f ON fa.film_id = f.film_id
WHERE
    a.first_name = 'Johnny' AND a.last_name = 'Lollobrigida';
