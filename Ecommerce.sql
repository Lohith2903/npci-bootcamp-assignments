create database Ecommerce;

use Ecommerce;

create table productcategory(categoryid int primary key, categoryname varchar(255));

desc productcategory;

insert into productcategory values(1, "Electronic appliances");
insert into productcategory values(2, "Electronic gadgets");
insert into productcategory values(3, "Health care");


select * from productcategory;

create table product(id int primary key , sku varchar(255), name varchar(255), description varchar(255), unitprice decimal(13,2), imageurl varchar(255), 
unitsinstock int, datecreated varchar(10), lastupdated varchar(10), categoryid int, foreign key(categoryid) references productcategory(categoryid) );

	
desc product;

insert into product values(101, "division1", "television", "good tv", 1234567891.23,"https://images.philips.com/is/image/PhilipsConsumer/58PUT6604_94-IMS-en_IN?$jpglarge$&wid=960", 40000,'2010-12-31', '2012-12-31' , 1);

insert into product values(102, "division2", "mobiles", "best mobiles", 3456789112.23,"https://m.media-amazon.com/images/I/71w3oJ7aWyL._SL1500_.jpg", 50000,'2010-12-31', '2012-12-31' , 2);



insert into product values(103,"new name","mobile","best",1234567891.23,"https://www.lenovo.com/medias/lenovo-tablet-lenovo-tab-p12-pro-subseries-hero.png?context=bWFzdGVyfHJvb3R8MjM1NTEwfGltYWdlL3BuZ3xoOTgvaGQ3LzEyNjgwMzcxOTI5MTE4LnBuZ3wzZjU1YzNmYmMzZDgxOTQ5NjBkZjU2ZThhNmUxZGMzY2E2ZjM3ZjM1OGMyZDA4YzhjNTBhNjUxZDRhMDlhZjgx",40000,"2022-02-21","2022-06-20",3);
select * from product;
drop table product;

drop table productcategory;