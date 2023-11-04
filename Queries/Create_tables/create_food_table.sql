CREATE TABLE IF NOT EXISTS foods_cleaned (
    Item STRING, 
    Calories String, 
    Fat_g String, 
    Carb_g String, 
    Fiber_g String, 
    Protein_g String
)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'foods_part-m-00000' INTO TABLE foods_cleaned;