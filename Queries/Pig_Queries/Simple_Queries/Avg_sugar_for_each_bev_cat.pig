-- Load expanded drinks data
expanded_drinks = LOAD '../../../Data/Cleaned_data/drinks_expanded_cleaned/part-m-00000' USING PigStorage(',')
AS (Beverage_category: chararray, Beverage: chararray, Calories: int, Sugar: int);

-- Group data by Beverage_category
grouped_data = GROUP expanded_drinks BY Beverage_category;

-- Calculate average sugar for each beverage category
avg_sugar = FOREACH grouped_data GENERATE group AS Beverage_category, AVG(expanded_drinks.Sugar) AS Average_Sugar;

-- Order data by average sugar in descending order
sorted_data = ORDER avg_sugar BY Average_Sugar DESC;

-- Store result to output directory
STORE sorted_data INTO '../../../Outputs/Pig_outputs/AvgSugarForEachBevCat_output/part-m-00000' USING PigStorage(',');
