-- create database dev_db
create database if not exists dev_db;

--create schema dev_db.college_data
create schema if not exists dev_db.college_data;

--create schema dev_db.staging
create schema if not exists dev_db.staging;

--create staging table
create or replace TABLE dev_db.staging.students (   STUDENT_ID NUMBER(38,0),   STUDENT_FNAME VARCHAR(20),   STUDENT_LNAME VARCHAR(20),   CITY VARCHAR(20),   STATE VARCHAR(2),   DEPT_ID NUMBER(38,0),   PROJECT_PARTNER_ID NUMBER(38,0),   GENDER VARCHAR(1),   DOB DATE,   HOBBIES string,   EMAIL string  );

--create main student table
create or replace TABLE dev_db.college_data.students (   STUDENT_ID NUMBER(38,0),   STUDENT_FNAME VARCHAR(20),   STUDENT_LNAME VARCHAR(20),   CITY VARCHAR(20),   STATE VARCHAR(2),   DEPT_ID NUMBER(38,0),   PROJECT_PARTNER_ID NUMBER(38,0),   GENDER VARCHAR(1),   DOB DATE,   HOBBIES array,   EMAIL variant  );

-- check row count
select count(*) from dev_db.staging.students;
select count(*) from dev_db.college_data.students;


-- insert into dev_db.staging.students
insert into dev_db.staging.students( STUDENT_ID ,   STUDENT_FNAME ,   STUDENT_LNAME ,   CITY,   STATE,   DEPT_ID,   PROJECT_PARTNER_ID ,   GENDER,   DOB ,   HOBBIES ,   EMAIL)
values (1,'Steven','Grant','Pune','MH',10,2,'M','2000-05-01','cooking','{"primary":"steven.grant@gmail.com","secondary":"steven.grant@ymail.com"}'),
(2,'Frank','Lewis','Tirupati','AP',10,1,'M','1999-12-15','Ghost hunting','{"primary":"frank.lewis@gmail.com"}'),
(3,'Jane','Bower','Sri Nagar','JK',10,4,'F','2000-01-10','Skydiving,dancing','{"primary":"jane.bower@gmail.com"}'),
(4,'Anna','Springer','Kochi','KL',10,3,'F','1999-06-08','Cruising','{"primary":"anna.springer@gmail.com"}'),
(5,'Sean','Clarkson','gandhi Nagar','GJ',10,6,'M','1999-05-19','Crocheting','{"primary":"sean.clarkson@gmail.com"}'),
(6,'Jennifer','King','Bhopal','MP',10,5,'F','1999-04-25','White water rafting','{"primary":"jennifer.king@gmail.com"}'),
(7,'Lucas','Dickens','Chennai','TN',10,8,'M','1999-06-11','Robotics','{"primary":"lucas.dickens@gmail.com"}'),
(8,'Diane','Dowd','Mumbai','MH',10,7,'M','2000-07-22','Bowling','{"primary":"diane.dowd@gmail.com"}'),
(9,'Piers','Knox','Vizag','AP',10,10,'M','1999-02-26','Wine tasting,dancing','{"primary":"piers.knox@gmail.com"}'),
(10,'Carl','Allan','Poonch','JK',10,9,'M','1999-10-01','Geocaching','{"primary":"carl.allan@gmail.com"}'),
(11,'Jennifer','Black','Pune','MH',10,12,'F','2000-06-21','Taxidermy','{"primary":"jennifer.black@gmail.com"}'),
(12,'Donna','Wallace','Surat','GJ',10,11,'F','2000-09-22','Latte art','{"primary":"donna.wallace@gmail.com"}'),
(13,'Boris','McDonald','Rajkot','GJ',10,14,'M','2000-06-20','Coin collecting','{"primary":"boris.mcdonald@gmail.com"}'),
(14,'Joshua','Gray','Salem','TN',10,13,'M','2000-04-27','Sailing,Fantasy Sports','{"primary":"joshua.gray@gmail.com"}'),
(15,'Yvonne','Bond','Pune','MH',20,16,'F','1999-02-24','Ghost hunting','{"primary":"yvonne.bond@gmail.com"}'),
(16,'Audrey','Avery','Tirupati','AP',20,15,'F','2000-01-10','Furniture restoration','{"primary":"audrey.avery@gmail.com","secondary":"audrey.avery@ymail.com"}'),
(17,'Jan','Dowd','Sri Nagar','JK',20,18,'F','1999-07-10','Skydiving','{"primary":"jan.dowd@gmail.com"}'),
(18,'Piers','Powell','Kochi','KL',20,17,'M','2000-06-13','Astrology','{"primary":"piers.powell@gmail.com"}'),
(19,'Joseph','Davies','gandhi Nagar','GJ',20,20,'M','1999-08-09','First edition book collecting','{"primary":"joseph.davies@gmail.com"}'),
(20,'Melanie','Marshall','Bhopal','MP',20,19,'F','2000-07-25','Chainsaw carving','{"primary":"melanie.marshall@gmail.com"}'),
(21,'Audrey','Scott','Chennai','TN',20,22,'F','2000-10-12','Fantasy Sports','{"primary":"audrey.scott@gmail.com"}'),
(22,'Jonathan','McGrath','Mumbai','MH',20,21,'M','1999-11-12','Storm chasing','{"primary":"jonathan.mcgrath@gmail.com"}'),
(23,'Vanessa','Mackenzie','Vizag','AP',20,24,'F','2000-01-10','small model rocket launching','{"primary":"vanessa.mackenzie@gmail.com"}'),
(24,'Simon','Quinn','Poonch','JK',20,23,'M','1999-10-28','Model Rockets','{"primary":"simon.quinn@gmail.com"}'),
(25,'Julia','Coleman','Pune','MH',20,26,'F','1999-05-21','Survival Prepping','{"primary":"julia.coleman@gmail.com"}'),
(26,'Alexander','Stewart','Surat','GJ',20,25,'M','2000-01-06','Table tennis','{"primary":"alexander.stewart@gmail.com"}'),
(27,'Ella','Bell','Rajkot','GJ',20,28,'F','1999-11-04','making candles the olf-fashioned way','{"primary":"ella.bell@gmail.com"}'),
(28,'Jennifer','Rampling','Salem','TN',20,27,'F','2000-12-18','Candle making','{"primary":"jennifer.rampling@gmail.com"}'),
(29,'Yvonne','Ince','Pune','MH',30,30,'F','2000-01-22','Cruising','{"primary":"yvonne.ince@gmail.com"}'),
(30,'Charles','Lyman','Tirupati','AP',30,29,'M','2000-03-18','Crocheting','{"primary":"charles.lyman@gmail.com"}'),
(31,'Paul','Stewart','Sri Nagar','JK',30,32,'M','2000-02-05','White water rafting','{"primary":"paul.stewart@gmail.com"}'),
(32,'Leonard','Cameron','Kochi','KL',30,31,'M','1999-05-20','Robotics','{"primary":"leonard.cameron@gmail.com"}'),
(33,'John','Bailey','gandhi Nagar','GJ',30,34,'M','1999-01-28','Bowling','{"primary":"john.bailey@gmail.com"}'),
(34,'Benjamin','Marshall','Bhopal','MP',30,33,'M','2000-08-26','Wine tasting','{"primary":"benjamin.marshall@gmail.com"}'),
(35,'Lisa','Edmunds','Chennai','TN',30,36,'F','1999-08-17','Geocaching','{"primary":"lisa.edmunds@gmail.com"}'),
(36,'Abigail','Welch','Mumbai','MH',30,35,'F','1999-09-22','Taxidermy','{"primary":"abigail.welch@gmail.com"}'),
(37,'Frank','Metcalfe','Vizag','AP',30,38,'M','1999-06-16','Latte art','{"primary":"frank.metcalfe@gmail.com"}'),
(38,'Joan','Underwood','Poonch','JK',30,37,'M','2000-07-20','Coin collecting','{"primary":"joan.underwood@gmail.com"}'),
(39,'Michelle','Fraser','Pune','MH',30,40,'F','1999-12-18','Sailing','{"primary":"michelle.fraser@gmail.com"}'),
(40,'Elizabeth','Avery','Surat','GJ',30,39,'F','1999-12-04','Ghost hunting','{"primary":"elizabeth.avery@gmail.com"}'),
(41,'Blake','Ball','Rajkot','GJ',30,42,'F','2000-10-12','Furniture restoration','{"primary":"blake.ball@gmail.com"}'),
(42,'Wendy','Edmunds','Salem','TN',30,41,'M','1999-11-15','Skydiving','{"primary":"wendy.edmunds@gmail.com"}'),
(43,'Vanessa','Poole','Pune','MH',30,44,'F','2000-05-11','Astrology','{"primary":"vanessa.poole@gmail.com"}'),
(44,'Hannah','Harris','Tirupati','AP',30,43,'F','2000-07-26','First edition book collecting','{"primary":"hannah.harris@gmail.com"}'),
(45,'Theresa','Wilson','Sri Nagar','JK',30,46,'M','1999-09-02','Chainsaw carving','{"primary":"theresa.wilson@gmail.com"}'),
(46,'Stephanie','Springer','Kochi','KL',30,45,'F','1999-09-26','Fantasy Sports','{"primary":"stephanie.springer@gmail.com"}'),
(47,'Ella','Abraham','gandhi Nagar','GJ',30,48,'F','1999-10-14','Storm chasing','{"primary":"ella.abraham@gmail.com"}'),
(48,'Jasmine','Ross','Bhopal','MP',30,47,'F','1999-06-05','small model rocket launching','{"primary":"jasmine.ross@gmail.com"}'),
(49,'Ryan','May','Chennai','TN',30,50,'M','2000-04-26','Model Rockets','{"primary":"ryan.may@gmail.com"}'),
(50,'Yvonne','Hart','Mumbai','MH',30,49,'M','2000-01-11','Survival Prepping','{"primary":"yvonne.hart@gmail.com"}'),
(51,'Sam','Lyman','Vizag','AP',40,52,'M','1999-09-08','Table tennis','{"primary":"sam.lyman@gmail.com"}'),
(52,'Stephanie','Fisher','Poonch','JK',40,51,'F','1999-04-05','making candles the olf-fashioned way','{"primary":"stephanie.fisher@gmail.com"}'),
(53,'Richard','Bailey','Pune','MH',40,54,'M','2000-06-01','Candle making','{"primary":"richard.bailey@gmail.com"}'),
(54,'Stephen','White','Surat','GJ',40,53,'M','1999-05-02','Cruising','{"primary":"stephen.white@gmail.com"}'),
(55,'Austin','Black','Rajkot','GJ',40,56,'F','2000-01-27','Crocheting','{"primary":"austin.black@gmail.com"}'),
(56,'Karen','Quinn','Salem','TN',40,55,'F','1999-08-20','White water rafting','{"primary":"karen.quinn@gmail.com"}'),
(57,'Jan','Lambert','Pune','MH',40,58,'M','1999-12-22','Robotics','{"primary":"jan.lambert@gmail.com"}'),
(58,'Dylan','North','Tirupati','AP',40,57,'M','2000-01-11','Bowling,Sailing','{"primary":"dylan.north@gmail.com"}'),
(59,'Leonard','White','Sri Nagar','JK',40,60,'M','1999-11-21','Wine tasting','{"primary":"leonard.white@gmail.com"}'),
(60,'Irene','Tucker','Kochi','KL',40,59,'F','1999-09-17','Geocaching','{"primary":"irene.tucker@gmail.com"}'),
(61,'Dorothy','MacLeod','gandhi Nagar','GJ',40,62,'F','2000-04-25','Taxidermy','{"primary":"dorothy.macleod@gmail.com"}'),
(62,'Natalie','Arnold','Bhopal','MP',40,61,'F','2000-10-23','Latte art,Fantasy Sports','{"primary":"natalie.arnold@gmail.com"}'),
(63,'Stewart','Peters','Chennai','TN',40,64,'F','2000-10-15','Coin collecting','{"primary":"stewart.peters@gmail.com","secondary":"stewart.p@ymail.com"}'),
(64,'Grace','Reid','Mumbai','MH',40,63,'M','2000-10-02','Sailing,dancing','{"primary":"grace.reid@gmail.com"}'),
(65,'Hannah','Reid','Vizag','AP',40,66,'F','2000-04-17','Ghost hunting','{"primary":"hannah.reid@gmail.com"}'),
(66,'Harry','Short','Poonch','JK',40,65,'M','2000-03-09','Furniture restoration','{"primary":"harry.short@gmail.com"}'),
(67,'Lillian','MacLeod','Pune','MH',50,68,'M','1999-09-03','Skydiving','{"primary":"lillian.macleod@gmail.com"}'),
(68,'Christian','Powell','Surat','GJ',50,67,'F','1999-06-12','Astrology,Fantasy Sports','{"primary":"christian.powell@gmail.com"}'),
(69,'Alexandra','Alsop','Rajkot','GJ',50,70,'F','1999-04-19','First edition book collecting','{"primary":"alexandra.alsop@gmail.com"}'),
(70,'Jonathan','Lawrence','Salem','TN',50,69,'M','1999-11-04','Chainsaw carving','{"primary":"jonathan.lawrence@gmail.com"}'),
(71,'Lauren','Rutherford','Pune','MH',50,72,'F','2000-08-01','Fantasy Sports','{"primary":"lauren.rutherford@gmail.com","secondary":"lauren.2020@yahoo.com"}'),
(72,'Stephanie','Rees','Tirupati','AP',50,71,'M','1999-03-24','Storm chasing','{"primary":"stephanie.rees@gmail.com"}'),
(73,'Joshua','Avery','Sri Nagar','JK',50,74,'M','2000-04-15','small model rocket launching','{"primary":"joshua.avery@gmail.com"}'),
(74,'Lauren','Walker','Kochi','KL',50,73,'F','1999-10-23','Model Rockets','{"primary":"lauren.walker@gmail.com"}'),
(75,'Robert','Wilkins','gandhi Nagar','GJ',50,76,'M','1999-11-14','Survival Prepping','{"primary":"robert.wilkins@gmail.com"}'),
(76,'Boris','Vaughan','Bhopal','MP',50,75,'M','1999-04-18','Table tennis,Sailing','{"primary":"boris.vaughan@gmail.com"}'),
(77,'Peter','Lambert','Chennai','TN',50,NULL,'M','2000-07-31','making candles the olf-fashioned way','{"primary":"peter.lambert@gmail.com"}');

-- see data in staging table
select * from dev_db.staging.students limit 10;

-- insert data into main table from staging table
insert into dev_db.college_data.students(STUDENT_ID ,  STUDENT_FNAME ,   STUDENT_LNAME ,   CITY,   STATE,   DEPT_ID,   PROJECT_PARTNER_ID ,   GENDER,   DOB ,   HOBBIES ,   EMAIL)
select STUDENT_ID ,   STUDENT_FNAME ,   STUDENT_LNAME ,   CITY,   STATE,   DEPT_ID,   PROJECT_PARTNER_ID ,   GENDER,   DOB ,
strtok_to_array(HOBBIES,',') , parse_json(EMAIL)
from dev_db.staging.students;

-- check data in main table
select * from dev_db.college_data.students;
