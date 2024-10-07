-- Modification
-- query the information of Patient

Select * from Patient;

SELECT address, COUNT(*) AS number
FROM Patient
GROUP BY address;


