# Festivals around the world - Analysis

Portfolio analysis project end to end — from the raw dataset to the Power BI dashboard.

Disclaimer: I used only British pounds £ since the dataset presented many currency inconsistencies that I couldn't solve. Values with other currencies were excluded to ensure valid and logical comparisons. Also, all the information used in this dataset is artificial.

\---

## Project Description

This project analyzes an entire global dataset with 205 music festivals in 134 countries, covering attendance, economic impact and different music genres. The main objective is to extract valuable insights for strategic decisions, using SQL to clean the raw dataset in order to make it usable in a Power BI interactive dashboard.

**Tools:** SQLite · DB Browser for SQLite · Power BI · GitHub

\---

## Folder Structure

```
world-music-festival/
│
├── Data/
│   └── Global Music Festival Market Analysis.xlsx
│
├── SQL/
│   ├── 01\\\_Exploration.sql
│   ├── 02\\\_Cleaning.sql
│   └── 03\\\_Analysis.sql
│
├── PowerBI/
│   └── dashboard .pbix file
│
└── README.md
```

\---

## Dataset

|Column|Description|
|-|-|
|Festival\_Name|Name of the festival|
|Location|Country where the festival takes place|
|Music\_Genre|Primary music genre|
|Attendance\_Number|Total attendees|
|Economic\_Impact|Revenue in text format (mixed currencies)|
|Audience\_Type|Target demographic|

Issues found and addressed:

* Mixed currencies (£, IDR, VND, TZS, etc.), this is why I used only British pounds
* Mixed scales (millions vs. billions), filtered to millions only
* Encoding errors in the Music\_Genre column, fixed during the cleaning phase
* Unnamed index column, renamed as Audience\_Type

\---

## SQL Analysis

Phase 0 — Exploration (01\_Exploration.sql)

* Row count and column inspection
* Unique value checks per column
* Detection of nulls and encoding errors

Phase 1 — Cleaning (02\_Cleaning.sql)

* Renamed the table to Festivales
* Fixed encoding errors in Music\_Genre
* Created a numeric column Economic\_Impact\_NUM from the text field
* Renamed the unnamed column to Audience\_Type

Phase 2 — Analysis (03\_Analysis.sql)

* Top 10 countries by revenue: SUM of Economic\_Impact\_NUM, filtered to £ millions
* Top genres by attendance: grouped by Music\_Genre, ordered by Attendance\_Number
* Revenue vs. Attendance: economic impact and attendance compared by genre
* Average attendance by genre: AVG grouped by Music\_Genre

\---

## Power BI Dashboard

The dashboard contains 6 visuals and 3 KPI cards: a world map showing festival locations by economic impact, a bar chart with the top 10 countries by revenue, a horizontal bar chart ranking genres by attendance, a scatter plot comparing revenue vs. attendance by genre, a genre slicer for filtering, and KPI cards showing total revenue, total attendance and total countries.

\---

## Key Findings

* UK, Belgium and Germany lead in festival economic impact (in £ millions)
* Various and EDM genres attract the highest total attendance
* Most festivals are concentrated in Europe, with a growing presence in Asia
* A small number of festivals generate a disproportionately high amount of revenue

\---

## Author

Franco Zorzoli — Sales Operations \& Data Analysis

GitHub: https://github.com/FZorzoli
LinkedIn: https://www.linkedin.com/in/francozorzoli/?locale=en\_US

