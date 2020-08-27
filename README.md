# rfidscannerpy
RFID Serial Data Reader: \
An RFID Tag Reader on Windows using Tkinter that would accept serial data sent by \
Arduino Uno that had a RFID Scanner attached to it. The RFID Tag had data within it(for testing \
purposes, it was a Tag ID No, although data stored within it could be modified as per \
requirements in the future), which would be transmitted by the Arduino Uno chip as serial data.\
The program would read that serial data and display it on the screen, while storing it within a
Database. 

Tools used: \
Tkinter(for GUI) \
MySQL 8.0(for Database) \
Python 3.7.2(for writing backend) \
mysql-connector(for linking Python code to MySQL DB) \
Arduino Uno(for taking and transferring RFID scanner serial data)\
RFID Scanner(for reading data from RFID Tags) 

For usage of Database: \
From the DB Schema file, please import the .sql files to MYSQL for the Table Structures and Sample test datas used. \
Will need to also make changes to .py file depending on server config details of execution computer. \
Details in these .py files have been configured according to how the DB was set up in my host MySQL server. 
