create database University;
create table University.student(
student_id int primary key,
student_name  varchar(50),
student_age int,
student_major varchar(50));
insert into University.student values
("1","KARTHI","21","BIOLOGY"),
("2","ARTHI","26","COMPUTER SCIENCE"),
("3","KARTHICK","28","COMPUTER SCIENCE"),
("4","KARTHIKEYAN","19","BIOLOGY"),
("5","JEEVA","20","COMPUTER SCIENCE");


/*a query to retrieve all records from the "Students" table*/
describe University.student;



/*a query to retrieve the names of all students majoring in "Computer Science"*/
select student_id,student_name,student_age,student_major from University.student where student_major = "COMPUTER SCIENCE";



/* a query to retrieve the details of the oldest student in the "Students" table*/
select max(student_age) from University.student;


/*a query to update the major of a student with a specific student_id*/
update University.student set student_major="MATHS_BIOLOGY" where student_id=1;
select * from University.student;



/*a query to delete a student with a specific student_id from the "Students" table*/
delete from University.student where student_id=2;
select * from University.student;
