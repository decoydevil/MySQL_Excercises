use College;

select sID, sName
from Student where GPA > 3.6;
 
 select distinct sName, major
 from Student, Apply
 where Student.sID = Apply.sID
 
select sname, GPA, decision 
from Student, Apply
where Student.sID = Apply.sID
and sizeHS < 1000 and major = 'CS' and cname = 'Stanford';

select College.cName
from College, Apply	
where College.cName = Apply.cName
and enrollment > 20000 and major = 'CS';


select Student.sID, sName, GPA, Apply.cName, enrollment
from Student , College, Apply
where Apply.sID = Student.sID and Apply .cName = College.cName	
order by gpa desc, enrollment;

select sID, major / *
from Apply
where major like '%bio%';

 select * 
 from Student, College;
 
 select sID, sName, GPA, sizeHS, GPA*(sizeHS/1000.0) as scaledGPA
 from Student;
 
 select S.sID, sName , GPA, A.cName, enrollment
 from Student S, College C, Apply A;
 where Apply.sID = Student.sID and Apply.cName = College.cName; 
 
 select S1.sID, S1.sName, S1.gpa, S2.sID, S2.sName, S2.GPA
 from Student S1, Student S2
 where S1.GPA = S2.GPA and S1.sID < S2.sID;
 
 select cName as name from College 
 union all
 select sName as name from Student
 order by name;
  
  
  select sID from Apply where major = 'CS' 
 INTERSECT
 select sID from Apply where major = 'EE';
 select * from Apply;
 select A1.sID
 from Apply A1, Apply A@
 where A1.sID = A2