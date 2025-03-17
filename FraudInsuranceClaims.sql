/*To select all the records*/
SELECT * FROM insurance_claims;

/*Selected Specific Columns for table result*/
SELECT months_as_customer, age, policy_number, total_claim_amount 
FROM insurance_claims;

/*Filter Records Based on a Condition*/
SELECT * 
FROM insurance_claims 
WHERE fraud_reported = 'Y';

/* Count the Number of Fraudulent Claims */
SELECT COUNT(*) AS fraudulent_claims 
FROM insurance_claims 
WHERE fraud_reported = 'Y';

/*Calculating the Average Claim Amount*/
SELECT AVG(total_claim_amount) AS average_claim_amount 
FROM insurance_claims;

/* Group By and Aggregate Data */
SELECT incident_type, COUNT(*) AS number_of_claims, AVG(total_claim_amount) AS average_claim_amount 
FROM insurance_claims 
GROUP BY incident_type;

/*Order By Total Claim Amount (Desc)*/
SELECT * 
FROM insurance_claims 
ORDER BY total_claim_amount DESC;

/*Multiple Conditions Filtering*/
SELECT * 
FROM insurance_claims 
WHERE incident_type = 'Multi-vehicle Collision' AND incident_severity = 'Major Damage';

/*Assume having an another table named customers and Join with insurance_claims table*/
SELECT ic.policy_number, ic.total_claim_amount, c.customer_name 
FROM insurance_claims ic
JOIN customers c ON ic.policy_number = c.policy_number;

/*Finding the Maximum Claim Amount*/
SELECT MAX(total_claim_amount) AS max_claim_amount 
FROM insurance_claims;

/*Finding the Minimum Claim Amount*/
SELECT MIN(total_claim_amount) AS min_claim_amount 
FROM insurance_claims;

/*Counting the number of Claims per State*/
SELECT policy_state, COUNT(*) AS number_of_claims 
FROM insurance_claims 
GROUP BY policy_state;

/*Filter by Date range*/
SELECT * 
FROM insurance_claims 
WHERE incident_date BETWEEN '2015-01-01' AND '2015-01-31';

/*Calculate the Total Claim Amount per State*/
SELECT policy_state, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY policy_state;

/* Finding the Claims with No Police Report*/
SELECT * 
FROM insurance_claims 
WHERE police_report_available = 'NO' OR police_report_available IS NULL;

/* Finding the Claims with Witnesses*/
SELECT * 
FROM insurance_claims 
WHERE witnesses > 0;

/*Calculating the Average Age of Customers*/
SELECT AVG(age) AS average_age 
FROM insurance_claims;

/*Finding the Claims with High Claim Amounts (Above a Threshold)*/
SELECT * 
FROM insurance_claims 
WHERE total_claim_amount > 50000;

/*Count the Number of Claims per Incident Type*/
SELECT incident_type, COUNT(*) AS number_of_claims 
FROM insurance_claims 
GROUP BY incident_type;

/*Finding Claims with Specific Auto Make*/
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota';

/*Calculating the Total Claim Amount per Auto Make*/
SELECT auto_make, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY auto_make;

/*Finding Claims with Specific Auto Model*/
SELECT * 
FROM insurance_claims 
WHERE auto_model = 'Camry';

/*Calculate the Average Claim Amount per Incident Severity*/
SELECT incident_severity, AVG(total_claim_amount) AS average_claim_amount 
FROM insurance_claims 
GROUP BY incident_severity;

/*Find Claims with Specific Incident City*/
SELECT * 
FROM insurance_claims 
WHERE incident_city = 'Columbus';

/*Calculate the Total Claim Amount per Incident City*/
SELECT incident_city, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY incident_city;

/*Find Claims with Specific Incident State*/
SELECT * 
FROM insurance_claims 
WHERE incident_state = 'OH';

/*Calculate the Total Claim Amount per Incident State*/
SELECT incident_state, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY incident_state;

/*Find Claims with Specific Incident Hour*/
SELECT * 
FROM insurance_claims 
WHERE incident_hour_of_the_day = 12;

/*Calculate the Total Claim Amount per Incident Hour*/
SELECT incident_hour_of_the_day, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY incident_hour_of_the_day;

/*Find Claims with Specific Number of Vehicles Involved*/
SELECT * 
FROM insurance_claims 
WHERE number_of_vehicles_involved = 3;

/* Calculate the Total Claim Amount per Number of Vehicles Involved*/
SELECT number_of_vehicles_involved, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY number_of_vehicles_involved;

/*Finding Claims with Specific Property Damage*/
SELECT * 
FROM insurance_claims 
WHERE property_damage = 'YES';

/*Calculate the Total Claim Amount per Property Damage*/
SELECT property_damage, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY property_damage;

