parents(ratul, kona, nabila).
parents(ratul, kona, robi).
parents(robi, nabila, moon).
parents(robi, nabila, hera).
parents(robi, nabila, dia).
parents(moon, tania, omi).
parents(moon, tania, raju).
parents(moon, dia, pinu).

man(ratul).
man(robi).
man(moon).
man(raju).
man(omi).

woman(kona).
woman(nabila).
woman(tania).
woman(dia).
woman(pinu).
woman(hera).

father(X,Y) :- parents(X,_,Y).
mother(X,Y) :- parents(_,X,Y).

parent(X,Y) :- father(X,Y); mother(X,Y).

son(S,P) :- man(S), father(P,S).
daughter(D,P) :- woman(D), mother(P, D).

siblings(A,B) :- (parents(P,_,A), parents(P,_,B), A\=B) ; (parents(_,P,A), parents(_,P,B), A\=B).

sister(X, Y) :- woman(X), ((parents(F,_,X)), (parents(F,_,Y)); ((parents(_,M,X)), (parents(_,M,Y)).

uncle(U,N) :- man(U), (siblings(U,M); siblings(U,F)), parents(M, F, N). 
aunt(U,N) :- woman(U), (siblings(U,M); siblings(U,F)), parents(M, F, N).

grandparent(G,N) :- (parents(G,_,X), parents(X,_,N)); (parents(_,G,X), parents(_,X,N)).

grandpa(G,N) :- (parents(G,_,X), parents(X,_,N)); (parents(_,G,X), parents(_,X,N)), man(G).
grandma(G,N) :- (parents(G,_,X), parents(X,_,N)); (parents(_,G,X), parents(_,X,N)), woman(G).