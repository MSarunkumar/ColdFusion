-- use 

use ColdFusionDataBase;
 create table employee(
 eid   int  NOT NULL IDENTITY (1, 1) Primary key,
 fname varchar(30) not null,
 lname varchar(30) not null,
 email varchar(50) not null,
 mobile bigint     not null,
 password char(32) not null);
