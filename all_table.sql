-- table 1 students
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    enrollment_date DATE DEFAULT CURRENT_DATE,
    date_of_birth DATE,
    major VARCHAR(50)
);
INSERT INTO students (first_name, last_name, email, phone_number, date_of_birth, major)
VALUES
    ('Alice', 'Johnson', 'alice.johnson@email.com', '555-123-4567', '2005-03-15', 'Computer Science'),
    ('Bob', 'Smith', 'bob.smith@email.com', '555-987-6543', '2004-11-22', 'Mechanical Engineering'),
    ('Charlie', 'Williams', 'charlie.williams@email.com', '555-555-5555', '2006-07-08', 'Biology'),
    ('Diana', 'Jones', 'diana.jones@email.com', '555-111-2222', '2005-01-30', 'Psychology'),
    ('Ethan', 'Brown', 'ethan.brown@email.com', '555-333-4444', '2003-09-10', 'Chemistry'),
    ('Fiona', 'Davis', 'fiona.davis@email.com', '555-777-8888', '2006-05-25', 'Art History');
	select * from students;

-- table 2 employees

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    hire_date DATE DEFAULT CURRENT_DATE,
    job_title VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_title, department, salary)
VALUES
    ('John', 'Doe', 'john.doe@company.com', '555-123-1111', '2022-01-15', 'Software Engineer', 'IT', 85000.00),
    ('Jane', 'Smith', 'jane.smith@company.com', '555-234-2222', '2021-06-20', 'Project Manager', 'Operations', 95000.50),
    ('Peter', 'Jones', 'peter.jones@company.com', '555-345-3333', '2023-03-10', 'Data Analyst', 'IT', 75000.00),
    ('Mary', 'Brown', 'mary.brown@company.com', '555-456-4444', '2020-09-01', 'HR Specialist', 'Human Resources', 60000.00),
    ('David', 'Wilson', 'david.wilson@company.com', '555-567-5555', '2024-02-28', 'Sales Representative', 'Sales', 70000.75),
    ('Susan', 'Davis', 'susan.davis@company.com', '555-678-6666', '2022-11-05', 'Marketing Coordinator', 'Marketing', 62000.00);
	select * from employees;

-- table 3 patients
CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10),
    phone_number VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255),
    admission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO patients (first_name, last_name, date_of_birth, gender, phone_number, email, address)
VALUES
    ('Robert', 'Miller', '1995-08-21', 'Male', '555-111-9999', 'robert.miller@email.com', '123 Oak St, Cityville'),
    ('Linda', 'Garcia', '1988-02-14', 'Female', '555-222-8888', 'linda.garcia@email.com', '456 Pine Ave, Townsville'),
    ('Michael', 'Harris', '2001-11-30', 'Male', '555-333-7777', NULL, '789 Birch Rd, Villageton'),
    ('Jessica', 'Clark', '1976-06-05', 'Female', '555-444-6666', 'jessica.clark@email.com', '101 Maple Ln, Hamletburg'),
    ('Daniel', 'Lewis', '1999-04-12', 'Male', '555-555-5555', 'daniel.lewis@email.com', '202 Cedar Pl, Suburbia'),
    ('Patricia', 'Lee', '1965-10-25', 'Female', '555-666-4444', NULL, '303 Elm Way, Metropolis');
	select * from patients;

-- table 4 customers
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    address VARCHAR(255),
    registration_date DATE DEFAULT CURRENT_DATE
);
INSERT INTO customers (first_name, last_name, email, phone_number, address)
VALUES
    ('Sam', 'Wilson', 'sam.wilson@email.com', '555-111-2222', '123 Main St, Anytown, USA'),
    ('Jane', 'Austen', 'jane.austen@email.com', '555-333-4444', '456 Oak Ave, Someplace, USA'),
    ('Peter', 'Parker', 'peter.parker@email.com', '555-555-6666', '789 Elm Rd, Somewhere, USA'),
    ('Emma', 'Watson', 'emma.watson@email.com', '555-777-8888', NULL),
    ('Leo', 'DiCaprio', 'leo.dicaprio@email.com', NULL, '101 Maple Ln, Elsewhere, USA'),
    ('Mila', 'Kunis', 'mila.kunis@email.com', '555-999-0000', '202 Birch Pl, Noplace, USA');
	select * from customers;

--table 5 fruits
CREATE TABLE fruits (
    fruit_id SERIAL PRIMARY KEY,
    fruit_name VARCHAR(50) UNIQUE NOT NULL,
    color VARCHAR(20),
    taste VARCHAR(20),
    is_seasonal BOOLEAN DEFAULT TRUE,
    harvest_date DATE
);
INSERT INTO fruits (fruit_name, color, taste, is_seasonal, harvest_date)
VALUES
    ('Apple', 'Red', 'Sweet', TRUE, '2025-09-15'),
    ('Banana', 'Yellow', 'Sweet', FALSE, '2025-01-20'),
    ('Lemon', 'Yellow', 'Sour', TRUE, '2025-07-01'),
    ('Grape', 'Purple', 'Sweet', TRUE, '2025-08-10'),
    ('Strawberry', 'Red', 'Sweet', TRUE, '2025-06-25'),
    ('Avocado', 'Green', 'Creamy', FALSE, '2025-03-05');
	select *from fruits;