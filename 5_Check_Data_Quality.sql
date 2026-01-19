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
FROM dbo.[Aadhaar_Demographic_Update]               ----> 57 UNIQ
















SELECT COUNT(DISTINCT [state]) AS D
FROM DBO.[Aadhaar_Demographic_Update]

SELECT COUNT(DISTINCT [state]) AS B
FROM DBO.[Aadhaar_Biometric_Update]

SELECT COUNT(DISTINCT [state]) AS E
FROM DBO.[Aadhaar_Enrollment]

