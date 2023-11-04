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
    (Calories == '-' ? NULL : Calories) AS Calories, 
    (Fat == '-' ? NULL : Fat) AS Fat,
    (Carb == '-' ? NULL : Carb) AS Carb,
    (Fiber == '-' ? NULL : Fiber) AS Fiber,
    (Protein == '-' ? NULL : Protein) AS Protein;

-- Save the cleaned data
STORE food_cleaned INTO '../../Data/Cleaned_data/foods_cleaned' USING PigStorage(',');
