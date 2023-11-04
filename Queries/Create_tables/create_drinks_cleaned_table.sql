CREATE TABLE IF NOT EXISTS drinks_cleaned (
    Beverage String,
    calories String,
    fat_g String,
    carb_g String,
    fiber_g String,
    protein_g String,
    sodium_mg String
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'drinks_part-m-00000' INTO TABLE drinks_cleaned;

