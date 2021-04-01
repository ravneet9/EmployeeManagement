
CREATE TABLE department (
  `DEPARTMENT_ID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `SHORT_NAME` varchar(10) DEFAULT NULL,
  `DEPARTMENT_NAME` varchar(100) DEFAULT NULL
   );

INSERT INTO department VALUES (1,'HR','Human Resources Management'),(2,'IT','Information Technology'),(3,'ENGG','Engineering'),(4,'R&D','Research and Development'),(5,'MK','Marketing'),(6,'ACNT','Accounting');

CREATE TABLE employee(
  EMPLOYEE_ID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FIRST_NAME varchar(50) DEFAULT NULL,
  LAST_NAME varchar(50) DEFAULT NULL,
  department_id int(11) NOT NULL,
  
FOREIGN KEY (department_id) REFERENCES department (DEPARTMENT_ID)
) ;
INSERT INTO employee VALUES (1,'Apoorva','Joshi',4),(2,'Tim','Cook',3);
