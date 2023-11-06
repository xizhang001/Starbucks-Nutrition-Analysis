# CA4022 assignment 1: Starbucks-Nutrition-Analysis

This repository contains the code and documentation for analyzing the nutritional information of the Starbucks menu. The analysis is performed using Apache Pig for data cleaning and Apache Hive for running both simple and complex queries on the cleaned data.

Data Source: [Nutrition facts for Starbucks Menu](https://www.kaggle.com/datasets/starbucks/starbucks-menu)

## Repository Structure

The project is organized into several directories, each serving a different purpose in the workflow:


### Data

The `Data` directory contains both raw and cleaned data. The raw data is sourced from publicly available nutritional information from Starbucks, and it includes drinks and food menus. The cleaned data is the output after preprocessing the raw CSV files using Pig scripts to remove inconsistencies and prepare the data for analysis.

- [Cleaned_Data](./Data/Cleaned_Data): This directory holds the cleaned and processed data ready for analysis.
  - [drinks_cleaned](./Data/Cleaned_Data/drinks_cleaned)
  - [drinks_expanded_cleaned](./Data/Cleaned_Data/drinks_expanded_cleaned)
  - [foods_cleaned](./Data/Cleaned_Data/foods_cleaned)

- [Raw_Data](./Data/Raw_data): Contains the original, unprocessed CSV files of the Starbucks menu nutrition.


### Outputs

The output from Hive and Pig queries is stored in the `Outputs` directory. This includes results from both simple and complex queries, which are designed to provide insights into the nutritional content of the Starbucks menu.

- [Hive_outputs](./Outputs/Hive_outputs): Stores the results from the Hive queries.
  - [Complex_Queries](./Outputs/Hive_outputs/Complex_Queries): Results of complex analytical queries.
  - [Simple_Queries](./Outputs/Hive_outputs/Simple_Queries): Results of basic queries for initial insights.
  
- [Pig_outputs](./Outputs/Pig_outputs): Contains the output data from Pig processing.

### Queries

Scripts for creating tables, processing, cleaning, and analyzing the data are contained within the `Queries` directory. Each script is documented to explain the purpose and the kind of analysis or processing it performs.

- [Create_tables](./Queries/Create_tables): SQL scripts for creating Hive tables from the cleaned data.
  
- [Hive_Queries](./Queries/Hive_Queries): Contains all the SQL queries used for analysis. 
  - [Complex_Queries](./Queries/Hive_Queries/Complex_Queries): Advanced queries for in-depth analysis. 
  - [Simple_Queries](./Queries/Hive_Queries/Simple_Queries): Basic queries for preliminary analysis.
  
- [Pig_Queries](./Queries/Pig_Queries): Pig scripts for both cleaning and analyzing data.

- [Processing&Cleaning](./Queries/Processing&Cleaning): Pig scripts specifically for data cleaning.

### Visualisations

The `Visualisations` directory contains the Jupyter notebooks used for visual analysis, CSV data for visualisation, and the resulting graphical representations. These visuals help in understanding the data patterns and insights derived from the analysis.

- [Jupyter_notebook](./Visualisations/Jupyter_notebook): Jupyter notebooks for visual analysis.
  - [complex1.ipynb](./Visualisations/Jupyter_notebook/complex1.ipynb)
  - [complex2.ipynb](./Visualisations/Jupyter_notebook/complex2.ipynb)
  - [simple1.ipynb](./Visualisations/Jupyter_notebook/simple1.ipynb)
  - [simple2.ipynb](./Visualisations/Jupyter_notebook/simple2.ipynb)
  
- [csv_data](./Visualisations/csv_data): CSV files containing data extracted from Hive/Pig for visualisation.
  - [complex1.csv](./Visualisations/csv_data/complex1.csv)
  - [complex2.csv](./Visualisations/csv_data/complex2.csv)
  - [simple1.csv](./Visualisations/csv_data/simple1.csv)
  - [simple2.csv](./Visualisations/csv_data/simple2.csv)
    
- [graph](./Visualisations/graph): Images of graphs and charts generated from the analysis.
  - [complex1.png](./Visualisations/graph/complex1.png)
  - [complex2.png](./Visualisations/graph/complex2.png)
  - [simple1.png](./Visualisations/graph/simple1.png)
  - [simple2.png](./Visualisations/graph/simple2.png)




## Introduction

1. Start by examining the raw data in the [Raw_Data](./Data/Raw_data) directory.
2. Review the Pig scripts in [Processing&Cleaning](./Queries/Processing&Cleaning) to understand the data cleaning process.
3. Execute the table creation scripts from [Create_tables](./Queries/Create_tables) in Hive to set up the data structures.
4. Run the analysis scripts found in [Hive_Queries](./Queries/Hive_Queries) and [Pig_Queries](./Queries/Pig_Queries) to perform the analysis.
5. Check the [Outputs](./Outputs) directory to review the results from the executed scripts.
