--Create new table for country based on plastics
SELECT md.BeachCountry,
       md.BeachName,
	   md.BeachRegionalSea,
	   md.BeachLength_m,
	   md.G1 - md.G124
	   mm.generalcode
	   mm.category
INTO plastic_waste
FROM MLW_data as md
LEFT JOIN Mlw_meta as mm
ON (mm.generalcode between md.G1 AND md.G124 )
WHERE mm.category = "Plastics";
	  