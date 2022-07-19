
--Create new table from mlw_meta with plastic only
SELECT generalcode,
	   generalname
INTO plastic_names	   
FROM mlw_meta
WHERE category = 'Plastic';
SELECT * FROM  plastic_names;

--Create new table for plasticwaste in 2017
SELECT country,
		value
INTO year_2017
FROM pbt 
Where YEAR ='2017';
SELECT *FROM year_2017

--Create new table for plasticwaste in 2018
SELECT country,
		value
INTO year_2018
FROM pbt 
Where YEAR ='2018';
SELECT *FROM year_2018

--Create new table for plasticwaste in 2019
SELECT country,
		value
INTO year_2019
FROM pbt 
Where YEAR ='2019';
SELECT *FROM year_2019

--Create new table for plasticwaste in 2020
SELECT country,
		value
INTO year_2020
FROM pbt 
Where YEAR ='2020';
SELECT *FROM year_2020

--Create new table for plasticwaste in 2021
SELECT country,
		value
INTO year_2021
FROM pbt 
Where YEAR ='2021';
SELECT *FROM year_2021




	

