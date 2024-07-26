USE business;
CREATE TABLE movie_info(movie_id varchar(60),movie_name varchar(80), Release_year int, Ticket_price int, Seats_available boolean);
CREATE TABLE bank_details(Bank_Id varchar(90),Bank_name varchar(50),passbook_num bigint, NO_of_branch int,location varchar(67));
 
 
SELECT * FROM MOV_DET;
Alter TABLE MOV_DET ADD COLUMN candidate_name varchar(68);
ALTER TABLE MOV_DET ADD COLUMN  no_of_seats int;
ALTER TABLE MOV_DET ADD COLUMN  class_name varchar(60);
ALTER TABLE MOV_DET ADD COLUMN  director_name varchar(60);
ALTER TABLE MOV_DET ADD COLUMN  language varchar(60);

Alter TABLE MOV_DET RENAME COLUMN candidate_name To person_name;
ALTER TABLE MOV_DET RENAME COLUMN  no_of_seats to Seats_reserved;
ALTER TABLE MOV_DET RENAME COLUMN  language TO lang_available ;
ALTER TABLE MOV_DET RENAME COLUMN  Release_year TO lang_available ;
ALTER TABLE MOV_DET RENAME COLUMN  class_name TO Genr;

DESC movie_info;

INSERT INTO MOV_DET VALUES(55, 'Inception',2010,70,1,'Gouthami',10,'Sci-Fi','Christopher Nolan','English');
INSERT INTO MOV_DET VALUES(9, 'The GodFather',1972,80,1,'Jayraj',70,'Crime','Fransis ','English');
INSERT INTO MOV_DET VALUES(5, 'Titanic',1972,700,0,'Dharmi',150,'Romance','James ','English');
INSERT INTO MOV_DET VALUES(7, 'Lapata Ladies',2024,200,1,'Leela',200,'Comedy Drama','Kiran','Hindi');
INSERT INTO MOV_DET VALUES(17, 'Gangubai',2022,200,0,'JAI',200,'Autobiography','Bansali','Hindi');
INSERT INTO MOV_DET VALUES(11, 'KGF',2021,200,0,'Yash',200,'action','Prashanth Neel','Kannada');
INSERT INTO MOV_DET VALUES(12, 'KGF2',2023,200,1,'Leela',200,'action','Prashanth Neel','kannada');
INSERT INTO MOV_DET VALUES(3, 'Pulp Fiction',1994,200,0,'Suresh',200,'Crime','Quentin','Spanish');
INSERT INTO MOV_DET VALUES(2, 'Avtar',1994,200,0,'jais',200,'Sci-Fi','James','Spanish');

UPDATE MOV_DET SET lang_available='telgu' WHERE movie_id=11;
UPDATE MOV_DET SET director_name='Neel' WHERE movie_id=12;

UPDATE MOV_DET SET director_name='KSR' WHERE movie_id=3;
UPDATE MOV_DET SET person_name='Neeru' WHERE movie_id=7;
UPDATE MOV_DET SET person_name='shushruth' WHERE movie_id=5;
UPDATE MOV_DET SET movie_name='Heeramandi' WHERE movie_id=17;
UPDATE MOV_DET SET movie_name='gajni' WHERE movie_id=5;
UPDATE MOV_DET SET director_name='DEERU' WHERE movie_id=5;
UPDATE MOV_DET SET person_name='NARO' WHERE movie_id=55;
UPDATE MOV_DET SET person_name='Bhargav' WHERE movie_id=7;

delete from MOV_DET where movie_id=5;
delete from MOV_DET where movie_id=3;
delete from MOV_DET where movie_id=7;

SELECT * FROM MOV_DET  WHERE movie_name='Heeramandi' AND movie_id=17;
SELECT * FROM MOV_DET WHERE movie_name='Inception' or movie_id=55;
SELECT*FROM MOV_DET WHERE movie_id in(55,9,17,2);

SELECT*FROM MOV_DET WHERE movie_id not in (55,9);






CREATE TABLE banking(id int,name_of_bank varchar(50),branch_name varchar(50),city_name varchar(60),ifsc_code varchar(200));
SELECT * FROM banking;

