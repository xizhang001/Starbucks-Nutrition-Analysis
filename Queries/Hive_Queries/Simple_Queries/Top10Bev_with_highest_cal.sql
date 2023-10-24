INSERT OVERWRITE LOCAL DIRECTORY '../../Outputs/Hive_Query_outputs/Top10Bev_with_highest_cal_output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT Beverage, Calories
FROM drinks_cleaned
ORDER BY Calories DESC
LIMIT 10;
