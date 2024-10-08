-- Modification
-- query the information of Patient

/*======================== Retrieve all information about Patient ======================*/
select * from Patient;

/*======================== Retrieve number of Patient from same address ======================*/
select address, count(*) as number
from Patient
group by address;

/*======================== Retrieve Specified column in Patient table ======================*/
 select distinct email from Patient;

/*======================== Retrieve only limited number of records ======================*/
select * from Patient
  where gender ='male'
limit 3;

-- Modifiying the values

update Diagnose set doctor = "ranjithrg10" where appt = 1;
update Diagnose set doctor = "ranjithrg10" where appt = 2;

-- Modifying date and time in Appointment

SELECT  ADDDATE("2019-01-16",interval 10 day);
SELECT ADDTIME("2019-01-15 09:00:00", "45");

-- Find Patient email with exactly 3-character names

select *
from patient
where email like '____y%';

-- Find Patient whose names start with 
select *
from patient
where name like 'r%';

/*======================== Retrieve Patient Using joins ======================*/
select patient,appt,concerns,symptoms
  from PatientsAttendAppointments 
  left join Patient 
  on PatientsAttendAppointments.patient = Patient.email;


/*======================== Retrieve Diagnose Using Left,Right,Full ======================*/

select*,doctor 
  from Diagnose
  right join Doctor
  on Diagnose.doctor = Doctor.password;

select ed 
  from Doctor 
  inner join Diagnose on Doctor.ed = Diagnose.appt;

select doctor
  from Diagnose 
  left join Doctor on Diagnose.doctor = Doctor.password;

/*======================== Retrieve Diagnose Using Union,Union all ======================*/

select * from Diagnose
  right join Doctor
  on Diagnose.doctor = Doctor.password 
union 
  select * from Diagnose 
  inner join Doctor
  on Diagnose.doctor = Doctor.password  ;


select doctor from Diagnose
  left join Doctor 
  on Diagnose.doctor = Doctor.password 
union all 
  select doctor from Diagnose 
  right join Doctor
  on Diagnose.doctor = Doctor.password  ;

/*======================== Using Subquery by finding Average amount and filter by amount greater than average amoun======================*/
select  billid from bill 
  where billamount>
  (select avg(billamount) from bill);

/*======================== Retrieve bill by using Partition and order by Rank,Dense Rank, Row Number ======================*/

select billid, 
  row_number() over(order by billamount)as "Row number",
  rank() over(order by billamount)as "Rank",
  dense_rank ()over(order by billamount) as "denserank" 
  from bill;

select billamount, name,sum(billamount)
  over(partition by name order by billamount) 
  as "Totalamount" from bill;

-- Views 
-- -- Retrieve Patient name at ep column with view as Patientview

create view Patientview as
select name from patient
where ep = 3;

select * patientview;

-- STORED PROCEDURE

-- Retrieve the Average Product Price:

DELIMITER $$

CREATE PROCEDURE getAveragebillamount()
BEGIN
    SELECT AVG(billamount) AS average_price FROM bill;
END $$

DELIMITER ;

CALL getAveragebillamount();










