# ETL Technical Report


## Finding Data

* Dataset: Women's Shoe Prices https://www.kaggle.com/datafiniti/womens-shoes-prices

## Data Cleanup & Analysis

* The sources of data that you will extract from.

* The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).

* The type of final production database to load the data into (relational or non-relational).

* The final tables or collections that will be used in the production database.

You will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.

## Project Report

### Extract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

   * The dataset, Women's Shoe Prices, was sourced from https://www.kaggle.com/datafiniti/womens-shoes-prices. The data was formatted as 2 csv files. The csv files were downloaded to our local system and then extracted the csvs into a pandas dataframe. 

### Transform: what data cleaning or transformation was required. ###

To transform the data we did the following

* To clean up the data we...
    * Removed duplicate rows
    * Dropped unneeded columns
    * Removed rows and columns with null values
    * Renamed the columns that were kept to be more clear
    * Changed all characters in the column "Brand" to all lowercase to ensure that all brands were properly grouped together
    
* Next we aggregated the data by...
    * Grouping by the column named "Brand" and queried the average max and min shoes prices
    * This data was then sorted by price to find the top brand per that dataset
   
* For visualization of the top brands by price, we also plotted this data into bar chart using Matplotlib

* The above was done for both datasets 1 and 2. 

* Lastly, to compare the information provided we merged the data files together. The first dataset contained shoe price informaiton for 2018 and the 2nd for 2019.

* This merged dataframe was also plotted for visualization. 

### Load: the final database, tables/collections, and why this was chosen. ###

* We chose to load in to a relational database, postgreSQL, because both csv files had similar data and clearly related eachother

* We created sql files to create the empty database and tables in pgAdmin. Next, we created a database connection using sqlalchemy. 
To load the data in the database we used the pandas command df.to_sql()

* Finally, we were able to successfully query the database using pgAdmin and pandas (pd.read_sql(query, connection)) to verify that the connection and loading was successful. 