ALTER TABLE banking ADD COLUMN director_of_bank varchar(50);
ALTER TABLE banking ADD COLUMN zip_code bigint;
ALTER TABLE banking ADD COLUMN contact_number bigint;
ALTER TABLE banking ADD COLUMN atm_is_present boolean;

ALTER TABLE banking RENAME COLUMN name_of_bank TO bank_name;
ALTER TABLE banking RENAME COLUMN branch_name to name_of_branch;
ALTER TABLE banking RENAME COLUMN city_name to name_of_city;
ALTER TABLE banking RENAME COLUMN atm_is_present to presence_of_atm;
ALTER TABLE banking RENAME COLUMN zip_code to pin_code;

DESC banking;

INSERT INTO banking VALUES(11,'canara bank','sharavathi nagar','shivamogga','CNRB20421','piyush',577201,true);
INSERT INTO banking VALUES(12,'corporation bank','kuvempu nagar','shivamogga','CRRN20421','John',577202,true);
INSERT INTO banking VALUES(13,'SBI bank','sharavathi nagar','shivamogga','SBI20424','priya',577204,true);
INSERT INTO banking VALUES(14,'SBM bank','savalangaRoad','shivamogga','SBM20421','Kavya',577203,false);
INSERT INTO banking VALUES(15,'bank of baroda','bhadravathi','shivamogga','BOBR20456','navya',577301,true);
INSERT INTO banking VALUES(16,'Pragathi gramin bank','vidya nagar','bhadravathi','CNRB25421','mahadev',577401,false);
INSERT INTO banking VALUES(17,'Karnataka bank','kuvempu nagar','hosanagara','KRNT20421','mehali',577421,false);
INSERT INTO banking VALUES(18,'DCC bank','Vidya nagar','Ripponpet','DCC20426','merry',577426,true);
INSERT INTO banking VALUES(19,'corporation bank','saverline road','shivamogga','CORP20421','piyush goyal',577271,true);
INSERT INTO banking VALUES(20,'reserve bank of india','ncr','new delhi','RBI20421','mohan',679000,false);

UPDATE banking SET name_of_branch='new delhi(ncr)' where id=20;
UPDATE banking SET name_of_city='davanagere' where id=18;
UPDATE banking SET name_of_branch='Sharavathi nagar' where pin_code=577204;
UPDATE banking SET name_of_branch='new delhi(ncr)' where id=20;
UPDATE banking SET bank_name='Reserve bank of India' where id=20;
UPDATE banking SET presence_of_atm=false where ifsc_code='CORP20421';
UPDATE banking SET director_of_bank='Mrs.Priya' where id=13;
UPDATE banking SET bank_name='canara bank' where contact_number=577201;
UPDATE banking SET contact_number=9482744821 where id=11;
UPDATE banking SET contact_number=0818245 where id=15 AND name_of_city='shivamogga';
UPDATE banking SET name_of_branch='Savalanga road' where id=14;

DELETE FROM banking WHERE id=17;
DELETE FROM banking WHERE bank_name='corporation bank';
DELETE FROM banking WHERE contact_number=818644;

UPDATE banking SET presence_of_atm=false where id in (14,17);
rollback;
select * from banking where id in (11,12,13);
select * from banking where id not in (12,17,15);
select * from banking where id = 13 and director_of_bank='Mrs.Priya';
select * from banking where id = 14 or ifsc_code='CNRB20421';




Use business;

CREATE TABLE indian_states (id  int,name VARCHAR(100),capital VARCHAR(100),largest_city VARCHAR(100),population INT,area_sq_km FLOAT,chief_minister VARCHAR(100),formation_date int,governer varchar(60),road VARCHAR(200));

Alter table indian_states add column language varchar(79);
Alter table indian_states add column GDP int;
Alter table indian_states add column literacyRate int;
Alter table indian_states add column state_food varchar(79);
Alter table indian_states add column no_0f_dist varchar(600);



alter table indian_states rename column id to state_id;
alter table indian_states rename column name to state_name;
alter table indian_states rename column road to mode_of_road;
alter table indian_states rename column formation_date to formation_year;
alter table indian_states rename column language to official_lang;


