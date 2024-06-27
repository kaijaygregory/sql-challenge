# Historical Employee Database Analysis

__Background/Scenario__

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I designed the tables to hold the data from the CSV files, imported the CSV files into a SQL database, and answered questions about the data. That is, I performed data modeling, data engineering, and data analysis, respectively.

__Data Modeling__

After inpecting the csv files, I sketched an Entity Relationship Diagram of the tables using [QuickDBD](https://app.quickdatabasediagrams.com/#/)

__Data Engineering__

Using the information provided by the ERD, I created a table schema for each of the six CSV files and imported each CSV file into its corresponding SQL table.

__Data Analysis__

Utilized queries to retrieve the following information from the database:

- The employee number, last name, first name, sex, and salary of each employee.

- The first name, last name, and hire date for the employees who were hired in 1986.

- The manager of each department along with their department number, department name, employee number, last name, and first name.

- The department number for each employee along with that employee’s employee number, last name, first name, and department name.

- First name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

- Each employee in the Sales department, including their employee number, last name, and first name.

- Each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

- The frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
