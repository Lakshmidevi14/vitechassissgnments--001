select abs(1.56),abs(9),abs(-768),abs(0)

select mod(25,4) , mod(63,6),mod(68,6),mod(91,3);

select sqrt(225),sqrt(585),sqrt(999),sqrt(5980)

select square(15),square(12),square(25),square(2)

select power(5,4), power(2,3), power(9,1)

select ceil(2,3),ceil(-4,8),ceil(2,8),ceil(0)

select floor(2,3),floor(-4,8),floor(2,8),floor(0)

select round(2.3),round(-4,8),round(2,8),round(0)

select sign(9),sign(-8),sign(-5),sign(6)

select log(10,10),log(2,8),log(10,1)


select factorial(8)
create or replace table persons(p_id int,
                                lastname string,
                                firstname string,
                                Address varchar(20),
                                city string )

insert into persons(p_id,lastname,firstname,address,city)
            values(1,'Hansen','Ola','Timoteivn 10','Sandnes'),
                  (2,'Svendson','Tove','Borgvn 23','sandnes'),
                  (3,'Pettersen','Kari','Storgt 20','Stavanger')

select*from persons

create or replace table orders(o_id int,orderno int,p_id int)
insert into orders(o_id,orderno,p_id)
            values(1,77895,3),
                  (2,44678,3),
                  (3,22456,1),
                  (4,24562,1),
                  (5,34764,15
select*from orders

select persons.firstname,persons.lastname,orders.orderno
from persons inner join orders
on persons.p_id=orders.p_id

select A.firstname,A.lastname,B.orderno
from persons A inner join orders B
on A.p_id=B.p_id

select A.firstname,A.lastname,B.orderno
from persons A FULL join orders B
on A.p_id=B.p_id

select A.firstname,A.lastname,B.orderno
from persons A right join orders B
on A.p_id=B.p_id

select A.firstname,A.lastname,B.orderno
from persons A left join orders B
on A.p_id=B.p_id
                  

select p_id from persons
       union
select p_id from orders       



select p_id from persons
       union all
select p_id from orders       




select p_id from persons
       union all
select o_id from orders       


create or replace table orders (orderId int,productname string,orderdate datetime)
insert into orders values(100,'bag','2002-09-23 13:23:44.')

select*from orders

 select current_time() 

select current_date(),current_time
select DATEADD(YEAR,-2,'2024-08-29') as datamerge
