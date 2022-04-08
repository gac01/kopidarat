# kopidarat

NUS IT2002: Database Technology and Management Project

Checkout our [website](https://kopidarat.herokuapp.com/)!

Developed a Web-database three-tier application to allow users to find people with same interests to go for activities together. The Python Django Framework is used for developing the website in conjuction with PostgreSQL as the (Relational) Database Management System and HTML/CSS as the front-end.

This website contain the following features:

1. Frontpage that displays the amount of activities and users in the system, and popular activity categories in the system
2. Register and Login system for users (both members and administrators)
3. Members can create, join, edit, and delete activities
4. Members have a personalised 'For You' page that lists down all the activities based on past categories they have joined
5. Members can create and delete reviews to activities that they have joined
6. Members can create reports to users that is deemed to have inappropriate behaviour
7. Administrators have access to statistics such as top 5 active users based on activities joined, top 5 activities with the most reviews, and top reported users (with severity medium or higher)
8. Administrators can create, edit, and delete users from the system
9. Administrators can view the inactive users in the system and could decide what to do with them
10. Administrators can create, edit, and delete activities in the system
11. Administrators can delete reviews in the system, if deemed to be inappropriate
12. Administrators can delete reports in the system

The SQL schema and database used for the website are located under the 'Schema.sql' file inside the 'sql' folder. Mock data is generated through mockaroo.com, with some of the mock data, mainly the reviews and reports, generated using complex SQL queries and temporary random_review and random_report tables for randomization of the reviews and reports generated.

Basic SQL query commands (simple and algebraic SQL queries) are used to generate the main tables such as list of activites, list of users, list of reviews, and list of reports. Advanced SQL query commands (aggregate (COUNT, MAX, MIN, AVG) and nested SQL queries) are present in the filtering section of users main page, review statistics, number of participants, number of users and activities on the frontpage and user pages, and admin statistics pages, and other features.

Database Constraints are checked using SQL Database Integrity checks in the schema (during the creation of the tables) and other additional integrity checks are done using PL/pgSQL SQL Procedural Programming Language, mainly stored procedures, functions, and triggers. These advanced constraints could be checked under the file ProceduresTriggers.sql, which contain the following features:

1. Procedure to add the users into the users database and member/administator database
2. Procedure to add the activities into the activity table and the associated inviter to the joins table
3. Function and trigger to check there could not be any user trying to join an activity that has an overlapping times with the user's current list of joined activities
4. Function and trigger to check that the user could not join an activity that is already in full capacity
5. Function and trigger to check that the user could not create a review of an event that has not passed yet or even join in the first place
6. Function and trigger to check that a member cannot be an administrator
7. Function and trigger to check that an administrator cannot be a member

For a more in-depth understanding of our SQL queries, SQL schemas, generation of mock data for testing, and general code base, you could look into the following files in this repository:

1. The main rendering functions are implemented under 'views.py' with function descriptors, inside the 'kopidarat' folder.
2. URLs associated with the rendering functions are implemented under 'urls.py', inside the 'kopidarat' folder.
3. HTML pages are located under the 'templates' folder inside the 'kopidarat' folder.
4. CSS templates for each of the pages are located under the 'static' folder inside the 'kopidarat' folder.
5. SQL schemas, mock data, procedures, functions, triggers, deleting contents, and dropping tables are inside the 'sql' folder.
