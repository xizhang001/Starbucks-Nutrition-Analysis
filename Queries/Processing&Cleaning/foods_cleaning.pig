-- Load the food dataset
food = LOAD '../../Data/Raw_data/starbucks-menu-nutrition-food.csv' USING PigStorage(',') AS (
    Item:chararray, 
    Calories:chararray,
    Fat:chararray, 
    Carb:chararray, 
    Fiber:chararray, 
    Protein:chararray
);

-- Clean the food dataset by replacing '-' with NULL
food_cleaned = FOREACH food GENERATE 
    Item, 
    (Calories == '-' ? NULL : (int)Calories) AS Calories:int, 
    (Fat == '-' ? NULL : (float)Fat) AS Fat:float,
    (Carb == '-' ? NULL : (float)Carb) AS Carb:float,
    (Fiber == '-' ? NULL : (float)Fiber) AS Fiber:float,
    (Protein == '-' ? NULL : (float)Protein) AS Protein:float;

-- Save the cleaned data
STORE food_cleaned INTO '../../Data/Cleaned_data/foods_cleaned' USING PigStorage(',');
