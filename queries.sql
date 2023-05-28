-- write your queries here
SELECT * FROM owners
FULL OUTER JOIN vehicles
ON owners.id = vehicles.owner_id

SELECT first_name, last_name, COUNT(owner_id)
FROM owners JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owner_id
ORDER BY first_name

SELECT first_name, last_name, AVG(price) AS average_price, COUNT(owner_id) AS count
FROM owners JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owner_id
WHERE count > 1 AND average_price > 10000
ORDER BY -first_name