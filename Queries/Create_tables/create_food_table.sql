CREATE EXTERNAL TABLE food (
    Item STRING, 
    Calories INT, 
    Fat_g FLOAT, 
    Carb_g FLOAT, 
    Fiber_g INT, 
    Protein_g FLOAT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
LOCATION '../../Data/Cleaned_Data/foods_cleaned/part-m-00000';
