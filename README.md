# CA4022 assignment 1: Starbucks-Nutrition-Analysis

This repository contains the code and documentation for analyzing the nutritional information of the Starbucks menu. The analysis is performed using Apache Pig for data cleaning and Apache Hive for running both simple and complex queries on the cleaned data.

Data Source: [Nutrition facts for Starbucks Menu](https://www.kaggle.com/datasets/starbucks/starbucks-menu)

## Repository Structure

The project is organized into several directories, each serving a different purpose in the workflow:

### Report
- [Report](Report.pdf)

### Data

The `Data` directory contains:

- [Cleaned_Data](./Data/Cleaned_Data): The cleaned and processed data for analysis.
  - [drinks_cleaned](./Data/Cleaned_Data/drinks_cleaned)
  - [drinks_expanded_cleaned](./Data/Cleaned_Data/drinks_expanded_cleaned)
  - [foods_cleaned](./Data/Cleaned_Data/foods_cleaned)

- [Raw_Data](./Data/Raw_data)


### Outputs
The `Outputs` directory contains:
The results from both simple and complex queries, which are designed to provide insights into the nutritional content of the Starbucks menu.

- [Hive_outputs](./Outputs/Hive_outputs): Stores the outputs from the Hive queries.
  - [Complex_Queries](./Outputs/Hive_outputs/Complex_Queries)
  - [Simple_Queries](./Outputs/Hive_outputs/Simple_Queries)
  
- [Pig_outputs](./Outputs/Pig_outputs): Contains the output data from Pig processing.

### Queries
The `Queries` directory contains:

- [Create_tables](./Queries/Create_tables): SQL scripts for creating Hive tables from the cleaned data.
  
- [Hive_Queries](./Queries/Hive_Queries): Contains all the SQL queries used for analysis. 
  - [Complex_Queries](./Queries/Hive_Queries/Complex_Queries)
  - [Simple_Queries](./Queries/Hive_Queries/Simple_Queries)
  
- [Pig_Queries](./Queries/Pig_Queries): Pig scripts for both cleaning and analyzing data.
  - [Simple_Queries](./Queries/Pig_Queries/Simple_Queries)

- [Processing&Cleaning](./Queries/Processing&Cleaning): Pig scripts for data cleaning.

### Visualisations

The `Visualisations` directory contains:

- [Jupyter_notebook](./Visualisations/Jupyter_notebook): Jupyter notebooks for visual analysis.

- [csv_data](./Visualisations/csv_data): CSV files containing data extracted from Hive/Pig for visualisation.
    
- [graph](./Visualisations/graph): Images of graphs and charts generated.
