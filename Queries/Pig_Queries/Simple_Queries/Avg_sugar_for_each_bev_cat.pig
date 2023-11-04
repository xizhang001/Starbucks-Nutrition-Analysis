-- Load the data
beverages = LOAD '../../../Data/Cleaned_Data/drinks_expanded_cleaned/part-m-00000' USING PigStorage(',')
        AS (Beverage_category:chararray, Beverage:chararray, Beverage_prep:chararray, Calories:int,
            Total_Fat_g:float, Trans_Fat_g:float, Saturated_Fat_g:float, Sodium_mg:int,
            Total_Carbohydrates_g:int, Cholesterol_mg:int, Dietary_Fibre_g:int, Sugars_g:float,
            Protein_g:float, Vitamin_A_DV:chararray, Vitamin_C_DV:chararray, Calcium_DV:chararray,
            Iron_DV:chararray, Caffeine_mg:int);

-- Filter out the header row assuming it exists in your dataset
beverages_data = FILTER beverages BY Beverage_category IS NOT NULL AND Beverage_category != 'Beverage_category';

-- Group the data by beverage category
grouped = GROUP beverages_data BY Beverage_category;

-- Calculate the average sugar content for each group
average_sugars = FOREACH grouped GENERATE group AS Beverage_category, AVG(beverages_data.Sugars_g) AS Average_Sugar;

-- Sort the categories by average sugar content in descending order
sorted = ORDER average_sugars BY Average_Sugar DESC;

-- Store the results to a file
STORE sorted INTO '../../../Outputs/Pig_outputs/AvgSugarForEachBevCat_output/part-m-00000' USING PigStorage(',');