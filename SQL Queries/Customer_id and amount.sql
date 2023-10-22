USE sakila;

SELECT
    p.customer_id,
    p.amount
FROM
    payment AS p
WHERE
    p.amount > 2 * (
        SELECT AVG(amount)
        FROM payment
    );
