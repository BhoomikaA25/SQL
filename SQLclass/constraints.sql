use business;

CREATE TABLE Chat_Centers (CenterID INT unique,Center_Name VARCHAR(100) unique,City VARCHAR(50) not null,District VARCHAR(50) not null ,
State VARCHAR(50) ,PinCode VARCHAR(10),Contact_Number int,Specialty VARCHAR(100),Opening_time decimal, constraint Opening_time_chk check(Opening_time>17.00),
SeatingCapacity INT,constraint SeatingCapacity_check check (SeatingCapacity>200),OwnerName VARCHAR(100));

INSERT INTO Chat_Centers VALUES(101,'Shree Krishna Chats', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560001', '9805550180', 'Pani Puri', 18.45, 750, 'Ramesh Rao');
INSERT INTO Chat_Centers VALUES(122,'Vidyarthi Bhavan', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560004', '9805550181', 'Masala Dosa', 18.45, 2100, 'Ganesh Bhat');
INSERT INTO Chat_Centers VALUES(133,'Chatar Patar', 'Mysore', 'Mysore', 'Karnataka', '570002', '8215550182', 'Chaat', 18.45, 1160, 'Lakshmi Shankar');
INSERT INTO Chat_Centers VALUES(144,'Sri Sagar', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560080', '608550183', 'Idli Vada', 18.00, 380, 'Manjunath Shetty');
INSERT INTO Chat_Centers VALUES(155,'Raghus Bhel Puri', 'Hubli', 'Dharwad', 'Karnataka', '580020', '7835550184', 'Bhel Puri', 19.50, 240, 'Raghu Naik');
INSERT INTO Chat_Centers VALUES(166,'Chaat Street', 'Mangalore', 'Dakshina Kannada', 'Karnataka', '575001', '68245550185', 'Sev Puri', 19.45, 270, 'Kiran Shetty');
INSERT INTO Chat_Centers VALUES(177,'Upahara Darshini', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560003', '805550186', 'Dosa', 18.45, 290, 'Anand Rao');
INSERT INTO Chat_Centers VALUES(188,'Guru Sweets and Chats', 'Udupi', 'Udupi', 'Karnataka', '576101', '9205550187', 'Samosa', 18.45, 255, 'Guru Prasad');
INSERT INTO Chat_Centers VALUES(199,'Lakshmi Chats', 'Bellary', 'Bellary', 'Karnataka', '583101', '93925550188', 'Aloo Tikki', 18.45, 245, 'Lakshmi Bai');
INSERT INTO Chat_Centers VALUES(210,'Ganesh Chats', 'Davangere', 'Davangere', 'Karnataka', '577001', '81925550189', 'Pav Bhaji', 18.00, 265, 'Ganesh Acharya');
INSERT INTO Chat_Centers VALUES(220,'Bhagyas Chaat Corner', 'Tumkur', 'Tumkur', 'Karnataka', '572101', '9816550190', 'Dahi Puri', 18.45, 250, 'Bhagya Reddy');
INSERT INTO Chat_Centers VALUES(240,'Srinidhi Sweets and Chats', 'Hassan', 'Hassan', 'Karnataka', '573201', '98172550191', 'Kachori', 19.00, 270, 'Srinidhi Gowda');
INSERT INTO Chat_Centers VALUES(260,'Raja Chat Center', 'Mysore', 'Mysore', 'Karnataka', '570005', '9821550192', 'Bhel Puri', 18.45, 260, 'Raja Rao');
INSERT INTO Chat_Centers VALUES(280,'Swathi Chats', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560010', '780550193', 'Samosa', 18.00, 280, 'Swathi Shetty');
INSERT INTO Chat_Centers VALUES(288,'Nandini Sweets', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560017', '980550194', 'Jalebi', 18.45, 1100, 'Nandini Rao');
INSERT INTO Chat_Centers VALUES(300,'Anand Chat House', 'Hubli', 'Dharwad', 'Karnataka', '580030', '9836550195', 'Chaat', 18.45, 275, 'Anand Patil');
INSERT INTO Chat_Centers VALUES(330,'Sudhas Chaat Center', 'Gulbarga', 'Kalaburagi', 'Karnataka', '585101', '8472550196','gobi', 18.45,  255, 'Sudha Joshi');
INSERT INTO Chat_Centers VALUES(350,'Mysore Mylari', 'Mysore', 'Mysore', 'Karnataka', '570004', '9821550197', 'Mylari Dosa', 18.00, 250, 'Mylari Bhatt');
INSERT INTO Chat_Centers VALUES(450,'Ushas Chaat Center', 'Bijapur', 'Bijapur', 'Karnataka', '586101', '83525550198', 'Pav Bhaji',18.45, 245, 'Usha Patil');
INSERT INTO Chat_Centers VALUES(550,'Shree Durga Chats', 'Mandya', 'Mandya', 'Karnataka', '571401', '8232550199', 'Bhel Puri', 19.00, 265, 'Durga Gowda');

desc Chat_Centers;
select * from Chat_Centers;

alter table Chat_Centers modify column Contact_Number bigint;

 alter table Chat_Centers modify column PinCode VARCHAR(10) not null;
 alter table Chat_Centers add constraint Contact_Number_uni unique (Contact_Number);
alter table Chat_Centers add constraint Opening_chk check(Opening_time>17.00 and Opening_time<=20.00 );
alter table Chat_Centers add constraint Seating_check check (SeatingCapacity>200 and SeatingCapacity<5900);



CREATE TABLE Metro_info (metroID INT unique,City VARCHAR(50) not null,State VARCHAR(50) not null,LineName VARCHAR(100) ,
StationName VARCHAR(100) ,platformCount int ,constraint count_chk check(platformCount>0),no_of_passangers INT, constraint num_chk check(no_of_passangers>50),
OpenDate DATE,Station_code int unique,Parking_Availability boolean,ContactNumber bigint);


INSERT INTO Metro_info VALUES(1,'Mumbai', 'Maharashtra', 'Red Line', 'Andheri', 2, 100000, '2008-06-08', 191197, TRUE, 9225550120);
INSERT INTO Metro_info VALUES(2,'Mumbai', 'Maharashtra', 'Red Line', 'Ghatkopar', 2, 85000, '2008-06-08', 190864, TRUE, 9225550121);
INSERT INTO Metro_info VALUES(3,'Delhi', 'Delhi', 'Blue Line', 'Rajiv Chowk', 3, 150000, '2002-12-25', 286328, FALSE, 8115550122);
INSERT INTO Metro_info VALUES(4,'Delhi', 'Delhi', 'Yellow Line', 'Kashmere Gate', 4, 120000, '2004-12-20', 286672, TRUE, 8115550123);
INSERT INTO Metro_info VALUES(5,'Bangalore', 'Karnataka', 'Purple Line', 'MG Road', 2, 90000, '2011-10-20', 129756, FALSE, 080-5550124);
INSERT INTO Metro_info VALUES(6,'Bangalore', 'Karnataka', 'Green Line', 'Yeshwanthpur', 2, 70000, '2015-03-01', 130267, TRUE, 080-5550125);
INSERT INTO Metro_info VALUES(7,'Chennai', 'Tamil Nadu', 'Blue Line', 'Egmore', 2, 80000, '2015-06-29', 130744, TRUE, 044-5550126);
INSERT INTO Metro_info VALUES(8,'Chennai', 'Tamil Nadu', 'Blue Line', 'Airport', 2, 60000, '2016-09-21', 129941, FALSE, 044-5550127);
INSERT INTO Metro_info VALUES(9,'Kolkata', 'West Bengal', 'North-South Line', 'Esplanade', 2, 100000, '1984-10-24', 225679, TRUE, 033-5550128);
INSERT INTO Metro_info VALUES(10,'Kolkata', 'West Bengal', 'East-West Line', 'Salt Lake Stadium', 2, 75000, '2020-02-13', 225697, FALSE, 033-5550129);
INSERT INTO Metro_info VALUES(11,'Hyderabad', 'Telangana', 'Red Line', 'Ameerpet', 2, 85000, '2017-11-29', 174375,FALSE, 040-5550130);
INSERT INTO Metro_info VALUES(12,'Hyderabad', 'Telangana', 'Blue Line', 'Nagole', 2, 65000, '2017-11-29', 174137, TRUE, 040-5550131);
INSERT INTO Metro_info VALUES(13,'Pune', 'Maharashtra', 'Aqua Line', 'PCMC', 2, 70000, '2021-03-06', 186298,TRUE, 020-5550132);
INSERT INTO Metro_info VALUES(14,'Pune', 'Maharashtra', 'Aqua Line', 'Swargate', 2, 60000, '2021-03-06', 185018,FALSE, 020-5550133);
INSERT INTO Metro_info VALUES(15,'Ahmedabad', 'Gujarat', 'Blue Line', 'Vastral', 2, 65000, '2019-03-06', 230225, TRUE, 079-5550134);
INSERT INTO Metro_info VALUES(16,'Ahmedabad', 'Gujarat', 'Blue Line', 'Thaltej', 2, 50000, '2019-03-06', 230702, TRUE, 079-5550135);
INSERT INTO Metro_info VALUES(17,'Jaipur', 'Rajasthan', 'Pink Line', 'Mansarovar', 2, 60000, '2015-06-03', 268544, TRUE, 0141-5550136);
INSERT INTO Metro_info VALUES(18,'Jaipur', 'Rajasthan', 'Pink Line', 'Chandpole', 2, 55000, '2015-06-03', 269258, FALSE, 0141-5550137);
INSERT INTO Metro_info VALUES(19,'Lucknow', 'Uttar Pradesh', 'Red Line', 'Charbagh', 2, 80000, '2017-09-05', 268343,FALSE, 0522-5550138);
INSERT INTO Metro_info VALUES(20,'Lucknow', 'Uttar Pradesh', 'Red Line', 'Alambagh', 2, 70000, '2017-09-05', 268011, TRUE, 0522-5550139);

alter table Metro_info modify ContactNumber bigint not null;
alter table Metro_info add constraint ContactNumber_uni unique (ContactNumber);
alter table Metro_info add constraint platformCount_chk check (platformCount>0 and platformCount<=4);
alter table Metro_info add constraint no_of_passangers_uni check (no_of_passangers>50 and no_of_passangers<=1000000);


CREATE TABLE Market_info (MarketID INT unique,MarketName VARCHAR(100) not null ,City VARCHAR(50) not null,District VARCHAR(50) ,State VARCHAR(50) ,PinCode VARCHAR(10),ContactNumber bigint unique,
MarketType VARCHAR(50),OpeningDate DATE,Capacity INT, constraint capaci_chk check (Capacity>900),Ratings int, constraint rating_chk check (Ratings>2));

desc Market_info;

insert into Market_info values(1,'KR Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560002', 8099555040, 'Wholesale', '1928-01-01', 1000, 4);
insert into Market_info values(2,'Yeshwanthpur Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560022', 7895550141, 'Retail', '1980-05-15', 1500, 3);
insert into Market_info values(3,'Jayanagar 4th Block Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560068', 9805550142, 'Wholesale', '1975-07-20', 2000, 3);
insert into Market_info values(4,'Russell Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560051', 8015550143, 'Retail', '1927-11-01', 1000, 3);
insert into Market_info values(5,'Kalasi Palya Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560002', 0805550144, 'Wholesale', '1960-10-10', 2500, 4);
insert into Market_info values(6,'Madiwala Market', 'Bangalore', 'Bangalore Urban', 'Karnataka', '560041', 0805550145, 'Retail', '1970-04-12', 1250, 3);
insert into Market_info values(7,'Mangalore Central Market', 'Mangalore', 'Dakshina Kannada', 'Karnataka', '575001', 08245550146, 'Wholesale', '1965-03-25', 1100, 3);
insert into Market_info values(8,'Udupi Market', 'Udupi', 'Udupi', 'Karnataka', '576101', 08205550147, 'Retail', '1950-08-30', 1300, 3);
insert into Market_info values(9,'Shimoga Market', 'Shimoga', 'Shivamogga', 'Karnataka', '577201', 081825550148, 'Wholesale', '1968-09-18', 2350, 3);
insert into Market_info values(10,'Hubli Market', 'Hubli', 'Dharwad', 'Karnataka', '580020', 08365550149, 'Retail', '1975-12-05', 1400, 3);
insert into Market_info values(11,'Dharwad Market', 'Dharwad', 'Dharwad', 'Karnataka', '580001', 0836-5550150, 'Wholesale', '1955-02-17', 2300, 4);
insert into Market_info values(12,'Bijapur Market', 'Bijapur', 'Bijapur', 'Karnataka', '586101', 08352-555015, 'Retail', '1962-05-22', 1250, 5);
insert into Market_info values(13,'Belgaum Market', 'Belgaum', 'Belgaum', 'Karnataka', '590001', 0831-5550152, 'Wholesale', '1958-11-13', 1350, 4);
insert into Market_info values(14,'Gulbarga Market', 'Gulbarga', 'Kalaburagi', 'Karnataka', '585101', 08472-5550153, 'Retail', '1963-06-16', 1300, 3);
insert into Market_info values(15,'Bellary Market', 'Bellary', 'Bellary', 'Karnataka', '583101', 08392-5550154, 'Wholesale', '1957-07-21', 2400, 4);
insert into Market_info values(16,'Davangere Market', 'Davangere', 'Davangere', 'Karnataka', '577001', 08192-555015, 'Retail', '1969-09-14', 2350, 4);
insert into Market_info values(17,'Tumkur Market', 'Tumkur', 'Tumkur', 'Karnataka', '572101', 0816-5550156, 'Wholesale', '1974-03-10', 1300, 4);
insert into Market_info values(18,'Mysore Market', 'Mysore', 'Mysore', 'Karnataka', '570001', 0821-5550157, 'Retail', '1966-05-26', 3400, 4);
insert into Market_info values(19,'Hassan Market', 'Hassan', 'Hassan', 'Karnataka', '573201', 08172-5550158, 'Wholesale', '1972-08-19', 2250, 3);
insert into Market_info values(20,'Mandya Market', 'Mandya', 'Mandya', 'Karnataka', '571401', 08232-5550159, 'Retail', '1973-01-30', 2300, 3);


alter table Market_info modify column State VARCHAR(50) not null;
alter table Market_info add constraint  MarketName_uni unique ( MarketName ); 
alter table Market_info add constraint cap_chk check (Capacity>900 and Capacity<=4000);
alter table Market_info add constraint rat_chk check (Capacity>900 and Ratings<=5);

desc Market_info;
select * from Market_info;



CREATE TABLE Show_room (ShowroomID INT unique,ShowroomName VARCHAR(100) unique,Address VARCHAR(255) NOT NULL,City VARCHAR(50) ,State VARCHAR(50) ,ZipCode int NOT NUll,PhoneNumber bigint ,
Ratings int, constraint  Ratings_chk check(Ratings>1),ManagerName VARCHAR(100),Capacity INT, constraint  Capacity_chk check(Capacity>6));

Insert into Show_room values(1,'Mumbai Motors', ' Marine Drive', 'Mumbai', 'Maharashtra', 400001, 9481689044, 2, 'Rahul Sharma', 50);
Insert into Show_room values(2,'Delhi Autos', ' Connaught Place', 'New Delhi', 'Delhi', 110001, 6362118662, 4, 'Anjali Mehta', 40);
Insert into Show_room values(3,'Bangalore Cars', ' MG Road', 'Bangalore', 'Karnataka', 560001, 0805550102, 3, 'Rajesh Kumar', 60);
Insert into Show_room values(4,'Chennai Wheels', ' Mount Road', 'Chennai', 'Tamil Nadu', 600002, 0445550103, 4, 'Priya Reddy', 55);
Insert into Show_room values(5,'Kolkata Motors', ' Park Street', 'Kolkata', 'West Bengal', 700016, 033-5550104, 3, 'Amit Sen', 45);
Insert into Show_room values(6,'Hyderabad Autos', ' Banjara Hills', 'Hyderabad', 'Telangana', 500034, 040-5550105, 2, 'Lakshmi Rao', 35);
Insert into Show_room values(7,'Pune Wheels', '404 FC Road', 'Pune', 'Maharashtra', 411004, 020-5550106, 4, 'Vikram Joshi', 50);
Insert into Show_room values(8,'Ahmedabad Cars', '505 CG Road', 'Ahmedabad', 'Gujarat', 380009, 079-5550107, 3, 'Meera Patel', 40);
Insert into Show_room values(9,'Jaipur Motors', '606 MI Road', 'Jaipur', 'Rajasthan', 302001, 0141-5550108, 4, 'Arjun Singh', 45);
Insert into Show_room values(10,'Lucknow Autos', '707 Hazratganj', 'Lucknow', 'Uttar Pradesh', 226001, 0522-5550109, 3, 'Neha Verma', 35);
Insert into Show_room values(11,'Chandigarh Wheels', '808 Sector 17', 'Chandigarh', 'Chandigarh', 160017, 0172-5550110, 4, 'Rohit Kapoor', 55);
Insert into Show_room values(12,'Indore Motors', '909 MG Road', 'Indore', 'Madhya Pradesh', 452001, 0731-5550111, 3, 'Sneha Gupta', 50);
Insert into Show_room values(13,'Bhopal Autos', '111 MP Nagar', 'Bhopal', 'Madhya Pradesh', 462011, 0755-5550112, 3, 'Gaurav Jain', 45);
Insert into Show_room values(14,'Patna Wheels', '222 Boring Road', 'Patna', 'Bihar', 800001, 0612-5550113, 5, 'Pooja Sinha', 35);
Insert into Show_room values(15,'Thiruvananthapuram Cars', '333 MG Road', 'Thiruvananthapuram', 'Kerala', 695001, 0471-5550114, 3, 'Ravi Nair', 60);
Insert into Show_room values(16,'Kochi Autos', '444 MG Road', 'Kochi', 'Kerala', 682016, 0484-5550115, 4, 'Sanjay Menon', 55);
Insert into Show_room values(17,'Guwahati Motors', '555 GS Road', 'Guwahati', 'Assam', 781005, 0361-5550116, 3, 'Anupam Das', 40);
Insert into Show_room values(18,'Nagpur Wheels', '666 WHC Road', 'Nagpur', 'Maharashtra', 440010, 0712-5550117, 4, 'Smita Rao', 45);
Insert into Show_room values(19,'Surat Autos', '777 Ring Road', 'Surat', 'Gujarat', 395003, 0261-5550118, 3, 'Karan Shah', 35);
Insert into Show_room values(20,'Vadodara Cars', '888 RC Dutt Road', 'Vadodara', 'Gujarat', 390007, 0265-5550119, 4, 'Anita Desai', 50);


alter table Show_room modify State VARCHAR(50) not null;
alter table Show_room add constraint PhoneNumber_uni  unique (PhoneNumber);
alter table Show_room add constraint new_capacity_chk check ( Capacity>6 and Capacity<=90);
alter table Show_room add constraint new_ratings_chk check (Ratings>1 and Ratings<=5);

SELECT * FROM Show_room;



CREATE TABLE Temple_info (TempleID INT unique,TempleName VARCHAR(100) not null ,City VARCHAR(50) not null,
District VARCHAR(50),State VARCHAR(50) ,PinCode VARCHAR(10),ContactNumber VARCHAR(15) unique,Deity VARCHAR(50),
Established_Year YEAR, constraint Established_Year check(Established_Year>100),Visitors INT, constraint Visitors_chk check(Visitors<70000),
PriestName VARCHAR(100));
    
    desc Temple_info;


INSERT INTO Temple_info VALUES(10,'Sri Venkateswara Temple', 'Bangalore', 'Bangalore ', 'Karnataka', '560034', '805550160', 'Venkateswara', 1950, 50000, 'Raghavendra Rao');
INSERT INTO Temple_info VALUES(11,'Sri Chennakeshava Temple', 'Hassan', 'Hassan', 'Karnataka', '573201', '017550161', 'Chennakeshava', 1117, 30000, 'Madhusudhan Reddy');
INSERT INTO Temple_info VALUES(12,'Murudeshwara Temple', 'Murudeshwara', 'Uttara Kannada', 'Karnataka', '581350', '8385550162', 'Shiva', 1650, 10000, 'Shivakumar Hegde');
INSERT INTO Temple_info VALUES(13,'Sri Manjunatha Temple', 'Dharmasthala', 'Dakshina Kannada', 'Karnataka', '574216', '82565550163', 'Manjunatha', 800, 15000, 'Vidyasagar Shetty');
INSERT INTO Temple_info VALUES(14,'Sri Krishna Temple', 'Udupi', 'Udupi', 'Karnataka', '576101', '8205550164', 'Krishna', 1270, 1200, 'Lakshminarayana Upadhya');
INSERT INTO Temple_info VALUES(15,'Sri Ranganathaswamy Temple', 'Srirangapatna', 'Mandya', 'Karnataka', '571438', '82365550165', 'Ranganathaswamy', 894, 7000, 'Suryanarayana Bhat');
INSERT INTO Temple_info VALUES(16,'Gokarna Mahabaleshwar Temple', 'Gokarna', 'Uttara Kannada', 'Karnataka', '581326', '83875550166', 'Shiva', 1500, 5000, 'Vishwanath Hegde');
INSERT INTO Temple_info VALUES(17,'Sri Chamundeshwari Temple', 'Mysore', 'Mysore', 'Karnataka', '570010', '8215550167', 'Chamundeshwari', 1659, 8000, 'Shankara Bhat');
INSERT INTO Temple_info VALUES(18,'Sri Mookambika Temple', 'Kollur', 'Udupi', 'Karnataka', '576220', '08254550168', 'Mookambika', 800, 6000, 'Narayan Bhat');
INSERT INTO Temple_info VALUES(19,'Sri Kukke Subramanya Temple', 'Subramanya', 'Dakshina Kannada', 'Karnataka', '574238', '08256550169', 'Subramanya', 700, 9000, 'Ravindra Rao');
INSERT INTO Temple_info VALUES(20,'Banashankari Temple', 'Badami', 'Bagalkot', 'Karnataka', '587201', '08357550170', 'Banashankari', 603, 4000, 'Ramachandra Bhat');
INSERT INTO Temple_info VALUES(21,'Sri Virupaksha Temple', 'Hampi', 'Ballari', 'Karnataka', '583239', '83945550171', 'Virupaksha', 740, 5000, 'Pradeep Hegde');
INSERT INTO Temple_info VALUES(22,'Sri Durgaparameshwari Temple', 'Kateel', 'Dakshina Kannada', 'Karnataka', '574148', '0824-5550172', 'Durgaparameshwari', 756, 6000, 'Kumar Bhat');
INSERT INTO Temple_info VALUES(23,'Sri Ananthapadmanabha Temple', 'Manjeshwar', 'Dakshina Kannada', 'Karnataka', '671323', '08251550173', 'Ananthapadmanabha', 900, 3000, 'Gopalkrishna Bhat');
INSERT INTO Temple_info VALUES(24,'Sri Kollur Mookambika Temple', 'Kollur', 'Udupi', 'Karnataka', '576220', '08254550174', 'Mookambika', 1200, 7000, 'Ananda Bhat');
INSERT INTO Temple_info VALUES(25,'Sri Sringeri Sharada Peetham', 'Sringeri', 'Chikkamagaluru', 'Karnataka', '577139', '08265550175', 'Sharada', 750, 8000, 'Bhagavatpada Acharya');
INSERT INTO Temple_info VALUES(26,'Sri Chamundeshwari Temple', 'Chamundi Hill', 'Mysore', 'Karnataka', '570010', '0821550176', 'Chamundeshwari', 1050, 9000, 'Ravi Shastry');
INSERT INTO Temple_info VALUES(27,'Sri Rajarajeshwari Temple', 'Polali', 'Dakshina Kannada', 'Karnataka', '574230', '0824550177', 'Rajarajeshwari', 1200, 5000, 'Vishwanath Bhat');
INSERT INTO Temple_info VALUES(28,'Sri Sharavu Mahaganapathi Temple', 'Mangalore', 'Dakshina Kannada', 'Karnataka', '575001', '0824550178', 'Mahaganapathi', 800, 6000, 'Ananth Hegde');
INSERT INTO Temple_info VALUES(29,'Sri Mahabaleshwar Temple', 'Gokarna', 'Uttara Kannada', 'Karnataka', '581326', '08387550179', 'Shiva', 1600, 4500, 'Shankar Rao');


alter table Temple_info modify column Established_Year int;

alter table Temple_info modify column District VARCHAR(50) not null;
alter table Temple_info add constraint PriestName_uni unique(PriestName);
alter table Temple_info add constraint Established_Year_chk check(Established_Year>100 and Established_Year<2023);
alter table Temple_info add constraint Visi_chk_ check(Visitors<70000 and Visitors>100);

SELECT * FROM Temple_info;

