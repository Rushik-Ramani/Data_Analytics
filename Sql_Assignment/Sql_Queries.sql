create database MarketCo ;

use MarketCo;

create table Contact (
Contact_id int primary key,
Company_id int ,
First_Name varchar(45),
Last_Name varchar(45),
Street varchar(45),
City varchar(45),
State varchar(2),
Zip varchar(10),
isMain boolean,
Email varchar(45),
phone varchar(12)
);
alter table contact add foreign key (Company_id) references Company(Company_id);

create table Employee (
Employee_id int primary key,
First_Name varchar(45),
Last_Name varchar(45),
Salary decimal(10,2),
Hire_Date date,
Job_Title varchar(25),
Email varchar(45),
Phone varchar(12)
);

create table ContactEmployee (
ContactEmployeeID int primary key,
Contact_id int,
Employee_id int,
Contact_date date,
Description varchar(100)
);
alter table ContactEmployee add foreign key (Contact_id) references Contact(Contact_id);
alter table ContactEmployee add foreign key (Employee_id) references Employee(Employee_id);


create table Company (
Company_id int primary key,
Company_Name varchar(45),
Street varchar(45),
City varchar(45),
State varchar(2),
Zip varchar(10)
);


update Employee set phone = "215-555-8800" where First_Name = "Lesley";

update Company set Company_Name = "Urban Outfitters" where Company_Name = "Urban Outfitters, Inc";

DELETE FROM ContactEmployee
WHERE Contact_ID = (SELECT Contact_ID FROM Contact WHERE First_Name = 'Dianne Connor')
AND Employee_ID = (SELECT Employee_ID FROM Employee WHERE First_Name = 'Jack Lee');

select * from Company left join contact on Company.Company_id = contact.company_id where Company_Name = 'Toll brothers' ;

/* Q - 8 :
the LIKE statement is used for pattern matching within a WHERE clause. The % and _ are wildcard characters that play a key role in defining the pattern.
1) '%' :
	Represents zero, one, or multiple characters in a string.
	It is used when you don't know or don't care about the number or type of characters.
    
2) '_' (Underscore) :
	Represents a single character at a specific position.
	It is used when you know the length of the string or the position of a character you want to match.
*/
-- --------------------------------------------------------------------------------------------------------------------------------------------------
/* Q - 9 :
Normalization is the process of organizing data in a database to reduce redundancy and improve data integrity. 
It involves dividing a database into smaller, well-structured tables and defining relationships between them.
The primary goals of normalization are:

1) Eliminate Redundancy: Avoid duplicate data to save storage and reduce inconsistencies.
2) Ensure Data Integrity: Maintain accuracy and consistency in the database.
3) Improve Query Performance: Enable efficient access and manipulation of data.
*/
-- --------------------------------------------------------------------------------------------------------------------------------------------------
/* Q - 10
 a join is used to combine data from two or more tables based on a related column. It allows you to retrieve 
 data that is distributed across multiple tables by specifying how the tables are related.

MySQL supports several types of joins, each serving different purposes depending on the relationship between the tables.

1). INNER JOIN :
	Retrieves records with matching values in both tables based on the join condition.
	Non-matching rows are excluded.
2). LEFT JOIN :
	Retrieves all records from the left table and the matching records from the right table.
	If no match is found, the result will contain NULL for the right table's columns.
3). RIGHT JOIN :
	Retrieves all records from the right table and the matching records from the left table.
	If no match is found, the result will contain NULL for the left table's columns.
4). FULL JOIN :
	Retrieves all records from both tables, whether there is a match or not.
	If no match is found, NULL is used for missing values.
5) CROSS JOIN :
	Produces the Cartesian product of two tables. Each row in the first table is combined with every row in the second table.
*/
-- --------------------------------------------------------------------------------------------------------------------------------------------------
/* Q - 11
DDL, DCL, and DML are categories of SQL statements that define, manipulate, and control access0
to data within a database. Each serves a distinct purpose:

1). DDL (Data Definition Language) :
	Purpose: Defines the structure of the database, including tables, schemas, indexes, and constraints.
Key Operations:
CREATE: Creates new database objects such as tables, databases, views, or indexes.
ALTER: Modifies existing database objects (e.g., adding or removing columns).
DROP: Deletes database objects like tables, databases, or views.
TRUNCATE: Removes all rows from a table but retains the table structure.

2). DML (Data Manipulation Language)
	Purpose: Manages and manipulates data within the tables.
Key Operations:
INSERT: Adds new rows to a table.
UPDATE: Modifies existing rows in a table.
DELETE: Removes rows from a table.
SELECT: Retrieves data from one or more tables (though technically a query, it’s often grouped with DML).

3. DCL (Data Control Language)
	Purpose: Manages access to the database by controlling permissions and security.
Key Operations:
GRANT: Provides specific privileges to users or roles.
REVOKE: Removes previously granted privileges.
*/
-- --------------------------------------------------------------------------------------------------------------------------------------------------
/* Q - 12
Role of the MySQL JOIN Clause
The MySQL JOIN clause is used in a query to retrieve data from multiple tables based on 
a specified condition that relates columns from these tables. This allows you to combine 
rows from two or more tables into a single result set. The JOIN clause is particularly 
useful when the database is normalized, and related data is distributed across multiple tables.
*/