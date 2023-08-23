-- CREATING TABLE FOR EMPLOYEES DETAILS.
CREATE TABLE "employees" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "employee_code" INTEGER UNIQUE NOT NULL,
  "first_name" VARCHAR(20),
  "last_name" VARCHAR(20),
  "date_of_join" DATE,
  "date_of_birth" DATE,
  "gender" VARCHAR(10),
  "phone" BIGINT,
  "working_status_id" INTEGER NOT NULL REFERENCES statuses(id),
  "designation_id" INTEGER NOT NULL REFERENCES designations(id),
  "location_id" INTEGER NOT NULL REFERENCES locations(id),
  "created_at" TIMESTAMP
);


-- CREATING A SEQUENCE CONSTRAINT FOR EMPLOYEE CODE.
CREATE SEQUENCE employees_employee_code
START 20001
INCREMENT 1
MINVALUE 20001
OWNED BY employees.employee_code;


-- INSERTING DATA INTO EMPLOYEES DETAILS TABLE.
INSERT INTO 
employees("employee_code", "first_name", "last_name", "date_of_join", "date_of_birth", "gender", "phone", "working_status_id", "designation_id", "location_id", "created_at")
VALUES
(nextval('employees_employee_code'), 'Jose', 'Lopez', '21-JUN-07', '10-AUG-87', 'male', 9715334552, 1, 4, 22, now()),
(nextval('employees_employee_code'), 'Diane', 'Carter', '13-JAN-08', '18-JUL-84', 'female', 8816330107, 1, 6, 5, now()),
(nextval('employees_employee_code'), 'Shawn', 'Foster', '17-SEP-03', '10-APR-85', 'male', 9668610065, 1, 5, 20, now()),
(nextval('employees_employee_code'), 'Brenda', 'Fisher', '17-FEB-04', '01-MAY-63', 'female', 5838355842, 2, 2, 7, now()),
(nextval('employees_employee_code'), 'Sean', 'Hunter', '17-AUG-05', '10-OCT-65', 'male', 0539132609, 3, 3, 9, now()),
(nextval('employees_employee_code'), 'Joshua', 'Jacobs', '07-JUN-02', '16-NOV-87', 'male', 7019328553, 1, 8, 5, now()), 
(nextval('employees_employee_code'), 'Brianna', 'Marshall', '07-JUN-02', '16-JUL-85', 'female', 8899925260, 1, 7, 4, now()),
(nextval('employees_employee_code'), 'John', 'Tate', '07-JUN-02', '28-SEP-86', 'male', 0776350084, 1, 5, 11, now()),
(nextval('employees_employee_code'), 'Jillian', 'Byrd', '07-JUN-02', '14-JAN-87', 'female', 8482120230, 1, 7, 17, now()),
(nextval('employees_employee_code'), 'Melanie', 'Sharp', '17-JUN-03', '08-MAR-88', 'female', 0853156112, 1, 3, 16, now()),
(nextval('employees_employee_code'), 'Brandy', 'Mckee', '21-SEP-05', '20-AUG-85', 'female', 4964695331, 1, 1, 14, now()),
(nextval('employees_employee_code'), 'Robert', 'Simpson', '13-JAN-01', '30-OCT-85', 'male', 8434162489, 1, 1, 12, now()),
(nextval('employees_employee_code'), 'George', 'Mckenzie', '03-JAN-06', '16-FEB-85', 'male', 2555990102, 1, 2, 18, now()),
(nextval('employees_employee_code'), 'Joseph', 'Smith', '21-MAY-07', '10-APR-67', 'male', 8487160019, 2, 5, 13, now()),
(nextval('employees_employee_code'), 'Dana', 'Crawford', '25-JUN-05', '14-JUN-84', 'female', 3688012914, 1, 4, 19, now()),
(nextval('employees_employee_code'), 'Christopher', 'Benson', '05-FEB-06', '26-AUG-86', 'male', 2893725080, 1, 3, 21, now()),
(nextval('employees_employee_code'), 'Nicole', 'Smith', '07-FEB-07', '12-DEC-87', 'female', 5358273787, 1, 8, 25, now()),
(nextval('employees_employee_code'), 'Peter', 'Jimenez', '17-AUG-02', '06-FEB-88', 'male', 3027626274, 1, 2, 5, now()),
(nextval('employees_employee_code'), 'Sergio', 'Boyle', '16-AUG-02', '14-JUL-83', 'male', 7451575520, 1, 2, 3, now());


