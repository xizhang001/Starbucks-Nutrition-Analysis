INSERT OVERWRITE LOCAL DIRECTORY '/usr/local/Cellar/hadoop/3.3.6/libexec/Top10Bev_with_highest_cal_output'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
SELECT beverage, calories
FROM drinks_cleaned
ORDER BY calories DESC
LIMIT 10;
