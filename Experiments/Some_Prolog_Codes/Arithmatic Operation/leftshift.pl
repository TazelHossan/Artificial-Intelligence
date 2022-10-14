leftshift(X,Y):-
L is X << Y,
write(L).

rightshift(X,Y):-
G is X >> Y,
write(G).

comp(1):-
R is 0,
write(R).

comp(0):-
R is 1,
write(R).