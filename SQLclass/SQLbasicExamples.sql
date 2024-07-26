CREATE DATABASE BUSINESS;
 USE BUSINESS;
 CREATE TABLE CUSTOMER(CUST_ID VARCHAR(20), FIRSTNAME VARCHAR(40), LASTNAME VARCHAR(30),EMAIL VARCHAR(50),NO_OF_CUST BIGINT,PHONE_NO BIGINT, NO_OF_PRODUCTS INT, PRICE INT);
 CREATE TABLE PRODUCTS(PRODUCT_ID VARCHAR(60), PRODUCT_NAME VARCHAR(40),PRODUCT_CODE VARCHAR(60),STORE_PLACE VARCHAR(100),PRICE INT, STOCK_QUALITY INT,CUSTOMER_PHNO BIGINT, NO_OF_SOLD BIGINT);
 CREATE TABLE ARTICLES(ARTICLE_ID VARCHAR(60),TITLE VARCHAR(50), PUBLISHER_NAME VARCHAR(60), STATUS VARCHAR(20), PHONE_NO BIGINT, NO_OF_BOOKS BIGINT, BOOKS_SOLD INT,BOOKS_PURCHASED INT );
 CREATE TABLE ACCOUNT(ACCOUNT_ID BIGINT, AccountHolder_FName VARCHAR(40),AccountHolder_LName VARCHAR(40), AccountType VARCHAR(40),BankingName VARCHAR(40), CurrentBalance bigint,TransactionAmount int,Users int);
 CREATE TABLE INSTA_USERS (UserId varchar(50), UserName VARCHAR(50), Email Varchar(50), Bio Varchar(100), posts int, PostId int,NumOfUsers bigint, NumOfLikes bigint );
 CREATE TABLE HOSPITAL(Doc_ID VARCHAR(500), FirstNmae varchar(90), LastName varchar(40), Speciality varchar(70),LicenseNumber Bigint,PhoneNum Bigint,NumOfDoc int,Age int);
 CREATE TABLE APPOINMNTS(AppointmentId varchar(100), PatientId varchar(200),DoctorId varchar(500),Reason varchar(200),DocNum bigint,PatientNum bigint,NoOfPatients int,AlloctedDoctors int);																																																																																																																																																																																																																																																							

ALTER TABLE CUSTOMER ADD COLUMN PRD_NAME VARCHAR(20);
SELECT * FROM CUSTOMER;
ALTER TABLE PRODUCTS ADD COLUMN MANUFACTURED_BYB VARCHAR(577);
SELECT * FROM PRODUCTS;
ALTER TABLE PRODUCTS ADD COLUMN MANUFACTURED_DATE date;
ALTER TABLE PRODUCTS ADD COLUMN MANUFACTURED_TIME time;
SELECT * FROM PRODUCTS;

ALTER TABLE CUSTOMER DROP COLUMN PRD_NAME;

CREATE TABLE AIRPORT_DETAILS(CREW_ID VARCHAR(300),AIRLINE_NAME VARCHAR(600),PASSANGERS_NAME VARCHAR(60),TICKET_NUM VARCHAR(69),CLASS_NAME VARCHAR(70));
ALTER TABLE EMP_DETAILS ADD COLUMN WORK_PLACE VARCHAR(70);
CREATE TABLE EMP_DETAILS(EMP_ID VARCHAR(100), F_NAME VARCHAR(49),L_NAME VARCHAR(40),PHONE_NO BIGINT,ADRESS VARCHAR(220));
ALTER TABLE EMP_DETAILS ADD COLUMN DEPARTMENT VARCHAR(70);
ALTER TABLE EMP_DETAILS ADD COLUMN ROLE VARCHAR(70);
ALTER TABLE EMP_DETAILS ADD COLUMN SALARY BIGINT;
ALTER TABLE EMP_DETAILS ADD COLUMN DEP_ID INT;
SELECT * FROM EMP_DETAILS;
DESC EMP_DETAILS;
ALTER TABLE EMP_DETAILS DROP COLUMN WORK_PLACE;
ALTER TABLE EMP_DETAILS DROP COLUMN DEP_ID;
ALTER TABLE EMP_DETAILS RENAME COLUMN ROLE TO ROLE_ASSIGNED;
ALTER TABLE EMP_DETAILS RENAME COLUMN SALARY TO SALARY_PROVIDED ;
ALTER TABLE EMP_DETAILS RENAME COLUMN L_NAME TO LAST_NAME ;
ALTER TABLE EMP_DETAILS RENAME COLUMN F_NAME TO FRIST_NAME ;
ALTER TABLE EMP_DETAILS MODIFY COLUMN SALARY INT;
ALTER TABLE EMP_DETAILS DROP COLUMN SALARY_PROVIDED;
ALTER TABLE EMP_DETAILS MODIFY COLUMN EMP_ID INT;
ALTER TABLE EMP_DETAILS MODIFY COLUMN DEP_ID VARCHAR(60);


