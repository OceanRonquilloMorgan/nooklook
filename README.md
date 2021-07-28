# NookLook - CSCI 201 Final Project

NookLook is a web application that helps users find study spots near them that are tailored to their individual preferences. It is designed keeping in mind the busy lives of students and professionals. It hopes to ease the process of searching for a place to study or relax.

## Authors:
* Arjun Bamba
* Ocean Ronquillo-Morgan
* Bema K. Bonsu III
* Paul Kaster
* Cathy Ding
* Juvensen Jules

## Installation
1. Open Eclipse.
2. Import project “nooklook” into your workspace.
3. Open the project settings in Eclipse and make sure external JARs are included in the project (ex. mysql-connector-java-5.1.46.jar).
4. Open Nooklook_Database.sql and run that in MySQL Workbench. This will create a database called NookLook and ensure you have a database set-up properly and working.
5. Change the connection URL (using a String user and String password) in JDBCDriver.java to match your local database credentials.
6. Right click on the project and run on Apache TomCat v10.0 server.
7. Open Google Chrome.
8. Navigate to localhost:8080/nooklook/Home.jsp.
9. Start using NookLook!

## Frameworks and Technologies
* <strong>Front-end:</strong> HTML, CSS, JavaScript, Bootstrap
* <strong>Back-end:</strong> Java, Servlets, JSP
* <strong>Database:</strong> mySQL
