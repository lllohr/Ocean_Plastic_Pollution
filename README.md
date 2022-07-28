# Ocean Plastic Pollution

![PET-bottles-marine-pollution](https://user-images.githubusercontent.com/96746207/180672719-8894e0fe-30fc-4a53-8e27-79a7180e139d.jpg)

## Collaborators:
- Andrea Dacy
- Laura Lohr
- Stephanie Perillo
- Amy Tisland 

##  Project Overview
Plastic pollution threatens food safety and quality, human health, coastal tourism, and contributes to climate change. Plastic pollution in the ocean has a devastating impact on marine life and ecosystems.

The purpose of this project is to analyze data on mismanaged plastic in oceans.

We hope to answer the follow questions:
1. What are the most common types of plastic found in the ocean? 
2. Which countries pollute the most plastic?
3. Is there a correlation between a country's GDP (Gross Domestic Product) and ocean plastic pollution?

We chose to create visualizations of our findings in Tableau.
 
 ## Links to Tableau & Google Slides presentation:

  [Click here for Dashboard](https://public.tableau.com/app/profile/andrea.lee.dacy/viz/Ocean_Plastic_723/OceanPlasticPollutionOverview)

  [Click here for Presentation](https://docs.google.com/presentation/d/1l6FrRjoLzTBLbwETXVenxeLC7SDigTwAVvR8qT2YDxc/edit?usp=sharing)

## Datasets:
1. https://www.kaggle.com/code/mihailpavlyuk/world-map-plasticwaste

2. https://wesr.unep.org/downloader (Plastic on beach tonnes) 

3. https://www.kaggle.com/datasets/maartenvandevelde/marine-litter-watch-19502021

4. https://ourworldindata.org/grapher/per-capita-plastic-waste-vs-gdp-per-capita

----
## Analysis & Results

### Initial Data exploration phase
1. Dropping columns/excluding data
2. Elimination null values
3. Renaming columns
4. Assigning new values to Country codes and plastic pollution
5. Created a diagram to combine tables for PostgreSQL
- The image below represents the common connect between our datasets - country:

![QuickDBD-ocean_plastic_pollution](https://user-images.githubusercontent.com/96746207/181399878-1bd2fbae-3bd6-4e1d-a849-fd668410c974.png)


   
----
### Amazon Web Service (AWS) RDS instance & Database
1. Read in data from S3 Buckets for four CSV files
2. Connect to the AWS RDS instance and wrote each dataframe into four tables

![connect AWS](https://user-images.githubusercontent.com/96746207/180674646-f3c935b6-8761-48af-8ffc-a56b1bef180a.png)

- [Click here for File](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/main/Database/Group%20Project_AWS_SQL%20(6).ipynb)

3.  A PostgreSQL database, "plasticpollutiondb" was created along with ten tables

![Tables](https://user-images.githubusercontent.com/96746207/180674816-20ac0442-eb09-4153-94d7-daf8bd0d9678.png)

- [Click here for plastic Schema](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/main/Database/Plastic.sql)
- [Click here for plastic_2 Schema](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/main/Database/Plastic_2.sql)
----
 
### Machine Learning Model

**What machine learning models did we use?**

Primarily supervised learning models. We used K Means Clustering (unsupervised learning), linear regression, and logistic regression (both supervised learning). We used the Balanced Random Forest Classifier, Easy Ensemble Classifier, oversampling, undersampling, SMOTE Oversampling, and SMOTEENN. 

---
![Cluster Graph](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/7c6eb55148c7bee98ae37ade5c9c73915067f061/Machine_Learning/images/cluster_graph.png)

**Why did we choose the models we did?**

We used Linear Regression because it is the easiest and most popular models to look at relationships between the variables. 

We used Logistic Regression to try to predict whether or not a country’s GDP or population would determine how much plastic waste they had. For logistic regression, we used the Balanced Random Forest Classifier, Easy Ensemble Classifier, oversampling, undersampling, SMOTE Oversampling, and SMOTEENN because we wanted to use a variety of methods. 

We used various models because we wanted to see which model would give us the best results. We had previously used several supervised and unsupervised models in our class modules. We wanted to find the one that would have the best performance with our particular dataset and questions. 
 
**What was our process? How did we do it? What data did we use?**

We used two data sets that we merged—one containing the population and GDP and the other containing the metric tons data on plastic waste. 
For the logistic regression, we created bins to classify our metric tonnage for each country based upon their totals: Low, Medium, High, Extreme. Using these categories, we were able to run the data through the models and try to determine if there was any correlation. 

**What did our models find?**

Our models were not conclusive. 

Although not conclusively, our models did seem to indicate that countries with lower GDP had higer instances of mismanaged waste or mismanaged waste that was equal to the higher GDP countries. 

---
![Waste by GDP](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/7c6eb55148c7bee98ae37ade5c9c73915067f061/Machine_Learning/images/waste_by_gdp.png)

---

What we found was not what we expected. We expected that the higher the GDP and therefore, the higher the consumerism, the higher the plastic waste. 

---
![Top Country Contributors](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/7c6eb55148c7bee98ae37ade5c9c73915067f061/Machine_Learning/images/top_countries_mt.png)
--- 

**If we had more time, what would we explore next?**

If we had more time, we would explore the reasons why we did not find what we thought we would and look into other dynamics that our data did not illuminate for us. Where is this plastic waste coming from? Is it landfills? Sewers? Are countries importing waste to other countries? 

**What was the limitations of our data/machine learning models? What challenges did we have with creating/applying machine learning?**

Our data had only 492 rows. If we were to dig into this topic more robustly, we would likely want to look at larger data sets. An issue we ran into was that our data sets did not match. For example, for some of the years we had metrics on some variables but the other variables we wanted to explore were for other years. This complicated our process. We had already cleaned our data and prepared it for analysis before we realized that our data set was not as complete as we would have liked. 

## **Conclusions for Machine Learning**

China, India, Brazil, Indonesia, Nigeria, Pakistan, Bangladesh, Egypt were some of the highest contributors of mismanaged waste. We were able to see that through our clustering. 

----
![Map by Clusters](https://github.com/lllohr/Ocean_Plastic_Pollution/blob/7c6eb55148c7bee98ae37ade5c9c73915067f061/Machine_Learning/images/map_by_clusters.png)
----

Mismanaged waste does not increase by increase in GDP. There are outliers, however, our data did not support a direct correlation. 

----
 
## Dashboard 
- [Interactive dashboard](https://public.tableau.com/app/profile/andrea.lee.dacy/viz/Ocean_Plastic_723/OceanPlasticPollutionOverview) was created in Tableau

## Analysis Results

We found the countries that had the highest amounts of mismanaged plastic waste. 

----
# Recommendations and improvements for future analysis:
- Having more time in discovering data sets
- Choosing more robust data sets so that machine learning models are more effective
- Examine how much waste countries export to other countries 
- Find data on the types of plastic pollution found in areas outside of Europe
- Additional predictions considering [The Ocean Cleanup](https://theoceancleanup.com/)'s efforts of removing ocean garbage and intercepting river waste from entering oceans 





