# SQL Exercises

Exercises to help exercise the SQL muscles.

Base repository for the [core-sql](http://jsdev.learnersguild.org/goals/178) goal.

## Getting Started

Create a Postgres database called `sql_exercises`. Use this database for all of the exercises.

## Exercises

Solutions to these exercises can be found in the [`solutions`](https://github.com/GuildCrafts/sql-exercises/tree/solutions) branch. These are here to assist you when you're really stuck, don't overuse them. Remember that there are many ways to solve each of these problems and the [`solutions`](https://github.com/GuildCrafts/sql-exercises/tree/solutions) represents only one option.

### Build the SQL Schema

**NOTE:** by schema we mean a set of table definitions **NOT** a [postgresql schema](https://www.postgresql.org/docs/8.2/static/ddl-schemas.html)

Create the schema for the following tables.

**01:** Table name: `student`, columns: `id`, `name`, `grade`
- `id` is the primary key
- `name` is only their first name
- `grade` is an integer
- write the SQL in the file `sql/01-create-table-student.sql`

**02:** Table name: `friend`, columns: `id1`, `id2`
- `id1` is a foreign key reference to a student
- `id2` is a foreign key reference to a student
- write the SQL in the file `sql/02-create-table-friend.sql`

**03:** Table name: `student_like`, columns: `liker_id`, `likee_id`
- `liker_id` is a foreign key reference to a student
- `likee_id` is a foreign key reference to a student
- write the SQL in the file `sql/03-create-table-like.sql`

Run the SQL for the schema against the `sql-exercises` database to create the tables.

### Load the Data

Load the data into the tables (make sure you have created the tables above).

**04:** SQL query to load the CSV file `data/students.csv` for the `student` table
<br>Write the SQL in the file `sql/04-load-table-student.sql`

**05:** SQL query to load the CSV file `data/friends.csv` for the `friend` table
<br>Write the query in the file `sql/05-load-table-friend.sql`

**06:** SQL query to load the CSV file `data/likes.csv` for the `student_like` table
<br>Write the SQL in the file `sql/06-load-table-like.sql`

Run the queries to load the data into the tables.

### Query the Data

Make sure each question is copied and pasted in the file which contains the SQL, so that it is easy for the reviewer to know what the SQL is supposed to do.

**07:** Find the names of all students who are friends with someone named Gabriel.
<br>Write the SQL in the file `sql/07-query-friends-gabriel.sql`

**08:** For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.
<br>Write the SQL in the file `sql/08-query-likes-grade-two-or-more.sql`

**09:** For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.
<br>Write the SQL in the file `sql/09-mutual-likes.sql`

**10:** Find all students who do not appear in the like table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade.
<br>Write the SQL in the file `sql/10-not-liked.sql`

**11:** For every situation where student A likes student B, but we have no information about whom B likes (that is, B's id does not appear in the `liker_id` column of the like table), return A and B's names and grades.
<br>Write the SQL in the file `sql/11-liked-but-does-not-like.sql`

Stretch: **12:** For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C.
<br>Write the SQL in the file `sql/12-find-friends-in-common.sql`

Stretch: **13:** Find the name and grade of all students who are liked by more than one other student.
<br>Write the SQL in the file `sql/13-popular-students.sql`

## Useful Resources
- http://stackoverflow.com/questions/448023/what-is-the-difference-between-left-right-outer-and-inner-joins

## Specifications

#### Day 1: SQL Basics & Advanced SQL Queries

- [x] Solution SQL for the project from the SQL Basics course (“Design a store database”) is added to a file in your repo named `khan-academy/sql_basics.sql`
- [x] Solution SQL for the project from the Advanced SQL queries course (“Data dig”) is added to a file in your repo named `khan-academy/advanced_sql_queries.sql`

#### Day 2: Relational Queries

- [x] Solution SQL for the project from the Relational Queries course (“Famous people”) is added to a file in your repo named `khan-academy/relational_queries.sql`
- [x] Solution SQL for the project from the Modifying databases with SQL course (“App impersonator”) is added to a file in your repo named `khan-academy/modifying_databases.sql`

#### Day 3: Install Postgres and Complete Tutorials with psql

* complete the tutorial for `createdb`
* complete the tutorial for selecting the database
* complete the tutorial for dropping the database
* complete the tutorial for `create table`
* complete the tutorial for `drop table`
* complete the tutorial for `schema`
* complete the tutorial for `insert`
* complete the tutorial for `select`
* complete the tutorial for expressions
* complete the tutorial for `where` clause
* complete the tutorial for `and` and `or` operators
* complete the tutorial for update queries
* complete the tutorial for delete queries
* complete the tutorial for the `like` clause
* complete the tutorial for the `limit` clause
* complete the tutorial for the `order by` clause
* complete the tutorial for the `group by` clause

#### Day 4: Mini Project and Exercises

- [x] `sql/01-create-table-student.sql`
- [x] `sql/02-create-table-friend.sql`
- [x] `sql/03-create-table-like.sql`
- [x] `sql/04-load-table-learner.sql`
- [x] `sql/05-load-table-friend.sql`
- [x] `sql/06-load-table-like.sql`
- [x] `sql/07-query-friends-gabriel.sql`
- [x] `sql/08-query-likes-grade-two-or-more.sql`
- [x] `sql/09-mutual-likes.sql`
- [x] `sql/10-not-liked.sql`
- [x] `sql/11-liked-but-does-not-like.sql`

#### Day 5: Exercises on SQL Bolt

* complete the SQL Bolt Tutorial

#### General

- [x] All major features are added via pull requests with a clear description and concise commit messages.
- [x] SQL files are well formatted and readable.
- [x] All the SQL keywords are capitalized.

#### Stretch

* Complete the Codeacademy course on SQL
* Complete the SQL Zoo quizzes

Exercises 12 and 13 in the sql-exercises repo are complete and written to the appropriate file

- [ ] `sql/12-find-friends-in-common.sql`
- [ ] `sql/13-popular-students.sql`