-- CREATING TABLE FOR WORKING STATUSES.
CREATE TABLE "statuses" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "status_description" VARCHAR(30),
  "created_at" TIMESTAMP 
);


-- INSERTING DATA INTO WORKING STATUSES TABLE.
INSERT INTO statuses("status_description", "created_at") 
VALUES 
('Working', now()), ('Retired', now()), ('Expired', now());


-- CREATING TABLE FOR DESIGNATIONS.
CREATE TABLE "designations" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "employee_designation" VARCHAR(50),
  "created_at" TIMESTAMP
);


-- INSERTING DATA INTO DESIGNATION TABLE.
INSERT INTO designations("employee_designation", "created_at") 
VALUES 
('Project Manager', NOW()), 
('Web Developer', NOW()),
('Designer', NOW()),
('Mobile Developer', NOW()),
('Tester', NOW()),
('Machine Learning Engineer', NOW()),
('DevOps Engineer', NOW()),
('HR Manager', NOW());


-- CREATING TABLE FOR LOCATIONS.
CREATE TABLE "locations" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "address" VARCHAR(100),
  "created_at" TIMESTAMP
);


-- INSERING DATA INTO LOCATIONS TABLE DESIGNATIONS.
INSERT INTO locations("address", "created_at") 
VALUES 
('Alaska', NOW()), 
('Arizona', NOW()),
('California', NOW()),
('Colorado', NOW()),
('Florida', NOW()),
('Georgia', NOW()),
('Hawaii', NOW()),
('Illinois', NOW()), 
('Indiana', NOW()),
('Louisiana', NOW()),
('Maryland', NOW()),
('Massachusetts', NOW()),
('Michigan', NOW()),
('Minnesota', NOW()),
('New Jersey', NOW()), 
('New Mexico', NOW()),
('New York', NOW()),
('North Carolina', NOW()),
('North Dakota', NOW()),
('Pennsylvania', NOW()),
('South Carolina', NOW()),
('Columbia', NOW()), 
('Texas', NOW()),
('Virginia', NOW()),
('Washington', NOW()),
('West Virginia', NOW()),
('Charleston', NOW());


-- CREATING TABLE FOR EARNING DETAILS
CREATE TABLE "earnings" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "salary_component" VARCHAR(50),
  "type" INTEGER
);


-- INSERTING DATA INTO EARNING DETAILS
INSERT INTO earnings("salary_component", "type") 
VALUES 
('Basic Pay', 1),  
('HRA', 1),  
('CCA', 1), 
('DA', 1),  
('PT', 2),  
('IT', 2);  


-- CREATING TABLE FOR SALARY DETAILS OF EACH EMPLOYEE
CREATE TABLE "salary_details" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "employee_id" INTEGER NOT NULL REFERENCES employees(id),
  "earnings_id" INTEGER NOT NULL REFERENCES earnings(id),
  "amount" INTEGER
);


