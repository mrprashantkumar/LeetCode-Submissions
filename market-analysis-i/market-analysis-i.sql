# Write your MySQL query statement below
SELECT Users.user_id AS buyer_id, Users.join_date, COUNT(Orders.order_id) AS orders_in_2019
FROM Users
LEFT JOIN Orders
ON Users.user_id = Orders.buyer_id AND Orders.order_date LIKE "2019-%"
GROUP BY Users.user_id;