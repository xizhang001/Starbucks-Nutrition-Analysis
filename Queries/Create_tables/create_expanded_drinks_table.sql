CREATE TABLE IF NOT EXISTS expanded_drinks_cleaned (
    Beverage_category STRING, 
    Beverage STRING, 
    Beverage_prep STRING, 
    Calories INT, 
    Total_Fat STRING, 
    Trans_Fat STRING, 
    Saturated_Fat STRING, 
    Sodium STRING, 
    Total_Carbohydrates STRING, 
    Cholesterol STRING, 
    Dietary_Fibre STRING, 
    Sugars STRING, 
    Protein STRING, 
    Vitamin_A STRING, 
    Vitamin_C STRING, 
    Calcium STRING, 
    Iron STRING, 
    Caffeine STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'drinks_expanded_part-m-00000' INTO TABLE expanded_drinks_cleaned;

