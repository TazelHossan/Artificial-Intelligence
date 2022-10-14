lectures(codd,cse9020).
lectures(backus,cse9021).
lectures(rictchie,cse9201).
lectures(minsky,cse9414).
lectures(backus,cse9311).


offered(cse9020,summer).
offered(cse9201,fall).
offered(cse9021,summer).
offered(cse9414,spring).
offered(cse9311,spring).
offered(cse9314,fall).

studies(fred,cse9020).
studies(jack,cse9311).
studies(jill,cse9314).
studies(jill,cse9414).
studies(henry,cse9414).
studies(henry,cse9314).


show_course(X,Y):- lectures(X,Y).

taught_by_a_teacher(X,Y):- studies(X,Z), lectures(Y,Z).

summer_course(X,Z):- studies(X,Z),offered(Z,Y).

summer_or_not(X,Z):- lectures(X,Y),offered(Y,Z).
course_name(X,Z):- studies(X,Z),offered(Z,Y).
