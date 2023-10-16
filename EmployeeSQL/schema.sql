-- Create tables
CREATE TABLE departments (
    dept_no VARCHAR(100) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR(100) PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    sex VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(100) NOT NULL,
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(100) NOT NULL,
    emp_no INTEGER PRIMARY KEY
);

CREATE TABLE salaries (
    emp_no INTEGER PRIMARY KEY,
    salary INTEGER NOT NULL
);

-- Create foreign key constraints
ALTER TABLE employees
    ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY (emp_title_id)
    REFERENCES titles (title_id);

ALTER TABLE dept_emp
    ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY (emp_no)
    REFERENCES employees (emp_no);

ALTER TABLE dept_emp
    ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY (dept_no)
    REFERENCES departments (dept_no);

ALTER TABLE dept_manager
    ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no)
    REFERENCES departments (dept_no);

ALTER TABLE dept_manager
    ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (emp_no)
    REFERENCES employees (emp_no);

ALTER TABLE salaries
    ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY (emp_no)
    REFERENCES employees (emp_no);

