
--------------------------1. INSERT DATA INTO Aadhaar_Demographic Update Data-------------------------------


-----------------1.1 CREATE A TABLE Aadhaar_Demographic_Staging ------------------------


CREATE TABLE Aadhaar_Demography_Staging (
    data_date VARCHAR(20),
    state VARCHAR(100),
    district VARCHAR(100),
    pincode VARCHAR(10),
    age_5_17 INT,
    age_18_greater INT
);




--------------- INSERT DATA INTO Aadhaar_Demographic_Staging




----- INSERT 1st FILE


BULK INSERT Aadhaar_Demography_Staging
FROM 'F:\DA-P3-AADHAAR_ANALYTICS\Datasets\Demographic_Update\A_Demo_1.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);


----- MOVE 1st FILE


INSERT INTO Aadhaar_Demographic_Update
(
    data_date,
    state,
    district,
    pincode,
    age_5_17,
    age_18_greater,
    source_file_name
)
SELECT
    CONVERT(DATE, data_date, 105) AS data_date,
    state,
    district,
    pincode,
    age_5_17,
    age_18_greater,
    'A_Demo_1.csv'
FROM Aadhaar_Demography_Staging;


----- DELETE ALL ROWS FROM Aadhaar_Demography_Staging AND MAKE READY FOR THE NEW FILE UPLOAD


DELETE FROM dbo.[Aadhaar_Demography_Staging];






----- INSERT 2nd FILE

BULK INSERT Aadhaar_Demography_Staging
FROM 'F:\DA-P3-AADHAAR_ANALYTICS\Datasets\Demographic_Update\A_Demo_2.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

----- MOVE 2nd FILE

INSERT INTO Aadhaar_Demographic_Update
(
    data_date,
    state,
    district,
    pincode,
    age_5_17,
    age_18_greater,
    source_file_name
)
SELECT
    CONVERT(DATE, data_date, 105) AS data_date,
    state,
    district,
    pincode,
    age_5_17,
    age_18_greater,
    'A_Demo_2.csv'
FROM Aadhaar_Demography_Staging;

----- DELETE ALL ROWS FROM Aadhaar_Demography_Staging AND MAKE READY FOR THE NEW FILE UPLOAD

DELETE FROM dbo.[Aadhaar_Demography_Staging];





----- INSERT 3rd FILE

BULK INSERT Aadhaar_Demography_Staging
FROM 'F:\DA-P3-AADHAAR_ANALYTICS\Datasets\Demographic_Update\A_Demo_3.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);


----- MOVE 3rd FILE

INSERT INTO Aadhaar_Demographic_Update
(
    data_date,
    state,
    district,
    pincode,
    age_5_17,
    age_18_greater,
    source_file_name
)
SELECT
    CONVERT(DATE, data_date, 105) AS data_date,
    state,
    district,
    pincode,
    age_5_17,
    age_18_greater,
    'A_Demo_3.csv'
FROM Aadhaar_Demography_Staging;


----- DELETE ALL ROWS FROM Aadhaar_Demography_Staging AND MAKE READY FOR THE NEW FILE UPLOAD

DELETE FROM dbo.[Aadhaar_Demography_Staging];





----- INSERT 4th FILE

BULK INSERT Aadhaar_Demography_Staging
FROM 'F:\DA-P3-AADHAAR_ANALYTICS\Datasets\Demographic_Update\A_Demo_4.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);


----- MOVE 4th FILE

INSERT INTO Aadhaar_Demographic_Update
(
    data_date,
    state,
    district,
    pincode,
    age_5_17,
    age_18_greater,
    source_file_name
)
SELECT
    CONVERT(DATE, data_date, 105) AS data_date,
    state,
    district,
    pincode,
    age_5_17,
    age_18_greater,
    'A_Demo_4.csv'
FROM Aadhaar_Demography_Staging;

----- DELETE ALL ROWS FROM Aadhaar_Demography_Staging AND MAKE READY FOR THE NEW FILE UPLOAD

DELETE FROM dbo.[Aadhaar_Demography_Staging];







----- INSERT 5th FILE

BULK INSERT Aadhaar_Demography_Staging
FROM 'F:\DA-P3-AADHAAR_ANALYTICS\Datasets\Demographic_Update\A_Demo_5.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);


----- MOVE 5th FILE

INSERT INTO Aadhaar_Demographic_Update
(
    data_date,
    state,
    district,
    pincode,
    age_5_17,
    age_18_greater,
    source_file_name
)
SELECT
    CONVERT(DATE, data_date, 105) AS data_date,
    state,
    district,
    pincode,
    age_5_17,
    age_18_greater,
    'A_Demo_5.csv'
FROM Aadhaar_Demography_Staging;

----- DELETE ALL ROWS FROM Aadhaar_Demography_Staging AND MAKE READY FOR THE NEW FILE UPLOAD

DELETE FROM dbo.[Aadhaar_Demography_Staging];


------------------------------------------------------------------------------------------------------------------------------------


DROP TABLE dbo.[Aadhaar_Demography_Staging]


