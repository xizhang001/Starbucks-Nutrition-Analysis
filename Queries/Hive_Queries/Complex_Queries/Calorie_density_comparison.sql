INSERT OVERWRITE LOCAL DIRECTORY '/usr/local/Cellar/hadoop/3.3.6/libexec/Calorie_density_comparison_output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT 
  f.Item AS FoodItem,
  d.Beverage AS DrinkItem,
  ROUND(CAST(f.calories AS DOUBLE) / 
    (CAST(f.fat_g AS DOUBLE) + CAST(f.carb_g AS DOUBLE) + CAST(f.fiber_g AS DOUBLE) + CAST(f.protein_g AS DOUBLE)), 2) AS FoodCalDensity,
  ROUND(CAST(d.calories AS DOUBLE) / 
    (CAST(d.total_fat AS DOUBLE) + CAST(d.total_carbohydrates AS DOUBLE) + CAST(d.dietary_fibre AS DOUBLE) + CAST(d.protein AS DOUBLE)), 2) AS DrinkCalDensity
FROM 
  foods_cleaned f
CROSS JOIN 
  expanded_drinks_cleaned d
WHERE 
  f.calories IS NOT NULL AND
  d.calories IS NOT NULL AND
  f.fat_g IS NOT NULL AND
  f.carb_g IS NOT NULL AND
  f.fiber_g IS NOT NULL AND
  f.protein_g IS NOT NULL AND
  d.total_fat IS NOT NULL AND
  d.total_carbohydrates IS NOT NULL AND
  d.dietary_fibre IS NOT NULL AND
  d.protein IS NOT NULL AND
  -- Ensure that none of the fields in the denominator are zero to avoid division by zero
  (CAST(f.fat_g AS DOUBLE) + CAST(f.carb_g AS DOUBLE) + CAST(f.fiber_g AS DOUBLE) + CAST(f.protein_g AS DOUBLE)) > 0 AND
  (CAST(d.total_fat AS DOUBLE) + CAST(d.total_carbohydrates AS DOUBLE) + CAST(d.dietary_fibre AS DOUBLE) + CAST(d.protein AS DOUBLE)) > 0;