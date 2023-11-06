INSERT OVERWRITE LOCAL DIRECTORY '/usr/local/Cellar/hadoop/3.3.6/libexec/Avg_sugar_for_each_bev_cat_output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT 
    Beverage_category, 
    ROUND(AVG(CAST(Sugars AS DOUBLE)), 2) AS Avg_Sugar
FROM 
    expanded_drinks_cleaned
WHERE 
    Beverage_category != 'Beverage_category'
GROUP BY 
    Beverage_category
ORDER BY 
    Avg_Sugar DESC;
