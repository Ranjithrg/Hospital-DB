/*==================== INSERT TABLES ======================*/

INSERT INTO Patient(ep,email,name,address,gender)
VALUES
(1,'ramesh@gmail.com','Ramesh','Chennai', 'male'),
(2,'suresh@gmail.com','Suresh','Erode', 'male'),
(3,'ganesh@gmail.com','ganesh','Namakkal', 'male'),
(4,'rajesh@gmail.com','rajesh', 'chennai', 'male'),
(5,'harish@gmail.com','harish', 'chennai', 'male'),
(6,'suriya@gmail.com','suriya','chennai','male')
;

INSERT INTO Doctor(ed, gender, password, name)
VALUES
(1, 'male', 'ranjithrg10', 'ranjith'),
(2, 'male', 'ranjithrg10', 'Ajith')
;

INSERT INTO PatientsFillHistory(patient,history)
VALUES
('ramesh@gmail.com', 1),
('suresh@gmail.com', 2),
('ganesh@gmail.on', 3),
('venkat@gmail.com',4),
('lokesh@gmail.com',5),
('ravi@gmail.com',6)
;

INSERT INTO Appointment(id,date,starttime,endtime,status)
VALUES
(1, '19-01-15', '09:00', '10:00', 'Done'),
(2, '19-01-16', '10:00', '11:00', 'Done'),
(3, '19-01-18', '14:00', '15:00', 'Done')
;

INSERT INTO PatientsAttendAppointments(patient,appt,concerns,symptoms)
VALUES
('ramesh@gmail.com',1, 'none', 'itchy throat'),
('suresh@gmail.com',2, 'infection', 'fever'),
('ganesh@gmail.com',3, 'nausea', 'fever')
;

INSERT INTO Diagnose(appt,doctor,diagnosis,prescription)
VALUES
(1,'ranjith10@gmail.com', 'Bloating', 'Ibuprofen as needed'),
(2,'ranjith9@gmail.com', 'Muscle soreness', 'Stretch morning/night')
;

INSERT INTO BILL VALUES  (100,'ramesh',3000),(200,'suresh',3000),(300,'ganesh',12000),(400,'ranjith',12000),(500,'ajith',12000),
(600,'suresh',2500),(700,'suresh',3000),(800,'ganesh',2500),(900,'ranjith',4000);
