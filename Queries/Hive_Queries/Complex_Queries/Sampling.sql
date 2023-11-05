INSERT OVERWRITE LOCAL DIRECTORY '/usr/local/Cellar/hadoop/3.3.6/libexec/Sampling_output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT 'Food' AS Type, item AS Name, CAST(Calories AS DOUBLE) AS Calories
FROM foods_cleaned
WHERE RAND() <= 0.1 AND CAST(Calories AS DOUBLE) < 300

UNION ALL

SELECT 'Drink' AS Type, beverage AS Name, CAST(calories AS DOUBLE) AS Calories
FROM drinks_cleaned
WHERE RAND() <= 0.1 AND calories IS NOT NULL AND CAST(calories AS DOUBLE) < 300

UNION ALL

SELECT 'Expanded Drink' AS Type, beverage AS Name, CAST(calories AS DOUBLE) AS Calories
FROM expanded_drinks_cleaned
WHERE RAND() <= 0.1 AND calories IS NOT NULL AND CAST(calories AS DOUBLE) < 300;
