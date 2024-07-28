use business;
create table Anime(Anime_id varchar(40) primary key, Anime_name varchar(20) unique ,No_of_episodes int , constraint No_of_episodes_chk check (No_of_episodes>5), Main_char varchar(30), launch_year int );

Insert into Anime values('D101','Death Note',37,'Lee',2007);
Insert into Anime values('DE102','Demon Slayers',8,'Tanjiro',2019);
Insert into Anime values('J103','Jujutsu Kaisen ',23,'Gojo',2020);
Insert into Anime values('N104','Naruto',1200,'Nauto',2001);
Insert into Anime values('O105','One Piece',1300,'Lufi',2007);

alter table Anime add constraint Main_char_uni unique(Main_char);
alter table Anime add constraint No_episodes_chk check (No_of_episodes>5 and No_of_episodes<=9000);
desc Anime;

Alter table Anime drop constraint Main_char_uni;
Alter table Anime drop constraint No_episodes_chk;

select * from Anime;


create table insta_info(insta_id varchar(50), user_name varchar(70), password varchar(90) unique, no_of_posts bigint, constraint no_of_posts_chk check(no_of_posts>5),private boolean );
insert into insta_info values('I404', 'Alye_01', '@25256', 50, true);
insert into insta_info values('I504', 'Mr_Joye_22', 'Jk@2256', 150, true);
insert into insta_info values('I604', 'Maniye_9', 'Kir$23', 907, False);
insert into insta_info values('I54', 'Geliya', 'Kel56', 50, true);
insert into insta_info values('I04', 'hye_22', 'Hello@34', 350, False);

desc insta_info;

Alter table insta_info add constraint insta_id_pri primary key (insta_id);
alter table insta_info add constraint user_name_uni unique(user_name);
alter table insta_info add constraint no_of_postsi check (no_of_posts>5 and no_of_posts<=9000);

Alter table insta_info drop  primary key ;
Alter table insta_info drop constraint user_name_uni;
Alter table insta_info drop constraint no_of_postsi;

Select * from insta_info;


create table Shoes(shoe_id varchar(50), brand varchar(60) unique, colour varchar(46), size int, constraint size_chk check(size>5),Price bigint);
 insert into Shoes values ('P20', 'Puma','black',7,1999);
 insert into Shoes values ('A22', 'Adidas','black',8,2999);
 insert into Shoes values ('N60', 'Nike','white',6,7999);
 insert into Shoes values ('B55', 'Bata','black',10,2949);
 insert into Shoes values ('C58', 'Converse','Red',9,6989);


Alter table Shoes add constraint shoe_id_pri primary key (shoe_id);
alter table Shoes add constraint size_uni unique(size);
alter table Shoes add constraint size_check check (size>5 and size<=12);

Alter table Shoes drop  primary key ;
Alter table Shoes drop constraint size_uni;
Alter table Shoes drop constraint size_check;
 
 desc Shoes;
 Select * from Shoes
 
 
 create table Specs_info (Specs_id varchar(50), brand varchar(60) unique, colour varchar(46), size varchar(70), constraint sizechk check(size>30),Price bigint);
  insert into Specs_info values ('Les2', 'Lense Cart','black','38mm',1999);
 insert into Specs_info values ('Par5', 'Prada','Grey','40mm',2999);
 insert into Specs_info values ('Cal89', 'Calvin Kelien','Blue','48mm',7999);
 insert into Specs_info values ('Guc78', 'Gucci','Red','33mm',5949);
 insert into Specs_info values ('Fos90', 'Fossil','Gold','36mm',9989);
 
 
  create table Spec_info (Specs_id varchar(50), brand varchar(60) unique, colour varchar(46), size int, constraint sizchk check(size>30),Price bigint);
  insert into Spec_info values ('Les2', 'Lense Cart','black',38,1999);
 insert into Spec_info values ('Par5', 'Prada','Grey',40,2999);
 insert into Spec_info values ('Cal89', 'Calvin Kelien','Blue',48,7999);
 insert into Spec_info values ('Guc78', 'Gucci','Red',33,5949);
 insert into Spec_info values ('Fos90', 'Fossil','Gold',36,9989);
 
 
 Alter table Spec_info add constraint Specs_id primary key (Specs_id);
alter table Spec_info add constraint colour unique(colour);
alter table Spec_info add constraint Spec_c check (size>30 and size<=50);

Alter table Spec_info drop  primary key ;
Alter table Spec_info drop constraint colour;
Alter table Spec_info drop constraint size_check;
 
 desc Spec_info;
 Select * from Spec_info
 
