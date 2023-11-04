-- Load expanded drinks data
expanded_drinks = LOAD '../../../Data/Cleaned_data/drinks_expanded_cleaned/part-m-00000' USING PigStorage(',')
AS (Beverage_category: chararray, Beverage: chararray, Calories: int, Sugar: int);

-- Group the data by beverage category
grouped = GROUP beverages BY Beverage_category;

-- Calculate the average sugar for each category
average_sugars = FOREACH grouped GENERATE group AS Beverage_category, AVG(beverages.Sugars_g) AS Avg_Sugar;

-- Order data by average sugar in descending order
sorted_data = ORDER avg_sugar BY Average_Sugar DESC;

-- Store result to output directory
STORE sorted_data INTO '../../../Outputs/Pig_outputs/AvgSugarForEachBevCat_output/part-m-00000' USING PigStorage(',');
