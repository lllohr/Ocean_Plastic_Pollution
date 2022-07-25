
--Create new table from mlw_meta with plastic only
SELECT generalcode,
	   generalname
INTO plastic_names	   
FROM Mlw_meta
WHERE category = 'Plastic';
SELECT * FROM  plastic_names;

--Create new table for plasticwaste in 2019
SELECT plastic_waste_mismanagement.Country,
INTO plastic_waste_countries
FROM Plastic_waste_mismanagement 
Where Year ='2019';

-- Create new table from mlw_data with codes G1-G100

SELECT BeachCountry, Beachname, BeachRegionalSea,BeachLength_m,BeachType
INTO plastic_numbers
FROM mlw_data
WHERE COLUMNS = G1 BETWEEN G100;



