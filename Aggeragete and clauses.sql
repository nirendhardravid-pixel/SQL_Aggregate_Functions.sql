CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT,
    Experience_Years INT,
    City VARCHAR(30)
);

INSERT INTO Employee
(Emp_ID, Emp_Name, Department, Salary, Experience_Years, City)
VALUES
(101, 'Arun', 'HR', 35000, 2, 'Chennai'),
(102, 'Priya', 'Finance', 42000, 4, 'Coimbatore'),
(103, 'Karthik', 'IT', 60000, 3, 'Bangalore'),
(104, 'Divya', 'Sales', 38000, 2, 'Madurai'),
(105, 'Rahul', 'IT', 55000, 2, 'Hyderabad'),
(106, 'Sneha', 'Marketing', 40000, 5, 'Chennai'),
(107, 'Vignesh', 'Finance', 58000, 6, 'Coimbatore'),
(108, 'Meena', 'HR', 75000, 8, 'Bangalore'),
(109, 'Ajay', 'IT', 68000, 7, 'Pune'),
(110, 'Anitha', 'Sales', 72000, 9, 'Chennai');

select*from Employee;

select count(3)  as no_of_rows from Employee;

select sum(salary) as total_amount from Employee where Department="IT";

select min(salary) min_salary from Employee;

select max(salary) max_salary from Employee;

select avg(salary) avg_salary from Employee;

select avg(salary) Avg_salary 
FROM Employee
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employee
);

select max(salary) max_salary_count from employee



CREATE TABLE Orders (
    Order_ID INT,
    Customer_Name VARCHAR(50),
    Product_Name VARCHAR(50),
    Quantity INT,
    Price INT,
    Order_Date DATE
);

drop table Orders;

INSERT INTO Orders VALUES
(101, 'Arun', 'Laptop', 2, 55000, '2025-01-10'),
(102, 'Priya', 'Mobile', 3, 18000, '2025-01-15'),
(103, 'Karthik', 'Tablet', 1, 25000, '2025-02-05'),
(104, 'Divya', 'Laptop', 2, 60000, '2025-02-20'),
(105, 'Rahul', 'Headphones', 5, 2500, '2025-03-01'),
(106, 'Meena', 'Smart Watch', 4, 8000, '2025-03-12'),
(107, 'Vijay', 'Mobile', 2, 22000, '2025-04-08'),
(108, 'Anitha', 'Laptop', 1, 65000, '2025-04-20'),
(109, 'Suresh', 'Tablet', 3, 27000, '2025-05-10'),
(110, 'Keerthi', 'Headphones', 6, 3000, '2025-05-25');

select*from Orders;

select sum(price) as Total_price from Orders 
where Quantity>3;

Select sum(quantity) as Toatl_quantity from orders 
where Product_Name="Laptop";

select Avg(price) as Avg_price from orders 
where Order_Date ="2025-03-01";

select min(price) as min_price from orders 
where Quantity>2;

select count(4) as count_orders from orders where 
price>20000 and Quantity<2;

CREATE TABLE Sales (
    Sale_ID INT,
    Salesperson VARCHAR(50),
    Region VARCHAR(30),
    Product VARCHAR(50),
    Quantity INT,
    Amount DECIMAL(10,2)
);

INSERT INTO Sales VALUES
(101, 'Arun', 'South', 'Laptop', 2, 110000),
(102, 'Priya', 'North', 'Mobile', 5, 90000),
(103, 'Rahul', 'East', 'Tablet', 3, 75000),
(104, 'Meena', 'South', 'Laptop', 1, 55000),
(105, 'Karthik', 'West', 'Printer', 4, 60000),
(106, 'Divya', 'North', 'Monitor', 2, 24000),
(107, 'Vijay', 'East', 'Mobile', 6, 132000),
(108, 'Anitha', 'South', 'Keyboard', 8, 16000),
(109, 'Suresh', 'West', 'Camera', 2, 90000),
(110, 'Keerthi', 'North', 'Laptop', 3, 180000),
(111, 'Ajay', 'South', 'Mouse', 10, 15000),
(112, 'Nisha', 'East', 'Tablet', 2, 50000);

select * from  Sales;

select sum(Amount) as south_sales from Sales 
where Region="South";

select Avg(Quantity) as Average_Quantity from Sales
where Region="North";

select min(Amount) as min_sales_amnt from Sales
where Region="East";

select max(Amount) as min_sales_amnt from Sales
where product="Laptop";

select count(*) as Toatl_Sales from Sales
where Quantity>3;


clauses:
1.where 
2.order by
3.having
4.group by
5.limit
6.between/not between

CREATE TABLE Students (
    Student_ID INT,
    Student_Name VARCHAR(50),
    Department VARCHAR(30),
    City VARCHAR(30),
    Marks INT,
    Age INT
);


