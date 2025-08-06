--DATA DEFINITION CHECKPOINT--


Create Database Data_Definition_Checkpoint;

Use Data_Definition_Checkpoint;

CREATE Table Department (
Num_S INT Primary key,
Label_ VARCHAR(255),
Manager_Name VARCHAR(255),
);

Select* from Department;

CREATE Table Employee (
Num_E INT Primary Key,
Name_ VARCHAR (255),
Position VARCHAR(255),
Salary DECIMAL(10,2),
Dept_Num_S INT,
Foreign key(Dept_Num_S) references department(Num_S),
);

Select* from Employee;

CREATE Table Project (
Num_P INT Primary key,
Department_Num_S Int,
Title VARCHAR (255),
Start_date DATE, 
End_date DATE,
FOREIGN KEY (Department_Num_S) references Department(Num_S),
);

Select* from Project;


CREATE Table Employee_Project (
Employee_Num_E INT,
Project_Num_P INT,
Foreign Key(Employee_Num_E) references employee (Num_E),
Foreign key(Project_Num_P) references Project (Num_P),
Role VARCHAR (255),
);


Select* from Project
Select* from Employee
Select* from Department
select* from Employee_Project