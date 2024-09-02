class-6
create or reolace table numbers(A int)
create or replace table numberss(B int)
insert into numbers (A)  values(1),
                        (1),
                        (1),
                        (2),
                        (5),
                        (6),
                        (7),
                        (null),
                        (null)
  insert into numberss (B)  values(1),
                        (1),
                        (2),
                        (4),
                        (6),
                        (null)
 select*from numbers 
 select*from numberss 
 
 // count =8
select A.A,B.B
from numbers A inner join numberss B 
on A.A = B.B

 // count =10
select A.A,B.B
from numbers A right join numberss B 
on A.A = B.B

 // count =12
select A.A,B.B
from numbers A left join numberss B 
on A.A = B.B

 // count =14
select A.A,B.B
from numbers A  full join numberss B 
on A.A = B.B

 // count of cross jion = 54
 select * from numbers cross join numberss
 
 // self join count =36 for table 2
 select * from numberss self join numberss
 
 // self join count =81 for table 1
 select * from numbers self join numbers 
 
// left join  without intersection part=4
select*from numbers left join numberss
on numbers.A=numberss.B where numberss.B is  null

 // left join  with intersection part= 8
select*from numbers left join numberss
on numbers.A=numberss.B where numberss.B is not null

// rigt join  without intersection part =2
select*from numbers right join numberss
on numbers.A=numberss.B where numbers.A is null



// rigt join  with intersection part =8
select*from numbers right join numberss
on numbers.A=numberss.B where numbers.A is  not null



  
// class work
 show tables
select*from dependents
select*from employees
select A.*,'|',B.* from employees A inner join dependents B 
on A.employee_id = B.employee_id


select A.employee_id,
       A.first_name,
       A.last_name,
       B.last_name,
from employees A inner join dependents B 
on A.employee_id = B.employee_id


select A.employee_id,
       A.first_name,
       A.last_name,
       B.last_name,
from employees A full join dependents B 
on A.employee_id = B.employee_id
