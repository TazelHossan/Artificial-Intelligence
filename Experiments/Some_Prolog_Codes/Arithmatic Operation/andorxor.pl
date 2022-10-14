and(X,Y):-
R is X/\Y,
write(R).

or(X,Y):-
R is X\/Y,
write(R).

xorop(X,Y):-
O is X xor Y,
write(O).
