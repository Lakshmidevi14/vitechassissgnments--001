task-1
 create or replace table persons(p_ID int,
                                 last_name string,
                                 first_name string,
                                 address varchar(20),
                                 city string)
 desc table persons

 
 select*from persons
    
 insert into persons(p_ID ,last_name,first_name ,address,city )
              values(1,'Hansen','Ola','Timoteivn10','Sandnes' );
              
 insert into persons(p_ID ,last_name,first_name ,address,city )
              values(2,'Svendson','Tove','Borgvn23','Sandnes' ) ;
              
 insert into persons(p_ID ,last_name,first_name ,address,city )
              values(3,'pettersen','Kari','Storgt20','Stavanger' ) ;
              ar           
 insert into persons(p_ID ,last_name,first_name ,address,city )
              values(4,'kumar','Ravi','Tirupati','Tirupati' ); 
              
 insert into persons(p_ID ,last_name,first_name ,address,city )
              values(5,'kumar','Ajay','punganur','Madanapalli' ) ; 


              
 delete from persons
 select p_ID,last_name from persons
 select distinct first_name,address from  persons;

 select distinct city from persons

 select last_name from persons  where last_name = 'kumar'
 select*from persons where last_name='kumar'
 
 select*from persons 
  where first_nam,e = 'Ravi' AND last_name = 'kumar'

  
 select* from persons where first_name='Ravi' or last_name = 'kumar'


 select*from persons where last_name='kumar' and (first_name='Ravi'or first_name='Ajay')

select*from persons order by last_name

update persons
set first_name='kumar',last_name='kumar'
where p_id=5



ALTER table persons
add emai string;

alter table persons
drop column last_name;

alter table persons
modify column first_name string;


select*from persons
where first_name is not null

select first_name from persons
       where first_name like 'R%'