alter table  indian_states modify column state_id varchar(40);
alter table  indian_states modify column population bigint;
alter table  indian_states modify column GDP float;
alter table  indian_states modify column literacyRate float;
alter table  indian_states modify column no_0f_dist int;

SELECT*FROM indian_states;

DESC indian_states;

insert into indian_states values(1,'Andhra Pradesh','Amaravati', 'Visakhapatnam',53903393,162970,'Y. S. Jaganmohan Reddy',1956,'S.Abdul Nazeer','Highway','Telgu',10945000,67.4,'Hyderabadi Biryani',26);
insert into indian_states values(2, 'Arunachal Pradesh', 'Itanagar', 'Itanagar', 1570458, 83743, 'Pema Khandu', 1987,' Nazeer','Highway','English',1882922,69.9,'Rice and meat',26);
insert into indian_states values(3, 'Assam', 'Dispur', 'Guwahati', 35607039, 78438, 'Himanta Biswa Sarma', 1950,'Gulab Chand Kataria','Highway','Asomiya',400022,50.45,'Fish Curry',35);
insert into indian_states values(4, 'Bihar', 'Patna', 'Patna', 124799926, 94163, 'Nitish Kumar', 1950,'Rajendra Vishwanath Arlekar','Highway','Bihari',1882922,79.9,'litti choka',38);
insert into indian_states values(5, 'Chhattisgarh', 'Raipur', 'Raipur', 29436231, 135194, 'Bhupesh Baghel', 2000,'Biswabhusan Harichandan','Highway','hindi',3002022,99.9,'gulgula',33);
insert into indian_states values(6, 'Goa', 'Panaji', 'Vasco da Gama', 1540253, 3702, 'Pramod Sawant', 1987,'P.S Sreedharan Pillai','Highway','hindi',1.0,88.9,'Ambot Tik',2);
insert into indian_states values(7, 'Gujarat', 'Gandhinagar', 'Ahmedabad', 63872399, 196024, 'Bhupendra Patel', 1960,'Acharya Devvrat','Highway','Gujrati',78.03,88.9,'Dokla',22);
insert into indian_states values(8, 'Haryana', 'Chandigarh', 'Faridabad', 28941133, 44212, 'Manohar Lal Khattar', 1966,'Bandaru Dattatreya','Highway','hindi',3054.72,88.9,'singri ki sabji',32);
insert into indian_states values(9, 'Himachal Pradesh', 'Shimla', 'Shimla', 7307914, 55673, 'Jai Ram Thakur', 1971,'Rajendra Arlekar','Highway','hindi',1.0,88.9,'Patore',9);
insert into indian_states values(10, 'Jharkhand', 'Ranchi', 'Jamshedpur', 38593948, 79714, 'Hemant Soren', 2000,'Ramesh Bais','Highway','hindi',1.0,88.9,'Dhuska',40);
insert into indian_states values(11, 'Karnataka', 'Bengaluru', 'Bengaluru', 67562686, 191791, 'Basavaraj Bommai', 1956,'Thaawarchand Gehlot','Highway','Kannada',2251.86,75.36,'Mysore pak',31);
insert into indian_states values(12, 'Kerala', 'Thiruvananthapuram', 'Thiruvananthapuram', 35699443, 38863, 'Pinarayi Vijayan', 1956,'Arif Mohammed Khan','Highway','Tamil',676,88.9,'Puttu',22);
insert into indian_states values(13, 'Madhya Pradesh', 'Bhopal', 'Indore', 85358965, 308245, 'Shivraj Singh Chouhan', 1956,'Mangubhai C. Patel','Highway','Hindi',676,88.9,'roti',22);
insert into indian_states values(14, 'Maharashtra', 'Mumbai', 'Mumbai', 123144223, 307713, 'Uddhav Thackeray', 1960,'Mangubhai C. Patel','Highway','Marati',9999,88.9,'Vadapav',30);
insert into indian_states values(15, 'Manipur', 'Imphal', 'Imphal', 3091545, 22327, 'N. Biren Singh', 1972,'Meiteilon','Highway','Manipuri',7899,88.9,'Chamthong',32);
insert into indian_states values(16, 'Nagaland', 'Kohima', 'Dimapur', 2249695, 16579, 'Neiphiu Rio', 1963,'Lachhu Yadav','Highway','English',235.65,70.9,'Rice',22);
insert into indian_states values(17, 'Odisha', 'Bhubaneswar', 'Bhubaneswar', 46356334, 155707, 'Naveen Patnaik', 1950,'Ganeshi Lal','Highway','Hindi',95959,18.9,'Roti ',22);
insert into indian_states values(18, 'Puducherry', 'Puducherry', 'Puducherry', 1244464, 490, 'V. Narayanasamy', 1963,'Tamilisai Soundararajan','Highway','Odissian',532,88.9,'Puttu',22);
insert into indian_states values(19, 'Rajasthan', 'Jaipur', 'Jaipur', 85610829, 342239, 'Ashok Gehlot', 1956,'Kalraj Mishra','Highway','Tamil',676,88.9,'Parota',32);
insert into indian_states values(20, 'Sikkim', 'Gangtok', 'Gangtok', 610577, 7096, 'Prem Singh Tamang', 1975,'Ganga Prasad','Highway','Tamil',332,88.9,'Sweets',32);



