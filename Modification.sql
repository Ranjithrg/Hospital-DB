-- Modification
-- query the information of Patient

Select * from Patient;

SELECT address, COUNT(*) AS number
FROM Patient
GROUP BY address;

-- Find Patient with exactly 5-character names

SELECT *
FROM patient
WHERE email LIKE '__n%';

-- Find Customers whose names start with 
SELECT *
FROM patient
WHERE email LIKE 'g%';

/*======================== Retrieve Orders with  Details ======================*/
select patient,appt,concerns,symptoms
  from PatientsAttendAppointments 
  left join Patient 
  on PatientsAttendAppointments.patient = Patient.email;




