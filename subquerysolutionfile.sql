use newdb1;

#-------------------------------Select Subquery -------------------------------

create table data_base(Name varchar(10), Roll_no int(5), location varchar(10), phone_number int(12));

insert into data_base values("Ram", 101, "Chennai",99887755);
insert into data_base values("Raj", 102, "Coimbatore",88776655);
insert into data_base values("Sasi", 103, "Madurai",77665533);
insert into data_base values("Ravi", 104, "Salem",898989898);
insert into data_base values("Sumathi", 105, "Kanchi",89898968);

select * from data_base;

create table studentnew(Name varchar(10), Roll_no int(5), Section varchar(3));

insert into studentnew values("Ravi",104,"A");
insert into studentnew values("Sumathi",105,"B");
insert into studentnew values("Raj",102,"A");

 
 Select name,location,phone_number 
 from data_base
 where Roll_no In (Select roll_no
                    from studentnew
                    where section ="A"); 
                    
#------------------------------------Insert SubQuery -------------------------------------

create table studentnew1(Name varchar(10), roll_no int(5), location varchar(10), phone_number int(12));

insert into studentnew1 values("Ram",101,"chennai",998877334);
insert into studentnew1 values("Raju",102,"coimbatore",90909090);
insert into studentnew1 values("Ravi",103,"Salem",89898989);

select * from studentnew1;

create table studentnew2(Name varchar(10), roll_no int(5), location varchar(10), phone_number int(12));

insert into studentnew2 values("Raj",111,"chennai",878787878);
insert into studentnew2 values("Sai",112,"Mumbai",665656565);
insert into studentnew2 values("Sri",113,"Coimbatore",78787878);

select * from studentnew2;

Insert into studentnew1 select * from studentnew2;

#-------------------------------Delete subquery -------------------------------------

Delete from studentnew2
 where roll_no in(select roll_no 
				 from studentnew1 
				where location='Chennai');
#--------------------------------Update Subquery ---------------------------------------

Update studentnew2 
  set name='geeks'
where location in (select location 
                    from studentnew1 
                     where name in('Raju','Ravi'));
                     
select * from studentnew2;

                     
                     
                    
                    
                    