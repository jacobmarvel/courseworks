create database Assignment1;
use Assignment1;
-- Question  1
create table skills(ID int, technology varchar(25));
insert into skills values(1,"DS"),
(1,"Tableau"),
(1,"SQL"),
(2,"R"),
(2,"PowerBI"),
(1,"Python");

select * from skills;

-- list the candidates which posseses DS,Tableau,python and sql?
select ID from skills where technology IN ("DS","Tableau","Python","SQL");
-- It will show all ID's who possess these skills
select distinct ID from skills where technology IN ("DS","Tableau","Python","SQL");
-- it will only show either one ID who possess every skills

-- Question 2

create table product_info(product_id int, product_name varchar(25));

insert into product_info values(1001,"Blog"),
(1002,"Youtube"),
(1003,"Education");

select * from product_info;

create table product_info_likes(user_id int, product_id int,liked_date date);

insert into product_info_likes values(1,1001,"2023-08-19"),(2,1003,"2023-08-18");
select * from product_info_likes;

select product_info.product_id from product_info
left join product_info_likes on product_info_likes.product_id=product_info.product_id
where liked_date is null;
-- it will give us product_id 1002 which has no likes.
