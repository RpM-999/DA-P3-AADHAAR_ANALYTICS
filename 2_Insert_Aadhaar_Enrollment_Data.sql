
--------------------------1. INSERT DATA INTO Aadhaar_Enrollment -------------------------------


----------------- CREATE A TABLE Aadhaar_Enrollment_Staging ------------------------


CREATE TABLE Aadhaar_Enrollment_Staging (
    data_date VARCHAR(20),
    state VARCHAR(100),
    district VARCHAR(100),
    pincode VARCHAR(10),
    age_0_5 INT,
    age_5_17 INT,
    age_18_greater INT
);




--------------- INSER DATA INTO Aadhaar_Enrollment_Staging




----- INSERT 1st FILE


BULK INSERT Aadhaar_Enrollment_Staging
FROM 'F:\DA-P3-AADHAAR_ANALYTICS\Datasets\New_Enrollment\A_Enr_1.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);


----- MOVE 1st FILE


INSERT INTO Aadhaar_Enrollment
(
    data_date,
    state,
    district,
    pincode,
    age_0_5,
    age_5_17,
    age_18_greater,
    source_file_name
)
SELECT
    CONVERT(DATE, data_date, 105) AS data_date,
    state,
    district,
    pincode,
    age_0_5,
    age_5_17,
    age_18_greater,
    'A_Enr_1.csv'
FROM Aadhaar_Enrollment_Staging;


----- DELETE ALL ROWS FROM Aadhaar_Enrollment_Staging AND MAKE READY FOR THE NEW FILE UPLOAD


DELETE FROM dbo.[Aadhaar_Enrollment_Staging];






----- INSERT 2nd FILE

BULK INSERT Aadhaar_Enrollment_Staging
FROM 'F:\DA-P3-AADHAAR_ANALYTICS\Datasets\New_Enrollment\A_Enr_2.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

----- MOVE 2nd FILE

INSERT INTO Aadhaar_Enrollment
(
    data_date,
    state,
    district,
    pincode,
    age_0_5,
    age_5_17,
    age_18_greater,
    source_file_name
)
SELECT
    CONVERT(DATE, data_date, 105) AS data_date,
    state,
    district,
    pincode,
    age_0_5,
    age_5_17,
    age_18_greater,
    'A_Enr_2.csv'
FROM Aadhaar_Enrollment_Staging;

----- DELETE ALL ROWS FROM Aadhaar_Enrollment_Staging AND MAKE READY FOR THE NEW FILE UPLOAD

DELETE FROM dbo.[Aadhaar_Enrollment_Staging];





----- INSERT 3rd FILE

BULK INSERT Aadhaar_Enrollment_Staging
FROM 'F:\DA-P3-AADHAAR_ANALYTICS\Datasets\New_Enrollment\A_Enr_3.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);


----- MOVE 3rd FILE

INSERT INTO Aadhaar_Enrollment
(
    data_date,
    state,
    district,
    pincode,
    age_0_5,
    age_5_17,
    age_18_greater,
    source_file_name
)
SELECT
    CONVERT(DATE, data_date, 105) AS data_date,
    state,
    district,
    pincode,
    age_0_5,
    age_5_17,
    age_18_greater,
    'A_Enr_3.csv'
FROM Aadhaar_Enrollment_Staging;

----- DELETE ALL ROWS FROM Aadhaar_Enrollment_Staging AND MAKE READY FOR THE NEW FILE UPLOAD

DELETE FROM dbo.[Aadhaar_Enrollment_Staging];



--------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE dbo.[Aadhaar_Enrollment_Staging]