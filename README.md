# Ocean Plastic Pollution

![PET-bottles-marine-pollution](https://user-images.githubusercontent.com/96746207/180672719-8894e0fe-30fc-4a53-8e27-79a7180e139d.jpg)

## Collaborators:
- Andrea Dacy
- Laura Lohr
- Stephanie Perillo
- Amy Tisland 

##  Project Overview
Plastic pollution threatens food safety and quality, human health, coastal tourism, and contributes to climate change. Plastic pollution in the ocean has a devastating impact on marine life and ecosystems.

The purpose of this project 
1. What are the most common type of plastic found in the ocean? 
2. Which countries pollute the most plastic?
3. How much plastic will be in the oceans by 2030?


 
 ## Links to Tableau & Google Drive:

  [Click here for Dashboard](https://public.tableau.com/app/profile/andrea.lee.dacy/viz/Ocean_Plastic_723/OceanPlasticPollutionOverview)

  [Click here for Presentation](https://docs.google.com/presentation/d/1l6FrRjoLzTBLbwETXVenxeLC7SDigTwAVvR8qT2YDxc/edit?usp=sharing)

## Datasets:
1. https://www.kaggle.com/code/mihailpavlyuk/world-map-plasticwaste

2. https://wesr.unep.org/downloader (Plastic on beach tonnes)) 

3. https://www.kaggle.com/datasets/maartenvandevelde/marine-litter-watch-19502021

## Analysis & Results

### Initial Data exploration phase
1. Dropping columns/excluding data
2. Elimination null values
3. Renaming columns
4. Assigning new vaules to Country codes and plastic pollution
5. Created a diagram to combine tables for PostgreSQL
- The image below represents the common connect between our datasets, country:

![QuickDBD-ocean_plastic_pollution](https://user-images.githubusercontent.com/96746207/181399878-1bd2fbae-3bd6-4e1d-a849-fd668410c974.png)


   

### Amazon Web Service (AWS) RDS instance & Database
1. Read in data from S3 Buckets for four CSV files
2. Connect to the AWS RDS instance and wrote each dataframe into four tables

![connect AWS](https://user-images.githubusercontent.com/96746207/180674646-f3c935b6-8761-48af-8ffc-a56b1bef180a.png)

- [Click here for File](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/main/Database/Group%20Project_AWS_SQL%20(6).ipynb)

3.  An PostgreSQL database, "plasticpollutiondb" was created along with ten tables

![Tables](https://user-images.githubusercontent.com/96746207/180674816-20ac0442-eb09-4153-94d7-daf8bd0d9678.png)

- [Click here for plastic Schema](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/main/Database/Plastic.sql)
- [Click here for plastic_2 Schema](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/main/Database/Plastic_2.sql)

 
### Machine Learning Model

To predict how much plastic will be in the oceans by 2030, we will use a linear regression model. 

 
## Dashboard 
- Interactive dashboard was created in Tableau

## Analysis Results
write something here

Recommendations and improvements for future analysis:
- Having more time in discovering data sets