update indian_states set official_lang="hindi" where state_id=19;
update indian_states set governer="Kaiwalya" where state_id=2;
update indian_states set state_name="abdul" where state_id=4;
update indian_states set capital="imphal" where state_id=2;
update indian_states set state_name="Rajas" where state_id=19;
update indian_states set population=120000 where state_id=7;
update indian_states set GDP=567 where chief_minister="Pema Khandu";
update indian_states set state_name="telangana" where governer="P.S Sreedharan Pillai";
update indian_states set largest_city="Graha" where state_name="jharkhand";
update indian_states set population=10000 where state_id=9;


delete from indian_states where state_id=20;
delete from indian_states where state_name="abdul";
delete from indian_states where capital="imphal";


select state_name,population from indian_states where capital="Bengaluru";
select state_name,population from indian_states where capital="Bengaluru" and state_id in(1,6);
select * from indian_states where state_id in(1,6);
select governer,chief_minister from indian_states where official_lang in("kannada","hindi") or state_id=3;
select state_name,population,capital from indian_states where state_id not in(3,5,1,7);
 
desc indian_states;
select * from indian_states;



 
 
 
 USE business;
 create table scam_informa(id varchar(20),name int,s_type int,scam_contact bigint,
victim_name varchar(20),victim_contact bigint,date_of_scam int,amount_lost varchar(30),
mode_of_scam int,is_resolve boolean);

desc scam_informa;

 
alter table scam_informa add column location varchar(30);
alter table scam_informa add column status varchar(20);
alter table scam_informa add column mode_of_action varchar(20);
alter table scam_informa add column scam_website varchar(30);
alter table scam_informa add column isFraud boolean;



alter table scam_informa rename column id to scam_id;
alter table scam_informa rename column name to scam_name;
alter table scam_informa rename column s_type to scam_type;
alter table scam_informa rename column is_resolve to isResolve;
alter table scam_informa rename column status to scam_status;
alter table scam_informa rename column scam_name to scammer_name;



alter table scam_informa modify column scam_id int;
alter table scam_informa modify column scammer_name varchar(30);
alter table scam_informa modify column scam_type varchar(20);
alter table scam_informa modify column amount_lost int;
alter table scam_informa modify column mode_of_scam varchar(20);
alter table scam_informa modify column date_of_scam varchar(20);



