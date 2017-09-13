SELECT name, language, percentage
FROM countries
JOIN languages 
ON countries.id = languages.country_id
WHERE languages.language = 'Slovene'
ORDER BY percentage DESC;

SELECT countries.name AS country_name, COUNT(cities.id) AS city_count
FROM countries
JOIN cities
ON countries.id = cities.country_id
GROUP BY countries.name;

select cities.name, cities.population
from countries
join cities
on countries.id = cities.country_id
where countries.name = "Mexico" and cities.population > 500000
order by cities.population desc;


select countries.name, languages.language, languages.percentage
from countries
join languages
on countries.id = languages.country_id
where languages.percentage > 89
order by languages.percentage desc;

select name, surface_area, population
from countries
where surface_area < 501 and population > 100000;

select name, government_form, capital
from countries
where government_form = "Constitutional Monarchy" and life_expectancy > 75 and capital > 200;

select countries.name, cities.name, cities.district, cities.population
from countries
join cities
on countries.id = cities.country_id
where countries.name = "Argentina" and cities.district = "Buenos Aires" and cities.population > 500000;

select region, count(id) as number_of_countries
from countries
group by region
order by count(id) desc;

