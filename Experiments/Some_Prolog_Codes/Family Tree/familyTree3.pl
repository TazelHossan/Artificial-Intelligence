%male
male(donald).
male(regan).
male(john).
male(newton).
male(harry).
male(william).

%female
female(aniya).
female(roshi).
female(melaniya).
female(andriya).

%parent
parent_of(donald,melaniya).
parent_of(donald,andriya).
parent_of(aniya,melaniya).
parent_of(aniya,andriya).
parent_of(john,harry).
parent_of(melaniya,harry).
parent_of(regan,newton).
parent_of(roshi,newton).
parent_of(andriya,william).
parent_of(newton,william).


%father_of
father_of(X,Y):-parent_of(X,Y),male(X).

%mother_of
mother_of(X,Y):-parent_of(X,Y),female(X).

%grandfather_of
grandfather_of(X,Q):-parent_of(X,Y),parent_of(Y,Q),male(X).

%grandmother_of
grandmother_of(X,Q):-parent_of(X,Y),parent_of(Y,Q),female(X).

%sister_of
sister_of(S,P):-parent_of(X,P),parent_of(X,S),female(S).

%aunt_of
aunt_of(A,PE):-parent_of(P,PE),sister_of(A,P),not(A=P).


%uncle_of
uncle_of(A,PE):-parent_of(P,PE),parent_of(X,P),
               parent_of(X,A),male(A).