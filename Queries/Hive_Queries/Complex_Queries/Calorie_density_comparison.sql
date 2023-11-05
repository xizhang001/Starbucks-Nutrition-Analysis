INSERT OVERWRITE LOCAL DIRECTORY '/usr/local/Cellar/hadoop/3.3.6/libexec/Calorie_density_comparison_output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT 
  f.Item AS FoodItem,
  d.Beverage AS DrinkItem,
  CAST(f.calories AS DOUBLE) / 
    (CAST(f.fat_g AS DOUBLE) + CAST(f.carb_g AS DOUBLE) + CAST(f.fiber_g AS DOUBLE) + CAST(f.protein_g AS DOUBLE)) AS FoodCalDensity,
  CAST(d.calories AS DOUBLE) / 
    (CAST(d.total_fat AS DOUBLE) + CAST(d.total_carbohydrates AS DOUBLE) + CAST(d.dietary_fibre AS DOUBLE) + CAST(d.protein AS DOUBLE)) AS DrinkCalDensity
FROM 
  foods_cleaned f
CROSS JOIN 
  expanded_drinks_cleaned d
WHERE 
  f.calories IS NOT NULL AND
  d.calories IS NOT NULL;
