-- Load the drinks dataset

drinks = LOAD '../../Data/Raw_data/starbucks-menu-nutrition-drinks.csv' USING PigStorage(',') AS (
    Beverage:chararray, 
    Calories:chararray, 
    Fat:chararray, 
    Carb:chararray, 
    Fiber:chararray, 
    Protein:chararray, 
    Sodium:chararray
);

-- Clean the drinks dataset by replacing '-' with NULL
drinks_cleaned = FOREACH drinks GENERATE 
    Beverage, 
    (Calories == '-' ? NULL : Calories) AS Calories, 
    (Fat == '-' ? NULL : Fat) AS Fat, 
    (Carb == '-' ? NULL : Carb) AS Carb, 
    (Fiber == '-' ? NULL : Fiber) AS Fiber, 
    (Protein == '-' ? NULL : Protein) AS Protein, 
    (Sodium == '-' ? NULL : Sodium) AS Sodium;

DUMP drinks_cleaned;

-- Save the cleaned data
STORE drinks_cleaned INTO '../../Data/Cleaned_data/drinks_cleaned' USING PigStorage(',');
