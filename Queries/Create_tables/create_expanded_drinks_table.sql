CREATE EXTERNAL TABLE expanded_drinks (
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
LINES TERMINATED BY '\n'
LOCATION '../../Data/Cleaned_Data/drinks_expanded_cleaned/part-m-00000';
