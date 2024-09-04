CREATE DATABASE Happy_Docs_Leeds;

USE Happy_Docs_Leeds;

CREATE TABLE Patient_Details (
	Patient_Details_ID INT NOT NULL AUTO_INCREMENT,
	First_Name VARCHAR (30) NOT NULL,
	Last_Name VARCHAR (30) NOT NULL,
	Height_in_metres DECIMAL (4,2),
	Weight_in_kilograms DECIMAL (4,1),
	DOB DATE,
	Patient_Contact_ID INT NOT NULL,
CONSTRAINT PK_Patient_Details_ID PRIMARY KEY (Patient_Details_ID)
);


CREATE TABLE Patient_Contact (
	Patient_Contact_ID INT NOT NULL AUTO_INCREMENT,
	Patient_Details_ID INT NOT NULL,
	Email VARCHAR (60) NULL,
	Home_Phone VARCHAR (20) NULL,
	Mobile VARCHAR (20) NULL,
	Patient_Address_ID INT NOT NULL, 
CONSTRAINT PK_Patient_Contact PRIMARY KEY (Patient_Contact_ID),
CONSTRAINT FK_Patient_Contact FOREIGN KEY (Patient_Details_ID) REFERENCES Patient_Details (Patient_Details_ID)
);


CREATE TABLE Patient_Address (
	Patient_Address_ID INT NOT NULL AUTO_INCREMENT,
	Address_Line_1 VARCHAR (60),
	County VARCHAR (20),
	City VARCHAR (20),
	Postcode VARCHAR (20),
	Patient_Contact_ID INT NOT NULL,
CONSTRAINT PK_Patient_Address PRIMARY KEY (Patient_Address_ID),
CONSTRAINT FK_Patient_Address FOREIGN KEY (Patient_Contact_ID) REFERENCES Patient_Contact (Patient_Contact_ID)
);


CREATE TABLE BMI_Tracking (
	BMI_Tracking_ID INT NOT NULL AUTO_INCREMENT,
	Patient_Details_ID INT NOT NULL,
	BMI DECIMAL (4,2),
	Date_Of_Record DATE,
	Date_Of_Contact DATE,
CONSTRAINT PK_BMI_Tracking PRIMARY KEY (BMI_Tracking_ID),
CONSTRAINT FK_BMI_Tracking FOREIGN KEY (Patient_Details_ID) REFERENCES Patient_Details (Patient_Details_ID)
);

CREATE TABLE Prescription_Orders (
	Prescription_Orders_ID INT NOT NULL AUTO_INCREMENT,
	Patient_Details_ID INT NOT NULL,
	Item_Name VARCHAR (50),
	Item_Amount VARCHAR (20),
	Repeat_Prescription VARCHAR (1),
	Dispense_Date DATE,
CONSTRAINT PK_Prescription_Orders PRIMARY KEY (Prescription_Orders_ID),
CONSTRAINT FK_Prescription_Orders FOREIGN KEY (Patient_Details_ID) REFERENCES Patient_Details (Patient_Details_ID)
);

CREATE TABLE Repeat_Prescriptions (
	Repeat_Prescriptions_ID INT NOT NULL AUTO_INCREMENT,
	Prescription_Orders_ID INT NOT NULL,
	Last_Dispensed DATE,
	Next_Dispense_Due DATE,
	Review_Date DATE,
CONSTRAINT PK_Repeat_Prescriptions PRIMARY KEY (Repeat_prescriptions_ID),
CONSTRAINT FK_Repeat_Prescriptions FOREIGN KEY (Prescription_Orders_ID) REFERENCES Prescription_Orders (Prescription_Orders_ID)
);

CREATE TABLE Vaccinations (
	Vaccinations_ID INT NOT NULL AUTO_INCREMENT,
	Patient_Details_ID INT NOT NULL,
	Vaccination_Name VARCHAR (50),
	Vaccination_Date DATE,
	Vaccine_Administered VARCHAR (1),
CONSTRAINT PK_Vaccinations PRIMARY KEY (Vaccinations_ID),
CONSTRAINT FK_Vaccinations FOREIGN KEY (Patient_Details_ID) REFERENCES Patient_Details (Patient_Details_ID)
);

CREATE TABLE Patient_Blood_Tests (
	Patient_Blood_Tests_ID INT NOT NULL AUTO_INCREMENT,
	Patient_Details_ID INT NOT NULL,
	Blood_Test_Needed VARCHAR (60),
	Blood_Test_Date DATE,
	Bloods_Taken VARCHAR (1),
CONSTRAINT PK_Patient_Blood_Tests PRIMARY KEY (Patient_Blood_Tests_ID),
CONSTRAINT FK_Patient_Blood_Tests FOREIGN KEY (Patient_Details_ID) REFERENCES Patient_Details (Patient_Details_ID)
);

CREATE TABLE Blood_Test_Results (
	Blood_Test_Results_ID INT NOT NULL AUTO_INCREMENT,
	Patient_Blood_Tests_ID INT NOT NULL,
	Date_Expected DATE,
	Date_Recieved DATE,
	Patient_Follow_Up_Needed VARCHAR (10),
CONSTRAINT PK_Blood_Test_Results PRIMARY KEY (Blood_Test_Results_ID),
CONSTRAINT FK_Blood_Test_Results FOREIGN KEY (Patient_Blood_Tests_ID) REFERENCES Patient_Blood_Tests (Patient_Blood_Tests_ID)
);

CREATE TABLE Deceased (
	Deceased_ID INT NOT NULL AUTO_INCREMENT,
	Patient_Details_ID INT NOT NULL,
	DOB DATE,
	DOD DATE,
	Cause VARCHAR (60),
	Removed_From_System VARCHAR (1),
CONSTRAINT PK_Deceased PRIMARY KEY (Deceased_ID),
CONSTRAINT FK_Deceased FOREIGN KEY (Patient_Details_ID) REFERENCES Patient_Details (Patient_Details_ID)
);