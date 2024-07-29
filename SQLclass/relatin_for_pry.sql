USE business;
CREATE table order_inf(id int, order_name varchar(50), cost float,order_id varchar(50) primary key,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(50));
create table payment(id int, price float,payment_id varchar(50),order_id varchar(50),payment_status varchar(50),created_at timestamp,created_by varchar(50),modified_at timestamp,modified_by varchar(50),foreign key (order_id) references order_inf(order_id) );

Alter table payment add constraint payment_id_pri primary key(payment_id);
create table restaurant(id int,restaurant_name varchar(50),restaurant_id varchar(50) primary key,location varchar(50),order_id varchar(50),ratings int,payment_id varchar(50),created_at timestamp,created_by varchar(50),modified_at timestamp,modified_by varchar(50), foreign key (order_id) references order_inf(order_id),foreign key (payment_id) references payment(payment_id)  );
create table delivery(id int, person_name varchar(50),mode_of_payment enum('online','offline'),restaurant_id varchar(50) ,order_id varchar(50),created_at timestamp,created_by varchar(50),modified_at timestamp,modified_by varchar(50),foreign key (order_id) references order_inf(order_id),foreign key (restaurant_id) references restaurant(restaurant_id) );

desc order_inf;
desc payment;
desc restaurant;
desc delivery;

Insert into order_inf values (1,'GobiManchuri',70.5,'G909','2022-04-06','Shubam','2022-04-09','Shubam');
Insert into order_inf values (2,'Noodles',80.5,'N90','2022-04-16','Shubam','2022-04-19','Shubam');
Insert into order_inf values (3,'Babycorn',110.2,'B809','2022-04-26','Shubam','2022-04-29','Shubam');
Insert into order_inf values (4,'Pavbhaji',90.5,'P109','2022-05-06','ChatCenter','2022-05-09','ChatCenter');
Insert into order_inf values (5,'Roti',90.5,'R09','2022-06-07','Chory','2022-06-17','Chory');

Insert into payment values (6,70.5,'Ash01','G909','Active','2023-04-06','Gowry','2023-04-09','Gowry');
Insert into payment values (7,80.5,'V02','N90','Active','2023-04-16','Lashey','2023-04-19','Lashey');
Insert into payment values (8,110.2,'Ro002','B809','Active','2023-04-26','jaiv','2023-04-29','jaiv');
Insert into payment values (9,90.5,'G03','P109','Active','2023-05-06','nandi','2023-05-09','nandi');
Insert into payment values (10,90.5,'H090','R09','Active','2023-06-07','dursu','2023-06-17','dursu');

Insert into restaurant values (11,'Ashoka','AA99','Shimogga','G909',4,'Ash01',now(),'Vijay',now(),'Ankitha');
Insert into restaurant values (12,'VidadthriBhavan','VV22','Banglore','N90',4,'V02',now(),'Karan',now(),'Arjun');
Insert into restaurant values (13,'RoyalOrchid','RR66','Shimogga','B809',5,'Ro002',now(),'Neel',now(),'Ajay');
Insert into restaurant values (14,'Gate Way Of Malnad','GG88','Shimogga','P109',4,'G03',now(),'Nitesh',now(),'Lokesh');
Insert into restaurant values (15,'Hali Mane','HH33','Banglore','R09',4,'H090',now(),'Peeth',now(),'Chethan');

Select * from restaurant;

Insert into delivery values(16,'Mukesh Yadav','online','AA99','G909',now(),'Vijju',now(),'Anku');
Insert into delivery values(17,'Dheeru Bhai','Offline','VV22','N90',now(),'Sikil',now(),'Mayura');
Insert into delivery values(18,'Devendra Hegde','Online','RR66','B809',now(),'Nitesh',now(),'Geru');
Insert into delivery values(19,'Jai prakash','offline','GG88','P109',now(),'Bhargav',now(),'Jellu');
Insert into delivery values(20,'Prem B Devakar','Offline','HH33','R09',now(),'neethali',now(),'vinod');

Select * from delivery;
Select * from order_inf;
