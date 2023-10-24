CREATE EXTERNAL TABLE drinks_cleaned (
    Beverage STRING, 
    Calories INT, 
    Fat STRING, 
    Carb STRING, 
    Fiber STRING, 
    Protein STRING, 
    Sodium STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
LOCATION '../../Data/Cleaned_Data/drinks_cleaned/part-m-00000';