INSERT INTO Students VALUES
(101, 'Arun', 'CSE', 'Chennai', 85, 20),
(102, 'Priya', 'ECE', 'Coimbatore', 91, 21),
(103, 'Rahul', 'EEE', 'Madurai', 67, 22),
(104, 'Divya', 'CSE', 'Salem', 78, 20),
(105, 'Karthik', 'MECH', 'Trichy', 88, 23),
(106, 'Meena', 'ECE', 'Chennai', 95, 21),
(107, 'Vijay', 'CIVIL', 'Erode', 72, 22),
(108, 'Anitha', 'EEE', 'Coimbatore', 81, 20),
(109, 'Suresh', 'CSE', 'Madurai', 90, 21),
(110, 'Keerthi', 'MECH', 'Salem', 65, 22),
(111, 'Ajay', 'ECE', 'Trichy', 84, 23),
(112, 'Nisha', 'CIVIL', 'Chennai', 76, 20);

select*from Students;

select* from Students where Marks>80;

select *from Students order by Marks desc;

select*from Students where Marks between 75 and 90;

select *from Students limit 1;

select *from Students limit 1,3;

select *from Students limit 2,3;

select *from Students limit 7,4;

select *from Students limit 8;

select Department,count(*) as total_students from Students
group by Department;

select city ,Avg(Marks) as Avg_marks from Students
group by city;

select Department,Max(marks) as Highest_marks from Students
group by Department;

select Department,Avg(Marks) as Avg_marks_dep from Students
group by Department having Avg(Marks)>80;

select city,count(*) as Total_students from students
group by city having count(*)>2; 


select city,Max(Marks) as max_marks from students
group by city having max(marks)>90;


select Department,Avg(Marks) as Avg_Marks,count(*) as Total_no_of_student from
students group by Department having avg(Marks)>85 order by Avg_marks desc;




CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Disease VARCHAR(50),
    Doctor_Name VARCHAR(50),
    City VARCHAR(30),
    Bill_Amount DECIMAL(10,2),
    Admit_Date DATE
);

INSERT INTO Patients VALUES
(101,'Arun','Male',25,'Fever','Dr. Kumar','Chennai',3500,'2025-01-10'),
(102,'Divya','Female',34,'Diabetes','Dr. Meena','Coimbatore',12000,'2025-02-12'),
(103,'Hari','Male',45,'Heart Disease','Dr. Raj','Madurai',85000,'2025-03-15'),
(104,'Priya','Female',28,'Fever','Dr. Kumar','Salem',4200,'2025-01-22'),
(105,'Vijay','Male',60,'Diabetes','Dr. Meena','Chennai',15000,'2025-04-10'),
(106,'Sneha','Female',31,'Asthma','Dr. Raj','Coimbatore',9000,'2025-05-18'),
(107,'Karthik','Male',40,'Fever','Dr. Kumar','Madurai',3800,'2025-03-28'),
(108,'Anitha','Female',52,'Heart Disease','Dr. Raj','Salem',95000,'2025-06-01'),
(109,'Rahul','Male',36,'Asthma','Dr. Meena','Chennai',7500,'2025-06-15'),
(110,'Keerthi','Female',22,'Fever','Dr. Kumar','Coimbatore',3000,'2025-07-02');

select * from Patients;

1.Display the top 3 doctors who have treated the highest number of patients whose bill amount is greater than ₹5,000.

SELECT Doctor_Name,COUNT(*) AS Total_Patients FROM Patients
WHERE Bill_Amount > 5000 GROUP BY Doctor_Name
ORDER BY Total_Patients DESC
LIMIT 3;

2.Find the top 5 cities with the highest average hospital bill for patients aged above 30 years.

select count(*) as Top_5_city from Patients
group by city having max(Bill_Amount) and Age>30;

3.Display the diseases where the total bill amount is greater than ₹20,000, ordered by the highest total bill amount, and show only the top 3 diseases.

SELECT Disease,
       SUM(Bill_Amount) AS Total_Bill
FROM Patients
GROUP BY Disease
HAVING SUM(Bill_Amount) > 20000
ORDER BY Total_Bill DESC
LIMIT 3;

4.Find the top 2 doctors whose average patient age is greater than 35 years and who have treated at least 2 patients.

SELECT Doctor_Name,
       AVG(Age) AS Avg_Age,
       COUNT(*) AS Patient_Count
FROM Patients
GROUP BY Doctor_Name
HAVING AVG(Age) > 35
   AND COUNT(*) >= 2
ORDER BY Avg_Age DESC
LIMIT 2;

5.Display the top 5 patients with the highest bill amount who are from Chennai or Coimbatore and were admitted after '2025-03-01'

SELECT Patient_Name,
       City,
       Bill_Amount,
       Admit_Date
FROM Patients
WHERE City IN ('Coimbatore', 'Chennai')
  AND Admit_Date > '2025-03-01'
ORDER BY Bill_Amount DESC
LIMIT 5;

