------------------------CREATE DATABASE------------------------------

CREATE DATABASE  Aadhaar_Analytics;

-------------------------USE DATABASE --> Aadhaar_Analytics -----------

USE Aadhaar_Analytics;




------------------------------------------------------------------- DEFINE TABLES -----------------------------------------------------




-- 1. Aadhaar_Enrollment

CREATE TABLE  Aadhaar_Enrollment (
    record_id INT IDENTITY(1,1) PRIMARY KEY,
    data_date DATE,
    state VARCHAR(100),
    district VARCHAR(100),
    pincode VARCHAR(10),
    age_0_5 INT,
    age_5_17 INT,
    age_18_greater INT,
    source_file_name VARCHAR(255),
    load_timestamp DATETIME DEFAULT GETDATE()
);

-- 2. Aadhaar_Demographic_Update

CREATE TABLE Aadhaar_Demographic_Update (
    record_id INT IDENTITY(1,1) PRIMARY KEY,
    data_date DATE,
    state VARCHAR(100),
    district VARCHAR(100),
    pincode VARCHAR(10),
    age_5_17 INT,
    age_18_greater INT,
    source_file_name VARCHAR(255),
    load_timestamp DATETIME DEFAULT GETDATE()
);


--3. Aadhaar_Biometric



CREATE TABLE Aadhaar_Biometric_Update (
    record_id INT IDENTITY(1,1) PRIMARY KEY,
    data_date DATE,
    state VARCHAR(100),
    district VARCHAR(100),
    pincode VARCHAR(10),
    age_5_17 INT,
    age_18_greater INT,
    source_file_name VARCHAR(255),
    load_timestamp DATETIME DEFAULT GETDATE()
);

