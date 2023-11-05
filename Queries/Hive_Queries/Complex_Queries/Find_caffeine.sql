INSERT OVERWRITE LOCAL DIRECTORY '/usr/local/Cellar/hadoop/3.3.6/libexec/Find_caffeine_output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT DISTINCT
  dc.beverage,
  dc.calories,
  dc.fat_g AS `Fat (g)`,
  dc.carb_g AS `Carb. (g)`,
  dc.fiber_g AS `Fiber (g)`,
  dc.protein_g AS `Protein (g)`,
  dc.sodium_mg AS `Sodium (mg)`,
  edc.caffeine AS `Caffeine (mg)`
FROM
  drinks_cleaned dc
JOIN
  expanded_drinks_cleaned edc ON dc.beverage = edc.beverage
WHERE
  edc.caffeine IS NOT NULL;

