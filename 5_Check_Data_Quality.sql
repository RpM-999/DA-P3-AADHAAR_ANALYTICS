---------------------------------------- UNIQ STATES IN DEMOGRAPHIC UPDATE DATASET ----------------------------------




SELECT DISTINCT [state]
FROM [Aadhaar_Demographic_Update]


-----------------> THERE ROWS WHOSE STATE = 100000 (CHECK HOW MANY ROWS ARE THERE)


SELECT *
FROM dbo.[Aadhaar_Demographic_Update]
WHERE [state] = '100000'


-----------------> THERE ARE 2 SUCH ROWS (record_ID : 795162 , 2007371) (DELETE THESE ROWS)


DELETE FROM dbo.[Aadhaar_Demographic_Update]
WHERE [record_id] IN (795162, 2007371)


-----------------> COUNT # DISTINCT STATES


SELECT COUNT(DISTINCT [state])
FROM dbo.[Aadhaar_Demographic_Update]               ----> 57 UNIQ (BUT INDIA HAS 28 STATE + 8 UT = 36 ONLY)


------------------> DOWNLOAD LIST OF THE UNIQ STATES FROM DATASET, AMD MAP TO ACTUAL STATES OF INDIA






---------------------------------------- UNIQ STATES IN BIOMETRIC UPDATE DATASET ----------------------------------

SELECT DISTINCT [state]
FROM [Aadhaar_Biometric_Update]


SELECT COUNT(DISTINCT [state]) AS B
FROM DBO.[Aadhaar_Biometric_Update]              -----> 50 UNIQ STATES


---------------------------------------- UNIQ STATES IN ENROLLMENT DATASET ----------------------------------

SELECT DISTINCT [state]
FROM [Aadhaar_Enrollment]


-----------------> THERE ROWS WHOSE STATE = 100000 (CHECK HOW MANY ROWS ARE THERE)

SELECT *
FROM dbo.[Aadhaar_Enrollment]
WHERE [state] = '100000'

-----------------> THERE ARE 22 SUCH ROWS (DELETE THESE ROWS)

DELETE FROM dbo.[Aadhaar_Enrollment]
WHERE [record_id] IN (SELECT [record_id]
                      FROM dbo.[Aadhaar_Enrollment]
                      WHERE [state] = '100000')

------------------> COUNT # DISTINCT STATES

SELECT COUNT(DISTINCT [state])
FROM dbo.[Aadhaar_Enrollment]               -----> 48 UNIQ STATES


---------------------------------------- FINAL COUNT OF UNIQUE STATES IN ALL 3 DATASETS ----------------------------------



SELECT COUNT(DISTINCT [state]) AS Demographic_
FROM DBO.[Aadhaar_Demographic_Update]

SELECT COUNT(DISTINCT [state]) AS Biometric_
FROM DBO.[Aadhaar_Biometric_Update]

SELECT COUNT(DISTINCT [state]) AS Enrollment_
FROM DBO.[Aadhaar_Enrollment]




---------------------------------------- CHECK FOR NULL/EMPTY VALUES IN STATE COLUMN ----------------------------------

SELECT *
FROM dbo.[Aadhaar_Demographic_Update]
WHERE [state] IS NULL OR LTRIM(RTRIM([state])) = ''


SELECT *
FROM dbo.[Aadhaar_Biometric_Update]
WHERE [state] IS NULL OR LTRIM(RTRIM([state])) = ''


SELECT *
FROM dbo.[Aadhaar_Enrollment]
WHERE [state] IS NULL OR LTRIM(RTRIM([state])) = ''





---------------------------------------- UNIQ DISTRICTS IN DEMOGRAPHIC UPDATE DATASET ----------------------------------




SELECT DISTINCT [district]
FROM [Aadhaar_Demographic_Update]


-----------------> COUNT # DISTINCT DISTRICTS

SELECT COUNT(DISTINCT [district])
FROM dbo.[Aadhaar_Demographic_Update]               ----> 961 UNIQ




---------------------------------------- UNIQ DISTRICTS IN BIOMETRIC UPDATE DATASET ----------------------------------  




SELECT DISTINCT [district]
FROM [Aadhaar_Biometric_Update]

-----------------> COUNT # DISTINCT DISTRICTS

SELECT COUNT(DISTINCT [district])
FROM dbo.[Aadhaar_Biometric_Update]               ----> 950 UNIQ




---------------------------------------- UNIQ DISTRICTS IN ENROLLMENT DATASET ----------------------------------




SELECT DISTINCT [district]
FROM [Aadhaar_Enrollment]

-----------------> COUNT # DISTINCT DISTRICTS  

SELECT COUNT(DISTINCT [district])
FROM dbo.[Aadhaar_Enrollment]               ----> 964 UNIQ



---------------------------------------- CHECK FOR NULL/EMPTY VALUES IN DISTRICT COLUMN ----------------------------------


SELECT *
FROM dbo.[Aadhaar_Demographic_Update]
WHERE [district] IS NULL OR LTRIM(RTRIM([district])) = ''


SELECT *
FROM dbo.[Aadhaar_Biometric_Update]
WHERE [district] IS NULL OR LTRIM(RTRIM([district])) = ''


SELECT *
FROM dbo.[Aadhaar_Enrollment]   
WHERE [district] IS NULL OR LTRIM(RTRIM([district])) = ''





------------------------------------- CHECK FOR NULL/EMPTY VALUES IN data_date COLUMN ----------------------------------



SELECT *
FROM dbo.[Aadhaar_Demographic_Update]
WHERE [data_date] IS NULL OR LTRIM(RTRIM([data_date])) = ''


SELECT *
FROM dbo.[Aadhaar_Biometric_Update]
WHERE [data_date] IS NULL OR LTRIM(RTRIM([data_date])) = ''


SELECT *
FROM dbo.[Aadhaar_Enrollment]   
WHERE [data_date] IS NULL OR LTRIM(RTRIM([data_date])) = ''



