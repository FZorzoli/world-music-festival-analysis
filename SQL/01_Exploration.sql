--Used to understand the context of the columns to be worked on.
PRAGMA table_info("Global Music Festival Market Analysis");

--The purpose is to understand the data types at a general level. I use the "LIMIT" clause to avoid loading all data unnecessarily.
SELECT * FROM "Global Music Festival Market Analysis" LIMIT 5;

--Count how many rows the dataset has
SELECT COUNT(*) AS total_rows
FROM "Global Music Festival Market Analysis";

--View the different formats of economic impact, uncovering one of the main problems in the DB.
SELECT DISTINCT Economic_Impact
FROM "Global Music Festival Market Analysis"
ORDER BY Economic_Impact;

--Applied the same query as above to all columns, looking for errors in a more specific way.
SELECT DISTINCT field4, COUNT(*) AS count
FROM "Global Music Festival Market Analysis"
GROUP BY field4
ORDER BY count DESC;

--Understand which values do not follow the same numeric format of "million", in order to clean them later.
SELECT Economic_Impact
FROM Festivales
WHERE Economic_Impact NOT LIKE '%million%';


--Extract and keep track of all possible variations that are not numeric values expressed in Pounds.
SELECT DISTINCT SUBSTR(Economic_Impact, 1, 1)
FROM Festivales;

--View all locations, to analyze whether any row had formatting errors.
SELECT DISTINCT Location
FROM Festivales
ORDER BY Location;

--View all age ranges, to analyze whether any row had formatting errors.
SELECT DISTINCT Visitor_Demographics
FROM Festivales
ORDER BY Visitor_Demographics;

--View all music genres, to analyze whether any row had formatting errors.
SELECT DISTINCT Music_Genre
FROM Festivales
ORDER BY Music_Genre;



--Results:
--Exploratory analysis findings:
--Locations: mix of countries, regions and islands, representing an inaccuracy when strategically analyzing regions with the highest revenue.
--Economic_Impact presents 143 different value formats, making it the column with the most errors and therefore the main problem to solve.
--There is no column mentioning the name of the festival.
--Music_Genre has a formatting error.
--Field4 refers to the audience type, it is the only incorrectly named column.