ALTER TABLE AIRPORT_DETAILS ADD COLUMN BOARDING_PASS VARCHAR(60);
ALTER TABLE  AIRPORT_DETAILS ADD COLUMN DESTINATION VARCHAR(80);
ALTER TABLE AIRPORT_DETAILS ADD COLUMN AIRLINE_CODE BIGINT;
ALTER TABLE AIRPORT_DETAILS ADD COLUMN AIRPORT_QUALITY INT;
ALTER TABLE AIRPORT_DETAILS ADD COLUMN DEPARTURE_TIME TIME;
SELECT * FROM AIRPORT_DETAILS;
ALTER TABLE AIRPORT_DETAILS DROP COLUMN AIRPORT_QUALITY;
ALTER TABLE AIRPORT_DETAILS DROP COLUMN DEPARTURE_TIME;
ALTER TABLE AIRPORT_DETAILS RENAME COLUMN BOARDING_PASS TO BOARD_PASS;
ALTER TABLE AIRPORT_DETAILS RENAME COLUMN PASSANGERS_NAME TO PASS_NAME;
ALTER TABLE AIRPORT_DETAILS MODIFY COLUMN AIRLINE_CODE INT;
ALTER TABLE AIRPORT_DETAILS MODIFY COLUMN TICKET_NUM INT;
SELECT * FROM AIRPORT_DETAILS;
DESC AIRPORT_DETAILS;

SELECT * FROM EMP_DETAILS;
INSERT INTO EMP_DETAILS VALUES(2323,'GOURAV','RAO',9078645098,'BANASHANKARI','CLOUD','TESTING',6767676,'DF56');
SELECT * FROM EMP_DETAILS;

INSERT INTO EMP_DETAILS VALUES(2324,'MADHAV','SHET',9178845098,'BANASHANKARI','CLOUD','TESTING',40000,'LF67');
INSERT INTO EMP_DETAILS VALUES(2325,'GOWRI','RAO',8178645098,'MALESHWARAM','DATASCIENCE','DEVELOPER',54677,'DDV7');
INSERT INTO EMP_DETAILS VALUES(4544,'SUKRUTHI','SINGH',9418645098,'GANDHINAGAR','DATASCIENCE','DEVELOPER',45000,'DDY8');
INSERT INTO EMP_DETAILS VALUES(4786,'AKSHAYA','JAIN',7760783878,'VIDYARANYAPURA','DEVOPS','ARCHITECT',500000,'CL89');
INSERT INTO EMP_DETAILS VALUES(5656,'MEENU','SAKLESH',9098645098,'BANASHANKARI','DATASCIENCE','TESTING',667676,'DF16');
INSERT INTO EMP_DETAILS VALUES(2123,'VEERNATH','SHETTY',9979645098,'BANASHANKARI','DATASCIENCE','ASSOCIATE_MANAGER',6767676,'FF09');
INSERT INTO EMP_DETAILS VALUES(4545,'JAISHAV','BIJRA',7979645098,'RAJAJINAGAR','DATASCIENCE','DEVELOPER',60000,'FF67');
INSERT INTO EMP_DETAILS VALUES(3433,'JAVITHA','JAIDEV',9909045098,'RAJAJINAGAR','DEVOPS','ARCHITECT',80000,'CL90');
INSERT INTO EMP_DETAILS VALUES(4500,'ANAYA','AREN',6379645098,'KORMANGLA','AIML','MANAGER',900890,'MA67');

SELECT * FROM EMP_DETAILS;
SELECT*FROM EMP_DETAILS WHERE EMP_ID=5656;

use BUSINESS;
create table Hospi_inf(hospital_id varchar(333),hospital_name VARCHAR(100),address VARCHAR(255),city VARCHAR(100),state VARCHAR(100),country VARCHAR(100),phone_number VARCHAR(20),emergency_services BOOLEAN,number_of_beds INT,no_of_patient int);
DESC Hospi_inf;
INSERT INTO Hospi_inf VALUES(1,MAX,Vidyanagar,Shimogga,Karnataka,India,9481689044,1,700,30);
INSERT INTO Hospi_inf VALUES(1,Sharavathi,Vidyanagar,Shimogga,Karnataka,India,9481689044,1,700,30);
INSERT INTO Hospi_inf VALUES(2,Ananya,Rajajinagar,Banglore,Karnataka,INdia,67676676766,0,34,3);

