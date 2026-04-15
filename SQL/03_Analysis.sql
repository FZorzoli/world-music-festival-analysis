--This query was used to understand which countries generated the most revenue
--With the goal of understanding which subgenre stands out the most in the market by region.
--Revenue analysis includes only festivals with values in £ (British Pounds)
--because the dataset has limitations with multiple currency formats that were not converted.

SELECT 
    Location,
    SUM(Economic_Impact_NUM) AS total_impact
FROM Festivales
WHERE Economic_Impact LIKE '%£%million%'
GROUP BY Location
ORDER BY total_impact DESC
LIMIT 10;


--I sought to understand which location has the most subgenres.
--Based on this, I ranked the top 10 in ascending order by revenue amount and number of subgenres,
--identifying which market is most receptive to different musical offerings.

SELECT 
    Location,
    COUNT(DISTINCT Music_Genre) AS subgenre_count,
    SUM(Economic_Impact_NUM) AS total_impact
FROM Festivales
WHERE Economic_Impact LIKE '%£%million%'
GROUP BY Location
ORDER BY subgenre_count DESC
LIMIT 10;

--I analyzed which subgenre was the most profitable.
--I added the attendance figures to the query
--to understand and compare whether profitability was purely due to the genre's popularity or the number of people who attended.

SELECT 
    Music_Genre,
    SUM(Economic_Impact_NUM) AS total_impact,
    SUM(Attendance_Numbers) AS total_attendance
FROM Festivales
WHERE Economic_Impact LIKE '%£%million%'
GROUP BY Music_Genre
ORDER BY total_impact DESC
LIMIT 10;

--For this query, similar to the previous one but very useful, I sought to analyze which audience type is the most profitable
--and whether that profitability is due to the volume of attendees or the type of audience itself.
--Primarily as a market analysis and potential investment perspective.

SELECT 
    Audience_Type,
    SUM(Economic_Impact_NUM) AS total_impact,
    SUM(Attendance_Numbers) AS total_attendance
FROM Festivales
WHERE Economic_Impact LIKE '%£%million%'
GROUP BY Audience_Type
ORDER BY total_impact DESC
LIMIT 5;
