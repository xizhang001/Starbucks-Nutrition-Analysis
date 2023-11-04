CREATE TABLE IF NOT EXISTS drinks_cleaned (
    drink_name STRING,
    calories INT,
    fat_g DOUBLE,
    carb_g DOUBLE,
    fiber_g DOUBLE,
    protein_g DOUBLE,
    sodium_mg INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'drinks_part-m-00000' INTO TABLE drinks_cleaned;

