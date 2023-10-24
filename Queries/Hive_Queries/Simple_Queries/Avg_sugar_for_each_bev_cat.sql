INSERT OVERWRITE LOCAL DIRECTORY '../../Outputs/Hive_query_outputs/Avg_sugar_for_each_bev_cat_output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT Beverage_category, AVG(Calories) AS Average_Calories
FROM expanded_drinks_cleaned
GROUP BY Beverage_category
ORDER BY Average_Calories DESC;
