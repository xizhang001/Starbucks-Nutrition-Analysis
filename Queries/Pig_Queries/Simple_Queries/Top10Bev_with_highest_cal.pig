-- Load cleaned drinks data
drinks_cleaned = LOAD '../../../Data/Cleaned_data/drinks_cleaned/part-m-00000' USING PigStorage(',')
AS (Beverage: chararray, Calories: int);

-- Order data by calories in descending order
sorted_data = ORDER drinks_cleaned BY Calories DESC;

-- Limit to top 10 results
top_10_beverages = LIMIT sorted_data 10;

-- Store result to output directory
STORE top_10_beverages INTO '../../../Outputs/Pig_outputs/Top10BevWithHighestCal_output' USING PigStorage(',');