insert into scam_informa values(1,"divya","online",9087234673,"baalu",9087453767,"june 1",
1200,"phone",true,"btm","ongoing","arrest","www.scam.in",true);
insert into scam_informa values(2,"anu","phone",9876590876,"madavi",9087234673,"aug 9",
7800,"email",false,"rajajinagara","complete","charges","www.scam.in",true);
insert into scam_informa values(3,"vidya","phone",8073209876,"chinni",6789076543,"jan 17",
1900,"phone",true,"malleshwaram","complete","charges","www.scam.in",false);
insert into scam_informa values(4,"sindu","email",6789076543,"ragini",8073209876,"feb 9",
7800,"email",false,"jagalur","ongoing","arrest","www.scam.in",false);
insert into scam_informa values(5,"keerti","phone",9087623456,"madhu",8975243567,"mar 24",
100000,"email",true,"vijayanagara","complete","charges","www.scam.in",false);
insert into scam_informa values(6,"ankith","email",8975243567,"mohan",9087623456,"apr 19",
19000,"phone",false,"davanagere","complete","charges","www.scam.in",true);
insert into scam_informa values(7,"ammu","phone",8907653456,"malini",902345589,"apr 8",
5000,"email",true,"rajajinagara","ongoing","arrset","www.scam.in",false);
insert into scam_informa values(8,"kala","phone",8907523678,"chitti",8904568954,"may 15",
8900,"email",false,"mysore","complete","charges","www.scam.in",true);
insert into scam_informa values(9,"balaji","email",8904568954,"pushpa",8907653456,"sept 17",
1000000,"phone",true,"banashankari","ongoing","arrest","www.scam.in",true);
insert into scam_informa values(10,"anjali","phone",9480599207,"ashwini",6709713455,"oct 19",
2000,"phone",false,"yashwanthpura","complete","charges","www.scam.in",true);

insert into scam_informa values(11,"ashwini","online",9087094673,"mahi",9087093767,"jan 1",
9000,"phone",true,"dharwad","ongoing","arrest","www.scam.in",true);
insert into scam_informa values(12,"pushpa","phone",9809590876,"mithun",9087474673,"feb 9",
7900,"email",false,"gadag","complete","charges","www.scam.in",true);
insert into scam_informa values(13,"chinni","phone",8070909876,"pavan",6784576543,"mar 17",
1100,"phone",true,"kengeri","complete","charges","www.scam.in",false);
insert into scam_informa values(14,"aadi","email",6789676543,"chandhan",8093209876,"apr 9",
10800,"email",false,"jagalur","ongoing","arrest","www.scam.in",false);
insert into scam_informa values(15,"punith","phone",9087689456,"vamshi",8975933567,"may 24",
200000,"email",true,"vijayanagara","complete","charges","www.scam.in",false);
insert into scam_informa values(16,"abhi","email",8975453567,"krishna",9087602456,"jun 19",
29000,"phone",false,"davanagere","complete","charges","www.scam.in",true);
insert into scam_informa values(17,"akshitha","phone",8907903456,"bindu",9023845589,"july 8",
9000,"email",true,"rajajinagara","ongoing","arrset","www.scam.in",false);
insert into scam_informa values(18,"rekha","phone",8907534678,"preethi",8904298954,"aug 15",
30900,"email",false,"mysore","complete","charges","www.scam.in",true);
insert into scam_informa values(19,"bharath","email",8904458954,"shalini",8909653456,"dec 17",
9000000,"phone",true,"banashankari","ongoing","arrest","www.scam.in",true);
insert into scam_informa values(20,"bhoomika","phone",9480589207,"sharmila",6704213455,"nov 19",
89000,"phone",false,"yashwanthpura","complete","charges","www.scam.in",true);



update scam_informa set scammer_name="ananya" where victim_name="bindu";
update scam_informa set victim_name="pratibha" where scam_id=18;
update scam_informa set scam_contact=9087345678 where scammer_name="vidya";
update scam_informa set scammer_name="virat" where victim_name="madavi";
update scam_informa set scam_type="email" where date_of_scam="aug 15";
update scam_informa set victim_contact=7895438906 where victim_name="chinni";
update scam_informa set date_of_scam="nov 29" where scam_id=15;
update scam_informa set amount_lost=1200 where scammer_name="raghu";
update scam_informa set scammer_name="megha" where amount_lost=1900;
update scam_informa set victim_contact=8907564327 where scam_id=19;



delete from scam_informa where scam_id=20;
delete from scam_informa where scam_id=19;
delete from scam_informa where scam_id=18;

// fetch data

select * from scam_informa where scammer_name in("divya","ammu","abhi");
select scammer_name,victim_name from scam_info where scam_type="online" and 
mode_of_scam="phone";
select amount_lost,date_of_scam,victim_contact,location from scam_info where 
scam_type="online" or mode_of_scam="email" or scam_status="ongoing";
select scammer_name,isResolve,victim_contact from scam_info where location not in("rajajinagar",
"mysore","davanagere","gadag","dharwad");

desc scam_informa;
select * from scam_informa;