USE sakila;

SELECT
    c.first_name,
    c.last_name,
    COUNT(p.payment_id) AS num_payments
FROM
    customer AS c
JOIN
    payment AS p ON c.customer_id = p.customer_id
GROUP BY
    c.customer_id
ORDER BY
    num_payments DESC
LIMIT 15;
