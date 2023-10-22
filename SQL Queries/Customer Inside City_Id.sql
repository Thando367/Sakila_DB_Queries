Use sakila;

SELECT
    c.first_name,
    c.last_name,
    c.email,
    a.address,
    ci.city
FROM
    customer AS c
JOIN
    address AS a ON c.address_id = a.address_id
JOIN
    city AS ci ON a.city_id = ci.city_id
WHERE
    a.city_id = 312;