/*Find Claims with Specific Bodily Injuries*/
SELECT * 
FROM insurance_claims 
WHERE bodily_injuries > 0;

/*Calculate the Total Claim Amount per Bodily Injuries*/
SELECT bodily_injuries, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY bodily_injuries;

/*Find Claims with Specific Authorities Contacted*/
SELECT * 
FROM insurance_claims 
WHERE authorities_contacted = 'Police';

/*Calculate the Total Claim Amount per Authorities Contacted*/
SELECT authorities_contacted, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY authorities_contacted;

/*Find Claims with Specific Incident Location*/
SELECT * 
FROM insurance_claims 
WHERE incident_location LIKE '%Drive%';

/*Calculate the Total Claim Amount per Incident Location*/
SELECT incident_location, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY incident_location;

/*Find Claims with Specific Incident Date*/
SELECT * 
FROM insurance_claims 
WHERE incident_date = '2015-01-25';

/*Calculate the Total Claim Amount per Incident Date*/
SELECT incident_date, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY incident_date;

/*Find Claims with Specific Incident Type and Severity*/
SELECT * 
FROM insurance_claims 
WHERE incident_type = 'Multi-vehicle Collision' AND incident_severity = 'Major Damage';

/*Calculate the Total Claim Amount per Incident Type and Severity*/
SELECT incident_type, incident_severity, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY incident_type, incident_severity;

/*Find Claims with Specific Auto Year*/
SELECT * 
FROM insurance_claims 
WHERE auto_year = 2015;

/*Calculating the Total Claim Amount per Auto Year*/
SELECT auto_year, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY auto_year;

/*Find Claims with Specific Auto Make and Model*/
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' AND auto_model = 'Camry';

/*Calculating the Total Claim Amount per Auto Make and Model*/
SELECT auto_make, auto_model, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY auto_make, auto_model;

/*Find Claims with Specific Auto Make, Model, and Year*/
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' AND auto_model = 'Camry' AND auto_year = 2015;

/*Calculate the Total Claim Amount per Auto Make, Model, and Year*/
SELECT auto_make, auto_model, auto_year, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY auto_make, auto_model, auto_year;

/*Find Claims with Specific Auto Make, Model, and Year and Incident Type*/
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' AND auto_model = 'Camry' AND auto_year = 2015 AND incident_type = 'Multi-vehicle Collision';

/* Calculate the Total Claim Amount per Auto Make, Model, Year, and Incident Type*/
SELECT auto_make, auto_model, auto_year, incident_type, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY auto_make, auto_model, auto_year, incident_type;
/* Find Claims with Specific Auto Make, Model, Year, Incident Type, and Severity */
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' AND auto_model = 'Camry' AND auto_year = 2015 AND incident_type = 'Multi-vehicle Collision' AND incident_severity = 'Major Damage';

/* Calculate the Total Claim Amount per Auto Make, Model, Year, Incident Type, and Severity*/
SELECT auto_make, auto_model, auto_year, incident_type, incident_severity, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
GROUP BY auto_make, auto_model, auto_year, incident_type, incident_severity;

/* Find Claims with Specific Auto Make, Model, Year, Incident Type, Severity, and Date Range */
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' AND auto_model = 'Camry' AND auto_year = 2015 AND incident_type = 'Multi-vehicle Collision' AND incident_severity = 'Major Damage' AND incident_date BETWEEN '2015-01-01' AND '2015-01-31';

/* Calculate the Total Claim Amount per Auto Make, Model, Year, Incident Type, Severity, and Date Range */
SELECT auto_make, auto_model, auto_year, incident_type, incident_severity, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
WHERE incident_date BETWEEN '2015-01-01' AND '2015-01-31'
GROUP BY auto_make, auto_model, auto_year, incident_type, incident_severity;

/*Find Claims with Specific Auto Make, Model, Year, Incident Type, Severity, Date Range, and State*/
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' AND auto_model = 'Camry' AND auto_year = 2015 AND incident_type = 'Multi-vehicle Collision' AND incident_severity = 'Major Damage' AND incident_date BETWEEN '2015-01-01' AND '2015-01-31' AND policy_state = 'OH';

/* Calculate the Total Claim Amount per Auto Make, Model, Year, Incident Type, Severity, Date Range, and State*/
SELECT auto_make, auto_model, auto_year, incident_type, incident_severity, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
WHERE incident_date BETWEEN '2015-01-01' AND '2015-01-31' AND policy_state = 'OH'
GROUP BY auto_make, auto_model, auto_year, incident_type, incident_severity;

