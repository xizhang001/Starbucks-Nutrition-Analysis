INSERT OVERWRITE LOCAL DIRECTORY '/usr/local/Cellar/hadoop/3.3.6/libexec/Menu_pair_output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT DISTINCT
  f.Item AS FoodItem,
  d.Beverage AS BeverageItem,
  f.Calories + d.Calories AS TotalCalories
FROM 
  foods_cleaned f
CROSS JOIN 
  expanded_drinks_cleaned d
WHERE 
  (f.Calories + d.Calories) <= 500
ORDER BY 
  TotalCalories ASC
LIMIT 50;
