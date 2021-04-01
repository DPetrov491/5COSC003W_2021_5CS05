/*
**	5COSC003W.2 Software Development Group Project
*	Coursework 2
*	
*	Omar Ahmed
*	
*	User Database objects DDL script
*
*	25/03/2021
*
*/

-- SQLite Group 5CS05 v0.1


/*
Drop existing tables
*/
DROP TABLE Users_Activity;
DROP TABLE Users;

/*
Create Users table
*/
CREATE TABLE Users
(
userId		INTEGER PRIMARY KEY	AUTOINCREMENT,
userName 		VARCHAR2(30)  NOT NULL UNIQUE,
fName		VARCHAR2(15),
lName		VARCHAR2(15),
email		VARCHAR2(30)    NOT NULL UNIQUE,
userType	VARCHAR2(1)	NOT NULL,
password		VARCHAR2(20)    NOT NULL,
regDateTime		DateTime	    NOT NULL -- ('%Y-%m-%d %H:%M:%S', ...)
);

/*
Create Users_Activity table
*/
CREATE TABLE Users_Activity
(
activityId	INTEGER PRIMARY KEY	AUTOINCREMENT,
logInDateTime	DateTime 	NOT NULL,
logOutateTime	DateTime	NOT NULL,
userId	INT(4)	NOT NULL,
CONSTRAINT c_uid_fk FOREIGN KEY (userId) REFERENCES Users (userId)
);

select * from Users;
select * from Users_Activity;