/*Find Claims with Specific Auto Make, Model, Year, Incident Type, Severity, Date Range, State, and City*/
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' AND auto_model = 'Camry' AND auto_year = 2015 AND incident_type = 'Multi-vehicle Collision' AND incident_severity = 'Major Damage' AND incident_date BETWEEN '2015-01-01' AND '2015-01-31' AND policy_state = 'OH' AND incident_city = 'Columbus';

/*Calculate the Total Claim Amount per Auto Make, Model, Year, Incident Type, Severity, Date Range, State, and City*/
SELECT auto_make, auto_model, auto_year, incident_type, incident_severity, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
WHERE incident_date BETWEEN '2015-01-01' AND '2015-01-31' AND policy_state = 'OH' AND incident_city = 'Columbus'
GROUP BY auto_make, auto_model, auto_year, incident_type, incident_severity;
/* Find Claims with Specific Auto Make, Model, Year, Incident Type, Severity, Date Range, State, City, and Hour*/
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' AND auto_model = 'Camry' AND auto_year = 2015 AND incident_type = 'Multi-vehicle Collision' AND incident_severity = 'Major Damage' AND incident_date BETWEEN '2015-01-01' AND '2015-01-31' AND policy_state = 'OH' AND incident_city = 'Columbus' AND incident_hour_of_the_day = 12;

/*Calculate the Total Claim Amount per Auto Make, Model, Year, Incident Type, Severity, Date Range, State, City, and Hour*/
SELECT auto_make, auto_model, auto_year, incident_type, incident_severity, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
WHERE incident_date BETWEEN '2015-01-01' AND '2015-01-31' AND policy_state = 'OH' AND incident_city = 'Columbus' AND incident_hour_of_the_day = 12
GROUP BY auto_make, auto_model, auto_year, incident_type, incident_severity;

/* Find Claims with Specific Auto Make, Model, Year, Incident Type, Severity, Date Range, State, City, Hour, and Number of Vehicles*/
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' AND auto_model = 'Camry' AND auto_year = 2015 AND incident_type = 'Multi-vehicle Collision' AND incident_severity = 'Major Damage' AND incident_date BETWEEN '2015-01-01' AND '2015-01-31' AND policy_state = 'OH' AND incident_city = 'Columbus' AND incident_hour_of_the_day = 12 AND number_of_vehicles_involved = 3;

/* Calculate the Total Claim Amount per Auto Make, Model, Year, Incident Type, Severity, Date Range, State, City, Hour, and Number of Vehicles*/
SELECT auto_make, auto_model, auto_year, incident_type, incident_severity, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
WHERE incident_date BETWEEN '2015-01-01' AND '2015-01-31' AND policy_state = 'OH' AND incident_city = 'Columbus' AND incident_hour_of_the_day = 12 AND number_of_vehicles_involved = 3
GROUP BY auto_make, auto_model, auto_year, incident_type, incident_severity;

/* Find Claims with Specific Auto Make, Model, Year, Incident Type, Severity, Date Range, State, City, Hour, Number of Vehicles, and Property Damage*/
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' AND auto_model = 'Camry' AND auto_year = 2015 AND incident_type = 'Multi-vehicle Collision' AND incident_severity = 'Major Damage' AND incident_date BETWEEN '2015-01-01' AND '2015-01-31' AND policy_state = 'OH' AND incident_city = 'Columbus' AND incident_hour_of_the_day = 12 AND number_of_vehicles_involved = 3 AND property_damage = 'YES';

/*Calculate the Total Claim Amount per Auto Make, Model, Year, Incident Type, Severity, Date Range, State, City, Hour, Number of Vehicles, and Property Damage*/
SELECT auto_make, auto_model, auto_year, incident_type, incident_severity, SUM(total_claim_amount) AS total_claim_amount 
FROM insurance_claims 
WHERE incident_date BETWEEN '2015-01-01' AND '2015-01-31' AND policy_state = 'OH' AND incident_city = 'Columbus' AND incident_hour_of_the_day = 12 AND number_of_vehicles_involved = 3 AND property_damage = 'YES'
GROUP BY auto_make, auto_model, auto_year, incident_type, incident_severity;

/* Find Claims with Specific Auto Make, Model, Year, Incident Type, Severity, Date Range, State, City, Hour, Number of Vehicles, Property Damage, and Bodily Injuries*/
SELECT * 
FROM insurance_claims 
WHERE auto_make = 'Toyota' 
AND auto_model = 'Camry' 
AND auto_year = 2015 
AND incident_type = 'Multi-vehicle Collision' 
AND incident_severity = 'Major Damage' 
AND incident_date BETWEEN '2015-01-01' 
AND '2015-01-31' AND policy_state = 'OH' 
AND incident_city = 'Columbus'  
AND incident_hour_of_the_day = 12 
AND number_of_vehicles_involved = 3  
AND property_damage = 'YES'  
AND bodily_injuries > 0;
