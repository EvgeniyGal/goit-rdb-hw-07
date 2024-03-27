USE mydb;

SELECT id, date, YEAR(date) AS year, MONTH(date) AS month, DAY(date) AS day FROM orders;

SELECT id, date, (date + INTERVAL 1 DAY) AS mod_date FROM orders;

SELECT id, date, UNIX_TIMESTAMP(date) AS seconds FROM orders;

SELECT COUNT(*) AS orders_in_rage FROM orders
WHERE date BETWEEN "1996-07-10" AND "1996-10-08";

SELECT id, date, JSON_OBJECT("id", id, "date", date) AS json_obj FROM orders;

