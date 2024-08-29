/* This is the given data:
name    continent   area    population  gdp*/

/* Question 1
List each country name where the population is larger than that of 'Russia'.

world(name, continent, area, population, gdp)*/

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

/* Question 2
Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
Per Capita GDP*/

SELECT name FROM world
  WHERE continent = 'Europe' AND gdp/population >
    (SELECT gdp/population FROM world
     WHERE name='United Kingdom')

/* Question 3
List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.*/

SELECT name, continent 
FROM world
WHERE continent IN (SELECT continent FROM world GROUP BY
        WHERE name IN ('Argentina', 'Australia'))
          ORDER BY name

/* Question 4
Which country has a population that is more than United Kingdom but less than Germany? Show the name and the population.*/

SELECT name, population
FROM world
WHERE population >
  (SELECT population FROM world
   WHERE name='United Kingdom') AND
   population < (SELECT population FROM world
                 WHERE name='Germany')

/* Question 5
Germany (population 80 million) has the largest population of the countries in Europe. Austria (population 8.5 million) has 11% of the population of Germany.

Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
he format should be Name, Percentage for example:
name  percentage
Albania 3%
Andorra 0%
Austria 11%
... ...
Decimal places
You can use the function ROUND to remove the decimal places.
Percent symbol %
You can use the function CONCAT to add the percentage symbol.*/

SELECT name, CONCAT(ROUND((population / (SELECT population FROM world WHERE name='Germany')) * 100), '%') AS percentage
FROM world
WHERE continent = 'Europe'

/*we can use the word ALL to allow >= or > or < or <=to act over a list. For example, you can find the largest country in the world, by population with this query:

SELECT name
  FROM world
 WHERE population >= ALL(SELECT population
                           FROM world
                          WHERE population>0)

You need the condition population>0 in the sub-query as some countries have null for population. */

/*
Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values) */

SELECT NAME
FROM world
WHERE gdp > ALL(SELECT gdp
  FROM world
  WHERE continent = 'Europe' AND gdp IS NOT NULL)

/* Question 7
Find the largest country (by area) in each continent, show the continent, the name and the area:

The above example is known as a correlated or synchronized sub-query.
Using correlated subqueries*/

SELECT continent, name, area
FROM world x 
WHERE area >= ALL
  (SELECT area FROM world y
   WHERE y.continent=x.continent
   AND population>0)

/* Question 8
List each continent and the name of the country that comes first alphabetically.*/

SELECT continent, name
FROM world w1
WHERE name = (SELECT name
              FROM world w2
              WHERE w2.continent = w1.continent
              ORDER BY name
              LIMIT 1)

/* Question 9
Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, continent and population.*/

SELECT name, continent, population
FROM world
WHERE continent IN (SELECT continent
                     FROM world
                     GROUP BY continent
                     HAVING MAX(population) <= 25000000)

/* Question 10
Some countries have populations more than three times that of all of their neighbours (in the same continent). Give the countries and continents.*/
SELECT name, continent
FROM world
WHERE population > ALL(SELECT population * 3
                        FROM world AS x
                        WHERE x.continent = world.continent
                        AND x.name != world.name) 