CREATE TABLE HOS_INFO( hospital_id INT ,hospital_name VARCHAR(100),address VARCHAR(255),city VARCHAR(100),state VARCHAR(100),country VARCHAR(100),phone_number VARCHAR(20),No_of_Patients VARCHAR(778),number_of_beds INT,rating int);
INSERT INTO HOS_INFO VALUES(1,'ANANYA','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',4564564456,45,333,2);
DESC HOS_INFO;
INSERT INTO HOS_INFO VALUES(2,'BHASWESHWAR','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(3,'MAX','RAJAJINAGAR','SHIMOGGA','KARNATAKA','INDIA',819475445,56,700,5),(4,'BELLUR','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',97878787844,45,333,2),(1,'gowri','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9563434344,45,333,2),(3,'ANANYA','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',7760414980,67,66,7),(9,'JAISHREE','BHASHIM','BANGLORE','KARNATAKA','INDIA',885867234,90,339,8),(5,'Nayana','BELLUR','BANGLORE','KARNATAKA','INDIA',94,45,333,2),(4,'ANANYA','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',94,45,333,2),(8,'METRIC','JYANAGAR','BANGLORE','KARNATAKA','INDIA',636125678,77,8,4),(22,'NANJAPPA','NANROD','SHIMOGGA','KARNATAKA','INDIA',676676443,600,8999,5),(67,'NARAYANA','ALKOLA','SHIMOGA','KARNATAKA','INDIA',7760414986,600,400,9),(77,'NAYANA','SALEYAMNAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,8),(2,'BHASWESHWAR','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(66,'BHASWESHWAR','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(90,'jayanga','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(20,'LOLMAK','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(70,'MOOSH','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(2,'DEEGAV','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(25,'LEELU','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(2,'NAYANAJI','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(77,'MOULYA','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(2,'SIKUR','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(2,'JUIET','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5),(88,'DOLAI','RAJAJINAGAR','BANGLORE','KARNATAKA','INDIA',9481689044,78,339,5);
CREATE TABLE tourist_places (place_id INT,place_name VARCHAR(100),location VARCHAR(255),city VARCHAR(100),state VARCHAR(100),country VARCHAR(100),visiting_hours VARCHAR(100),entry_fee DECIMAL(10, 2),rating FLOAT,description TEXT);
SELECT*FROM HOS_INFO;
DESC tourist_places;
INSERT INTO tourist_places VALUES
(1, 'Lalbhag', 'Francisco', 'San ', 'Banglore', 'India', '9:00 AM - 6:00 PM', 15.00, 4.7, 'Beautifull park'),
(2, 'Eiffel Tower', 'Champ de Mars 5 Avenue Anatole', 'Paris', NULL, 'France', '9:30 AM - 11:45 PM', 25.50, 4.9, 'Global cultural icon of France and one of the most recognizable structures in the world.'),
(3, 'Great Wall of China', 'Huairou, China', 'Beijing', NULL, 'China', '8:00 AM - 5:00 PM', 20.00, 4.8, 'Ancient series of walls and fortifications.'),
(4, 'Machu Picchu', 'Cusco Region', 'Cusco', NULL, 'Peru', '6:00 AM - 5:30 PM', 30.00, 4.9, 'Incan citadel set high in the Andes Mountains in Peru.'),
(5, 'Colosseum', 'Piazza del Colosseo', 'Rome', NULL, 'Italy', '8:30 AM - 7:15 PM', 18.50, 4.6, 'Iconic ancient amphitheater in Rome.'),
(6, 'Statue of Liberty', 'Liberty Island', 'New York City', 'New York', 'USA', '8:30 AM - 4:00 PM', 20.00, 4.5, 'Symbol of freedom and democracy.'),
(7, 'Taj Mahal', 'Dharmapuri, Forest Colony', 'Agra', 'Uttar Pradesh', 'India', '6:00 AM - 7:00 PM', 15.00, 4.8, 'White marble mausoleum.'),
(8, 'Sydney Opera House', 'Bennelong Point', 'Sydney', 'New South Wales', 'Australia', '9:00 AM - 5:00 PM', 22.00, 4.7, 'Iconic performing arts center.'),
(9, 'Sagrada Família', 'Carrer de Mallorca', 'Barcelona', NULL, 'Spain', '9:00 AM - 6:00 PM', 20.00, 4.6, 'Basilica under construction since 1882.'),
(10, 'Mount Everest', 'Himalayas', 'Nepal', NULL, 'Nepal', 'N/A', 50.00, 4.9, 'Highest mountain in the world'),

(11, 'Mount Abu', 'Francisco', 'San ', 'Banglore', 'India', '9:00 AM - 6:00 PM', 15.00, 4.7, 'Beautifull park'),
(12, 'Gol Gumbaz', 'Delhi 5 Avenue Anatole', 'Delhi', NULL, 'india', '9:30 AM - 11:45 PM', 25.50, 4.9, 'Global cultural icon of France and one of the most recognizable structures in the world.'),
(13, 'Jog Falls', 'Sgara Shimogga', 'Karnataka', NULL, 'India', '8:00 AM - 5:00 PM', 20.00, 4.8, 'Ancient series of walls and fortifications.'),
(14, 'Nayagara Falls', 'Thailand', 'Cusco', NULL, 'Peru', '6:00 AM - 5:30 PM', 30.00, 4.9, 'Incan citadel set high in the Andes Mountains in Peru.'),
(15, 'Penthouse', 'Piazza del Colosseo', 'Rome', NULL, 'USA', '8:30 AM - 7:15 PM', 18.50, 4.6, 'Iconic ancient amphitheater in Rome.'),
(16, 'Shibuya', 'Liberty Island', 'New York City', 'New York', 'Japane', '8:30 AM - 4:00 PM', 20.00, 4.5, 'Symbol of freedom and democracy.'),
(17, 'Tokyo', 'Dharmapuri Forest Colony', 'Agra', 'Uttar Pradesh', 'Japan', '6:00 AM - 7:00 PM', 15.00, 4.8, 'White marble mausoleum.'),
(18, 'Burj kalifa', 'Bennelong Point', 'Sydney', 'New South Wales', 'Dubai', '9:00 AM - 5:00 PM', 22.00, 4.7, 'Iconic performing arts center.'),
(19, 'Dhud Sagar', 'Carrer de Mallorca', 'Barcelona', NULL, 'India', '9:00 AM - 6:00 PM', 20.00, 4.6, 'Basilica under construction since 1882.'),
(20, 'Ferrari World', 'Dhubai', 'Nepal', NULL, 'Abu Dhabi', 'N/A', 50.00, 4.9, 'Highest mountain in the world');

use BUSINESS;

CREATE TABLE movie_info(movie_id varchar(60),movie_name varchar(80), Release_year int, Ticket_price int, Seats_available boolean);
CREATE TABLE bank_details(Bank_Id varchar(90),Bank_name varchar(50),passbook_num bigint, NO_of_branch int,location varchar(67));

SELECT * FROM movie_info;
Alter TABLE movie_info ADD COLUMN candidate_name varchar(68);
ALTER TABLE movie_info ADD COLUMN  no_of_seats int;
ALTER TABLE movie_info ADD COLUMN  class_name varchar(60);
ALTER TABLE movie_info ADD COLUMN  director_name varchar(60);
ALTER TABLE movie_info ADD COLUMN  language varchar(60);

Alter TABLE movie_info RENAME COLUMN candidate_name To person_name;
ALTER TABLE movie_info RENAME COLUMN  no_of_seats to Seats_reserved;
ALTER TABLE movie_info RENAME COLUMN  language TO lang_available ;
ALTER TABLE movie_info RENAME COLUMN  Release_year TO lang_available ;
ALTER TABLE movie_info RENAME COLUMN  class_name TO Genr;

DESC movie_info;

INSERT INTO movie_info VALUES(55, 'Inception',2010,70,1,'Gouthami',10,'Sci-Fi','Christopher Nolan','English');
INSERT INTO movie_info VALUES(9, 'The GodFather',1972,80,1,'Jayraj',70,'Crime','Fransis ','English');
INSERT INTO movie_info VALUES(5, 'Titanic',1972,700,0,'Dharmi',150,'Romance','James ','English');
INSERT INTO movie_info VALUES(7, 'Lapata Ladies',2024,200,1,'Leela',200,'Comedy Drama','Kiran','Hindi');
INSERT INTO movie_info VALUES(17, 'Gangubai',2022,200,0,'JAI',200,'Autobiography','Bansali','Hindi');
INSERT INTO movie_info VALUES(11, 'KGF',2021,200,0,'Yash',200,'action','Prashanth Neel','Kannada');
INSERT INTO movie_info VALUES(12, 'KGF2',2023,200,1,'Leela',200,'action','Prashanth Neel','kannada');
INSERT INTO movie_info VALUES(3, 'Pulp Fiction',1994,200,0,'Suresh',200,'Crime','Quentin','Spanish');
INSERT INTO movie_info VALUES(2, 'Avtar',1994,200,0,'jais',200,'Sci-Fi','James','Spanish');

UPDATE movie_info SET lang_available='telgu' WHERE movie_id=11;