-- INSERTING DATA INTO SALARY DETAILS
INSERT INTO salary_details("employee_id", "earnings_id", "amount") 
VALUES
(1, 1, 2500),(1, 2, 100),(1, 3, 100),(1, 4, 100),(1, 5, 60),(1, 6, 60),
(2, 1, 3000),(2, 2, 100),(2, 3, 100),(2, 4, 100),(2, 5, 70),(2, 6, 70),
(3, 1, 3500),(3, 2, 100),(3, 3, 100),(3, 4, 100),(3, 5, 80),(3, 6, 80),
(4, 1, 2000),(4, 2, 100),(4, 3, 100),(4, 4, 100),(4, 5, 50),(4, 6, 50),
(5, 1, 2000),(5, 2, 100),(5, 3, 100),(5, 4, 100),(5, 5, 40),(5, 6, 40),
(6, 1, 3500),(6, 2, 100),(6, 3, 100),(6, 4, 100),(6, 5, 80),(6, 6, 80),
(7, 1, 4000),(7, 2, 100),(7, 3, 100),(7, 4, 100),(7, 5, 100),(7, 6, 90),
(8, 1, 4000),(8, 2, 100),(8, 3, 100),(8, 4, 100),(8, 5, 100),(8, 6, 100),
(9, 1, 4000),(9, 2, 100),(9, 3, 100),(9, 4, 100),(9, 5, 100),(9, 6, 100),
(10, 1, 3500),(10, 2, 100),(10, 3, 100),(10, 4, 100),(10, 5, 80),(10, 6, 80),
(11, 1, 3500),(11, 2, 100),(11, 3, 100),(11, 4, 100),(11, 5, 80),(11, 6, 80),
(12, 1, 3800),(12, 2, 100),(12, 3, 100),(12, 4, 100),(12, 5, 80),(12, 6, 80),
(13, 1, 3800),(13, 2, 100),(13, 3, 100),(13, 4, 100),(13, 5, 80),(13, 6, 80),
(14, 1, 3800),(14, 2, 100),(14, 3, 100),(14, 4, 100),(14, 5, 80),(14, 6, 80),
(15, 1, 3400),(15, 2, 100),(15, 3, 100),(15, 4, 100),(15, 5, 60),(15, 6, 60),
(16, 1, 3500),(16, 2, 100),(16, 3, 100),(16, 4, 100),(16, 5, 70),(16, 6, 70),
(17, 1, 3500),(17, 2, 100),(17, 3, 100),(17, 4, 100),(17, 5, 70),(17, 6, 70),
(18, 1, 3200),(18, 2, 100),(18, 3, 100),(18, 4, 100),(18, 5, 70),(18, 6, 70),
(19, 1, 3400),(19, 2, 100),(19, 3, 100),(19, 4, 100),(19, 5, 70),(19, 6, 70);


-- CREATING TABLE FOR TRANSACTIONS OF EACH EMPLOYEE.
CREATE TABLE "transactions" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "employee_id" INTEGER NOT NULL REFERENCES employees(id) ,
  "net_amount" INTEGER,
  "gross_amount" INTEGER,
  "date_of_transaction" DATE
);


-- INSERTING DATA INTO TRANSACTONS TABLE
INSERT INTO transactions("employee_id", "net_amount", "gross_amount", "date_of_transaction")
VALUES
(1, 2680, 2800, '2023-AUG-03'), (1, 2680, 2800, '2023-JUL-03'),
(2, 3160, 3300, '2023-JUL-03'),
(3, 3640, 3800, '2023-AUG-03'), (3, 3640, 3800, '2023-JUL-03'),
(4, 3160, 3300, '2023-AUG-03'), (4, 3160, 3300, '2023-JUL-03'),
(5, 2220, 2300, '2023-AUG-03'), (5, 2220, 2300, '2023-JUL-03'),
(6, 3640, 3800, '2023-JUL-03'),
(7, 4110, 4300, '2023-AUG-03'), (7, 4110, 4300, '2023-JUL-03'),
(8, 4100, 4300, '2023-AUG-03'), (8, 4100, 4300, '2023-JUL-03'),
(9, 4100, 4300, '2023-JUL-03'),
(10, 3640, 3800, '2023-AUG-03'), (10, 3640, 3800, '2023-JUL-03'),
(11, 3640, 3800, '2023-AUG-03'), (11, 3640, 3800, '2023-JUL-03'),
(12, 3940, 4100, '2023-AUG-03'), (12, 3940, 4100, '2023-JUL-03'),
(13, 3940, 4100, '2023-AUG-03'), (13, 3940, 4100, '2023-JUL-03'),
(14, 3940, 4100, '2023-JUL-03'),
(15, 3580, 3700, '2023-AUG-03'), (15, 3580, 3700, '2023-JUL-03'),
(16, 3660, 3800, '2023-AUG-03'), (16, 3660, 3800, '2023-JUL-03'),
(17, 3660, 3800, '2023-AUG-03'), (17, 3660, 3800, '2023-JUL-03'),
(18, 3360, 3500, '2023-AUG-03'), (18, 3360, 3500, '2023-JUL-03'),
(19, 3560, 3700, '2023-AUG-03'), (19, 3560, 3700, '2023-JUL-03');


