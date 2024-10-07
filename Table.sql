create database HMS;
use HMS;

/* ======================= TABLES ========================*/

CREATE TABLE Patient(
ep int  NOT NULL auto_increment,
email varchar(30) NOT NULL,
name varchar(50) NOT NULL,
address varchar(60) NOT NULL,
gender VARCHAR(20) NOT NULL,
PRIMARY KEY (ep, email)
);

CREATE TABLE Doctor(
ed int PRIMARY KEY,
gender varchar(20) NOT NULL,
password varchar(30) NOT NULL,
name varchar(50) NOT NULL
);

CREATE TABLE PatientsFillHistory(
patient varchar(50) NOT NULL,
history int NOT NULL,
FOREIGN KEY (history) REFERENCES Patient (ep),
PRIMARY KEY (patient)
);


CREATE TABLE Appointment(
id int PRIMARY KEY,
date DATE NOT NULL,
starttime TIME NOT NULL,
endtime TIME NOT NULL,
status varchar(15) NOT NULL
);


CREATE TABLE PatientsAttendAppointments(
patient varchar(50) NOT NULL,
appt int NOT NULL,
concerns varchar(40) NOT NULL,
symptoms varchar(40) NOT NULL,
FOREIGN KEY (appt) REFERENCES Appointment (id),
PRIMARY KEY (patient, appt)
);


CREATE TABLE Diagnose(
appt int NOT NULL,
doctor varchar(50) NOT NULL,
diagnosis varchar(40) NOT NULL,
prescription varchar(50) NOT NULL,
FOREIGN KEY (appt) REFERENCES Doctor (ed),
PRIMARY KEY (appt, doctor)
);


CREATE TABLE BILL
(billid int not null,
name varchar(50) not null, 
billamount int not null
);
