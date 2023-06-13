# EVPopulation-SQL


EV-population

In this SQL project, I analyzed a database containing information on EV populations across different states in the USA to gain insights into the growth and trends of EVs in the country.

Currently, EV sales account for only 2% of all car sales in the USA. To incentivize EV adoption, the US government offers rebates and tax benefits and has introduced low and zero-emission zones while also mandating a certain percentage of annual car sales to be EVs. Private companies and the government have also improved infrastructure by introducing more accessible charging stations across the country. Furthermore, advancements in battery technology have led to a decrease in EV prices while also increasing their mileage range.

Analysing the data can help bring about better regulations that benefit both the planet and its citizens. As a data analyst, I was hired to gain a better understanding of EV adoption rates in the USA and how the larger range of vehicles has impacted their popularity.

Data Source

The data was obtained from the website government website, which provided information on the number of EV's in use in different states from 2010 to 2020. The data was initially provided as a CSV file which then was imported into an Oracle MySQL database and was managed using DBeaver as data management tool.

Data Cleaning

The data needed some cleaning before it could be analyzed. Some of the issues with the data included missing values, inconsistent naming conventions, and different data types. To clean the data, I performed the following steps:

Removed rows with missing values Renamed some of the columns to have consistent naming conventions Converted data types to be consistent across the database Database Design

The database consisted of two tables: 'states' and 'ev_population'. The 'states' table contained information about each state, such as the name, region, and resources. The 'ev_population' table contained information about the number of EVs in each county for each year from 2010 to 2020, along with Model Name, Make, wether the vehicles comes under CAVF.

SQL Queries

To gain insights from the data I combined both the TABLEs using JOIN, Further I ran several SQL queries. Some of the queries and described below with the GITHUB Link Provided at the Botton.

Total number of EVs qualifying under CAFV This query returned the total number of EVs by year for all countries in the database. The results showed that the number of EVs grew steadily from 2010 to 2020, with a significant increase in the number of EVs in the last few years. Top State and County's with the highest EV population in 2020 Increase in Percentage of EV Adoption in the Country Average range of EV and which Makes had models with Various ranges.

Insights

The SQL project provided valuable insights into the growth and trends of EVs across different regions of America. The results showed that the number of EVs has been steadily increasing in most counties.While the Improvement in the Range of the vehicle remain slow, There has been a 36% rise in EV adoption over the last one year and Most of the vehicle fall under Clean Alternative Vehicle Fuel (CAVF), though the Plug In-hybrid options remain more popular over the Battery Electric Vehicle as they provide backup options for the customer.
