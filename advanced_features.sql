-- join that combines multiple tables
SELECT 	pd.First_Name
	  , pd.Last_Name
	  , pbt.Blood_Test_Needed
FROM 	Patient_Details AS pd
JOIN 	Patient_Blood_Tests AS pbt ON pd.Patient_Details_ID = pbt.Patient_Details_ID;

-- a stored function
DELIMITER //
CREATE FUNCTION total_patients() RETURNS INT
DETERMINISTIC
BEGIN
   DECLARE total INT;
   SELECT COUNT(*) INTO total FROM Patient_Details;
   RETURN total;
END //
DELIMITER ;


-- example query with subquery to show how to extract from from this database
SELECT  pd.First_Name
	  , pd.Last_Name
	  , pa.Address_Line_1
	  , pa.County, pa.City
	  , pa.Postcode
	  , pbt.Blood_Test_Needed
FROM (Patient_Address pa 
JOIN Patient_Contact pc ON pa.Patient_Address_ID = pc.Patient_Address_ID)

JOIN Patient_Details pd ON pc.Patient_Details_ID = pd.Patient_Details_ID
JOIN Patient_Blood_Tests pbt ON pc.Patient_Details_ID = pbt.Patient_Details_ID;

-- database diagram where all table relations are shown.

-- create a stored procedure and demonstrate how it runs
DELIMITER //
CREATE PROCEDURE count_total_patients(total INT)
BEGIN
   SELECT COUNT(*) 
   INTO @total 
   FROM Patient_Details;
END // 
DELIMITER ;

CALL count_total_patients(@total);
SELECT @total;

-- create a trigger and demonstrate how it runs
DELIMITER //
CREATE TRIGGER after_insert_pd
AFTER INSERT ON Patient_Details 
FOR EACH ROW 
BEGIN 
DECLARE bmi DECIMAL(4,2);
    SET bmi = NEW.Weight_in_kilograms / (NEW.Height_in_metres * NEW.Height_in_metres);
    INSERT INTO bmi_tracking(Patient_Details_ID, bmi, Date_Of_Record) VALUES (NEW.Patient_Details_ID, bmi, NOW());
END //
DELIMITER ;

-- create an event
SET GLOBAL event_scheduler = ON;
DELIMITER //
CREATE EVENT remove_deceased
ON SCHEDULE EVERY 2 SECOND
STARTS NOW()
DO BEGIN
	UPDATE Deceased
SET Removed_From_System = 'Y';
END //
DELIMITER ;

-- create a view that uses at least 3-4 base tables and prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis
CREATE VIEW vw_vaccine_not_received AS
SELECT 	pd.First_Name
	  , pd.Last_Name
	  , v.Vaccination_Name
FROM 	Patient_Details AS pd
JOIN 	Vaccinations AS v ON pd.Patient_Details_ID = v.Patient_Details_ID
    WHERE Vaccine_Administered = 'N' 
	WITH CHECK OPTION;
    
SELECT * FROM vw_vaccine_not_received;
        
    -- prepare an example query with GROUP BY and having to demonstrate how to extract data form the database for analysis
SELECT 	pd.First_Name
	  , pd.Last_Name
	  , per.Item_Name
FROM 	Patient_Details AS pd
JOIN 	Prescription_Orders AS per ON pd.Patient_Details_ID = per.Patient_Details_ID
GROUP BY Last_Name;