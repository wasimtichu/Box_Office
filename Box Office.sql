create database boxoffice_db;

use boxoffice_db;

alter table movie_details
add column date date;

SELECT 
    *
FROM
    movie_details;

UPDATE movie_details 
SET 
    date = STR_TO_DATE(release_date, '%d-%b-%y');

SELECT 
    *
FROM
    movie_details
WHERE
    YEAR(date) = 2020;

SELECT 
    *
FROM
    movie_commercials;

SELECT 
    movie_name, movie_total_worldwide
FROM
    movie_commercials
ORDER BY 2 DESC
LIMIT 5;

SELECT 
    movie_name, producer, date, movie_genre
FROM
    movie_details
WHERE
    movie_genre = 'comedy'
        AND YEAR(date) = 2019;

SELECT 
    movie_name, runtime
FROM
    movie_details
ORDER BY runtime
LIMIT 1;

SELECT 
    movie_name, movie_weekend
FROM
    movie_commercials
ORDER BY movie_weekend DESC
LIMIT 1;

SELECT 
    movie_name, movie_total_worldwide
FROM
    movie_commercials
ORDER BY movie_total_worldwide DESC
LIMIT 1;

SELECT 
    movie_name, movie_weekend, movie_firstweek
FROM
    movie_commercials
WHERE
    "movie_weekened" = "movie_firstweek";

SELECT 
    movie_name, movie_total_worldwide
FROM
    movie_commercials
ORDER BY movie_total_worldwide DESC
LIMIT 3;

SELECT 
    movie_name
FROM
    movie_details
WHERE
    DAYOFWEEK(date) <> '7'
        and DAYOFWEEK(date) <> '1'
        and dayofweek(date) <> '6';

SELECT 
    movie_name
FROM
    movie_details
WHERE
    banner = 'reliance entertainment'
        AND movie_genre <> 'comedy';

SELECT 
    movie_name, date
FROM
    movie_details
    where (monthname(date) = "october" or monthname(date) = "november" or monthname(date) = "december") and (dayname(date) = "saturday" or dayname(date) = "sunday");
    
    
 