-- CREATING TABLE FOR TRANSACTION AMOUNT AND EARNING DETAILS.
CREATE TABLE "transactionAmount" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "transaction_id" INTEGER REFERENCES transactions(id),
  "earnings_id" INTEGER REFERENCES earnings(id),
  "amount" INTEGER
);


-- QUERY 1. list of employees (name, doj, dob, gender, phone, working_status, designation, location).
SELECT employees.first_name First_Name, 
employees.last_name Last_Name, 
employees.date_of_join Date_of_Join, 
employees.date_of_birth Date_of_Birth, 
employees.gender Gender, 
employees.phone Phone_Number, 
statuses.status_description Working_Status,
designations.employee_designation Designation,
locations.address Location
FROM employees 
INNER JOIN designations 
ON employees.designation_id = designations.id
INNER JOIN statuses 
ON employees.working_status_id = statuses.id
INNER JOIN locations 
ON employees.location_id = locations.id
ORDER BY first_name;


-- QUERY 2. count of employees location wise(location,employee count).
SELECT loc.address Location, 
count(emp.id) Number_of_Employees 
FROM employees emp
INNER JOIN locations loc
ON emp.location_id = loc.id
GROUP BY loc.id;


-- QUERY 3. count of employees designation wise (designation,employee count).
SELECT desig.employee_designation Designation,
count(emp.id) Number_of_Employees
FROM employees emp
INNER JOIN designations desig
ON emp.designation_id = desig.id
GROUP BY desig.id;


-- QUERY 4. count of employees working status (working status,employee count)
SELECT stat.status_description Working_Status,
count(emp.id) Number_of_Employees
FROM employees emp 
INNER JOIN statuses stat
ON emp.working_status_id = stat.id
GROUP BY stat.id;


-- QUERY 5. calculate and show all employees retirement date (empoyee code, employee_name, dob, doj, retirement_date)
SELECT employee_code,
first_name,
last_name,
date_of_birth,
date_of_join,
date_of_birth + INTERVAL '60 years' retirement_date
FROM employees;


-- QUERY 6. show salary break up(each salary compoment) of each employee wise.
SELECT emp.employee_code,
emp.first_name,
emp.last_name,
e.salary_component,
salary.amount
FROM employees emp 
INNER JOIN  salary_details salary
ON salary.employee_id = emp.id
INNER JOIN earnings e
ON e.id = salary.earnings_id;


-- QUERY 7. maximum, minimun salary of employee, average salary of employees of each designation.
SELECT desig.employee_designation designation,
min(salary.amount) minimun_salary,
max(salary.amount) maximum_salary,
avg(salary.amount)::numeric(10,2) average_salary
FROM employees emp
INNER JOIN designations desig
ON emp.designation_id = desig.id
INNER JOIN salary_details salary
ON salary.employee_id = emp.id
INNER JOIN earnings earn
ON earn.id = salary.earnings_id
WHERE earn.salary_component = 'Basic Pay'
GROUP BY desig.id;


-- QUERY 8. salary received by each employee for last month (employee_id, name, salary_year, salary_month, gross, deduction, net).
SELECT emp.id,
emp.first_name,
emp.last_name,
date_part('year', trans.date_of_transaction) salary_year,
date_part('month', trans.date_of_transaction) salary_month,
trans.gross_amount gross_amount,
salary.amount deduction_amount,
trans.net_amount net_amount
FROM employees emp 
INNER JOIN transactions trans 
ON emp.id = trans.employee_id
INNER JOIN salary_details salary
ON emp.id = salary.employee_id
INNER JOIN earnings earn
ON salary.earnings_id = earn.id
WHERE trans.date_of_transaction = '2023-AUG-03' AND earn.type = 2;


-- QUERY 9. list of employees who have not received salary for last month
SELECT emp.id,
emp.first_name,
emp.last_name
FROM employees emp
LEFT JOIN transactions trans 
ON emp.id = trans.employee_id AND trans.date_of_transaction = '2023-08-03'
WHERE trans.employee_id IS NULL;


-- QUERY 10. list of employees whos actual salary net amount not matched with net amount of salary received in last month.

