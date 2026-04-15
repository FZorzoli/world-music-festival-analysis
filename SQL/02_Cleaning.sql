--With this query, I simplified the database name to make it more practical to work with going forward.
ALTER TABLE "Global Music Festival Market Analysis" 
RENAME TO Festivales;


--Renamed the only column that had an incorrect name. This column displayed the type of audience attending the festivals.
ALTER TABLE Festivales 
RENAME COLUMN field4 TO Audience_Type;


--During data exploration, it was detected that economic values were stored as text with currency symbols, so a new column was added to store the clean numeric data.
ALTER TABLE Festivales 
ADD COLUMN Economic_Impact_NUM REAL;

--During the exploration process, a genre with incorrect encoding was found. It was corrected using the "UPDATE" command to fix the cell value.
UPDATE Festivales
SET Music_Genre = 'Coupé-Décalé/Pop'
WHERE Music_Genre = 'CoupÃ©-DÃ©calÃ©/Pop';


--Results:
--Values with currency text prefixes were normalized by extracting the numeric value between symbols, resulting in 205/205 clean rows, enabling correct strategic analysis.
--The field04 column containing the audience type was correctly renamed.
--One music genre was corrected as its name was incorrectly encoded in the database.
--The table was renamed to optimize the workflow.
