%male
male(abid).
male(prince).
male(sakif).
male(sopon).

%female
female(riya).
female(ripa).
female(suma).

%parent
parent(abid,prince).
parent(abid,riya).
parent(prince,ripa).
parent(prince,sakif).
parent(riya,sopon).
parent(riya,suma).

%siblings
siblings(prince,riya).
siblings(ripa,sakif).
siblings(sopon,suma).

%cousins
cousins(ripa,sopon).
cousins(ripa,suma).
cousins(sakif,sopon).
cousins(sakif,suma).
cousins(sopon,ripa).
cousins(sopon,sakif).
cousins(suma,ripa).
cousins(suma,sakif).

%uncle
uncle(prince,sopon).
uncle(prince,suma).

%Aunt
aunt(riya,ripa).
aunt(riya,sakif).

%father
father(X,Y):-parent(X,Y),male(X).

%mother
mother(X,Y):-parent(X,Y),female(X).

%brother
brother(X,Y):-siblings(X,Y),male(X).

%sister
sister(X,Y):-siblings(X,Y),female(X).

%grandparent
grandparent(X,Y):-parent(P,Y),parent(X,P).

%grandchild
grandchild(ripa).
grandchild(sakif).
grandchild(sopon).
grandchild(suma).



