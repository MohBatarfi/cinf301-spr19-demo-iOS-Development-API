# iOS Development with API

### By Mohammed Batarfi

## Prerequisites

In order to run this demo, you must have IDE to run iOS projects such as XCode


## Instructions

To run this application, simply open the "Web_Apps_Demo.xcodeproj" file and run the app.

If the data was not shown, that means that the domain server I'm using is down.

The MySQL.php file is attached to the project.

1) Create the database with the following columns

<pre>
CREATE TABLE `locations` (
	`name`	TEXT NOT NULL,
	`address`	TEXT NOT NULL,
	`latitude`	TEXT NOT NULL,
	`longitude`	TEXT NOT NULL
);

insert into locations values("Apple" , "1 Infinite Loop Cupertino, CA", "37.331741", "-122.030333");
insert into locations values("Googleplex" , "1600 Amphitheater Pkwy, Mountain View, CA", "37.421999", "-122.083954");
</pre>

2) Upload the MySQL.php to your MySQL DB in a web server and adjust the following line to your DB

information such as (Username, Password, Database_Name).

<pre>$con=mysqli_connect("localhost","Username","User_Password","Database_Name");</pre>


I used Bluehost to create the database and upload MySQL.php file
https://www.bluehost.com/
