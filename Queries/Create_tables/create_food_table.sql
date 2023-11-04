CREATE TABLE IF NOT EXISTS foods_cleaned (
    Item STRING, 
    Calories INT, 
    Fat_g INT, 
    Carb_g INT, 
    Fiber_g INT, 
    Protein_g INT
)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'foods_part-m-00000' INTO TABLE foods_cleaned;