# Ocean Plastic Pollution

![PET-bottles-marine-pollution](https://user-images.githubusercontent.com/96746207/180672719-8894e0fe-30fc-4a53-8e27-79a7180e139d.jpg)

## Collaborators:
- Andrea Dacy
- Laura Lohr
- Stephanie Perillo
- Amy Tisland 

##  Project Overview
The purpose of this project 
1. What are the top 10 types of plastic pollution in the ocean? 
2. Which countries pollute the most plastic?
3. How much plastic will be in the oceans by 2030?

Plastic pollution threatens food safety and quality, human health, coastal tourism, and contributes to climate change. Plastic pollution in the ocean has a devastating impact on marine life and ecosystems.
 
 ## Links to Tableau & Google Drive:

  [Click here for Dashboard](https://public.tableau.com/app/profile/amy.tisland/viz/PlasticPollution_16582737898620/Sheet4)

  [Click here for Presentation](https://docs.google.com/presentation/d/1l6FrRjoLzTBLbwETXVenxeLC7SDigTwAVvR8qT2YDxc/edit#slide=id.gb77f0cf075_0_0)

## Datasets:
1. https://www.kaggle.com/code/mihailpavlyuk/world-map-plasticwaste

2. https://www.coaps.fsu.edu/our-expertise/global-model-for-marine-litter

3. https://wesr.unep.org/downloader (Plastic on beach tonnes)) 

4. https://www.kaggle.com/datasets/maartenvandevelde/marine-litter-watch-19502021

## Analysis & Results

### Initial Data Analysis

#### Data Cleaning:

### Amazon Web Service (AWS) RDS instance & Database
1. Read in data from S3 Buckets for four csv files
2. Connect to the AWS RDS instance and wrote each dataframe into four tables

![connect AWS](https://user-images.githubusercontent.com/96746207/180674646-f3c935b6-8761-48af-8ffc-a56b1bef180a.png)

- [Click here for File](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/main/Database/Group%20Project_AWS_SQL%20(6).ipynb)

3.  An PostgreSQL database, "plasticpollutiondb " was created along with ten tables

![Tables](https://user-images.githubusercontent.com/96746207/180674816-20ac0442-eb09-4153-94d7-daf8bd0d9678.png)

- [Click here for Schema](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/main/Database/Plastic.sql)

 
### Machine Learning Model

To predict how much plastic will be in the oceans by 2030, we will use a linear regression model. 

 
## Dashboard 
- Dashboard was created in Tableau

## Summary & Recommendation

- 



