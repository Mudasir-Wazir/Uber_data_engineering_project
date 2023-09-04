# Uber Data Engineering Project


## Description

The goal of this project is to perform data analytics on Uber data using various tools and technologies, including GCP Storage, Python, Compute Instance, Mage Data Pipeline Tool, BigQuery, and Looker Studio.
This is an end to end project where we start with a csv file, create a logical design, transform the dataset, use the GCP and Mage for ETL pipeline creation, use BigQuery and finally create a dashboard with Looker Studio. 

## Architecture : Raw data (cloud) -> ETL[Mage , Mage VM] -> Analytics[BigQuery] -> LookerStudio
<img src="architecture.jpg">

## Technology Used
- Programming Language - Python

- Google Cloud Platform
1. Google Storage
2. Compute Instance 
3. BigQuery
4. Looker Studio

- Modern Data Pipeine Tool - https://www.mage.ai/


## Dataset Used
TLC Trip Record Data
Yellow and green taxi trip records include fields capturing pick-up and drop-off dates/times, pick-up and drop-off locations, trip distances, itemized fares, rate types, payment types, and driver-reported passenger counts. 

1. Website - https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
2. Data Dictionary - https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf


## Instructions

1. Create a logical design of the dataset used. I used Lucid chart for this purpose to create an ERD.
2. Import the data into Jupyter notebook in order to transform the data and create FKs and PKs as well as create neccessary columns as defined in the ERD.
3. Using GCP services, I store the data into a unique bucket for my project in the cloud storage.
4. Create your instance and fill in the required settings for the virtual machine in order to deploy Mage onto the computer engine.
5. Connect to the SSH of the instance.
6. Once the connection with the VM is established, start installing the required packages and updates and setup the basic python enviroment.
7. Next install Mage in to the VM and start the Mage project using the required commands.
8. Note the port number shown.
9. Next go to the VM and copy the external IP and paste it into the browser with the port number after allowing access to the port in the firewall setting by creating a new firewall rule.
10. Now you should be able to get the Mage UI in the browser.
11. Create your ETL data pipeline in Mage using Dataloader block to extract the data set and then use the transformation code in Step 2 for the data transformation block. Return the data as a dictionary
     to have both table as key and actual data as value.
12. In the data exporter block, now export the data to BigQuery using a for loop and call dataframe values from the the table dictionary keys we set.
13. Set the credentials in th yaml file to connect to google server.
14. For creating the credentials, create them in the GC in the API & services section and then paste them into the yaml file.
15. Go to BigQuery and create a dataset and copy the datasetID to the Mage data exporter table_id section and further we need to transform the dictionary in step 11 back to a data frame.
16. Remember to install the google cloud packages from the SSH connection of the instance created in step 4 using commands sudo pip3 google-cloud and sudo pip3 google-cloud-bigquery.
17. Now run the data exporter code in Mage and reload BigQuery to have the tables in the dataset created there.
18. Now run SQL queries in BigQuery to get the table as required.
19. Go to looker studio and add the data table from BigQuery.
20. Finally, create the dashboard as needed using add charts, add controls, filters using Looker studio features.
21. For this project, I have used a filter section, then a summary and finally created a heatmap for the Pick up locations using the lattitude and longitude. 

 Looker Dashboard : https://lookerstudio.google.com/s/vnQpMUielDI   


Special thanks to @darshilparmar for creation of the project for educational purpose.
