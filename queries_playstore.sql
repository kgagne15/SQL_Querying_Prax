-- Comments in SQL Start with dash-dash --
--Playstore query 1
SELECT * FROM analytics
WHERE id = 1880; 

--Playstore query 2
SELECT id, app_name FROM analytics
WHERE last_updated = '2018-08-01'; 

--Playstore query 3
SELECT COUNT(app_name), category FROM analytics
GROUP BY category; 

--Playstore query 4
SELECT app_name, rating, reviews FROM analytics
WHERE rating IS NOT NULL
ORDER BY rating DESC
LIMIT 5;

--Playstore query 5
SELECT app_name, reviews, rating FROM analytics
WHERE rating >= 4.8
ORDER BY reviews DESC
LIMIT 1;

--Playstore query 6
SELECT AVG(rating), category FROM analytics
GROUP BY category
ORDER BY 2 DESC;

--Playstore query 7
SELECT app_name, price, rating FROM analytics
WHERE rating < 3
ORDER BY price DESC
LIMIT 1;

--Playstore query 8
SELECT * FROM analytics
WHERE min_installs <= 50 AND rating IS NOT NULL
ORDER BY rating DESC; 

--Playstore query 9
SELECT app_name FROM analytics
WHERE rating < 3 AND reviews >= 10000; 

--Playstore query 10
SELECT * FROM analytics
WHERE price >= 0.10 AND price <= 1.00
ORDER BY reviews DESC
LIMIT 10;

--Playstore query 11
SELECT * FROM analytics
ORDER BY last_updated 
LIMIT 1;

--Playstore query 12
SELECT * FROM analytics
ORDER BY price DESC
LIMIT 1; 

--Playstore query 13
SELECT SUM(reviews) FROM analytics;

--Playstore query 14 / had to use solution
SELECT category FROM analytics
GROUP BY category
HAVING COUNT(*) > 300;

--Playstore query 15 / had to use solution
SELECT app_name, reviews, min_installs, min_installs / reviews AS proportion
FROM analytics
WHERE min_installs >= 100000
ORDER BY proportion DESC
LIMIT 1; 