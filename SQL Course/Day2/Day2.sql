use Company_SD

-- 1.	Display all the employees Data.
SELECT * FROM Employee


-- 2.	Display the employee First name, last name, Salary and Department number.
SELECT Fname, Lname, Salary, Dno FROM Employee


-- 3.	Display all the projects names, locations and the department which is responsible about it.
SELECT Pname, Plocation, Dnum FROM Project


-- 4.   Display each employee full name and his annual commission in an ANNUAL COMM column (alias).
SELECT (Fname +' '+ Lname) AS "Full Name", Salary*12*0.1 AS "ANNUAL COMM" FROM Employee


-- 5.	Display the employees Id, name who earns more than 1000 LE monthly.
SELECT SSN, (Fname +' '+ Lname) AS "Full Name" FROM Employee WHERE Salary > 1000


-- 6.	Display the employees Id, name who earns more than 10000 LE annually.
SELECT SSN, (Fname +' '+ Lname) AS "Full Name" FROM Employee WHERE Salary*12 > 10000


-- 7.	Display the names and salaries of the female employees 
SELECT Fname, Salary FROM Employee WHERE Sex = 'F'


-- 8.	Display each department id, name which managed by a manager with id equals 968574.
SELECT Dnum, Dname FROM Departments WHERE MGRSSN = 968574


-- 9.	Dispaly the ids, names and locations of  the pojects which controled with department 10.
SELECT Pname, Pnumber, Plocation FROM project WHERE Dnum = 10