%takes lecture
lectures(codd,cse9020).
lectures(codd,cse9314).
lectures(backus,cse9021).
lectures(rictchie,cse9201).
lectures(minsky,cse9414).
lectures(backus,cse9311).

%offered courses in semester
offered_in_semester(summer,cse9020).
offered_in_semester(fall,cse9201).
offered_in_semester(summer,cse9021).
offered_in_semester(spring,cse9414).
offered_in_semester(spring,cse9311).
offered_in_semester(fall,cse9314).

%student studying in courses
studies(fred,cse9020).
studies(jack,cse9311).
studies(jill,cse9314).
studies(jill,cse9414).
studies(henry,cse9414).
studies(henry,cse9314).

%rule to show courselist of any teacher
courselist(Teacher,Coursename):-lectures(Teacher,Coursename).


%rule to find out who is taught by a teacher
taughtbyTeacher(Teacher,Student):-lectures(Teacher,Coursename),
studies(Student,Coursename).

%rule on summer courses of fred
reporton(fred,summer,Coursename,Teacher):-studies(fred,Coursename),
    offered_in_semester(summer,Coursename),
    lectures(Teacher,Coursename).


%summer course taken  or not

taughtinsummer(Teachername,_):-lectures(Teachername,Coursename),offered_in_semester(summer,Coursename).








