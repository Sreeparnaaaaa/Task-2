## Task 2: Data Insertion and Handling Nulls
# Objective
The objective of this task is to:

a) Practice inserting, updating, and deleting data.
b) Handle missing values (NULL) and ensure data consistency.
#  Deliverables
SQL file containing:

a) INSERT statements for data insertion
b) UPDATE statements to handle missing or incorrect data
c) DELETE statements to clean unwanted records
# Task Overview
This task is performed on a Library Management System database, created in Task 1.

Key Activities:
a) Insert data into:

i) Author
ii) Book
iii) Book_Author
iv) Member
v) Loan

b) Handle missing values using NULL and default replacements.

c) Clean inconsistent data using UPDATE and DELETE statements.

d) Resolve foreign key constraints by inserting parent records first.

# Sample Operations
a) Inserting book records, some with missing PublishedYear (using NULL).

b) Inserting member records with missing Email (using NULL).

c) Updating missing Email fields.

d) Deleting books where PublishedYear is NULL.

e) Proper foreign key sequence handling.

# Key Learnings
a) How to handle NULL values correctly.

b) The importance of insertion order in relational databases.

c) How to use ON DELETE CASCADE to automatically maintain referential integrity.

d) How to handle FOREIGN KEY constraint errors.

# How to Run
a) Ensure the database schema from Task 1 is set up correctly with ON DELETE CASCADE.

b) Run the provided SQL file step by step:

c) Insert into parent tables first (Author, Book, Member).

d) Insert into child tables next (Book_Author, Loan).

e) Run UPDATE and DELETE statements as per instructions
