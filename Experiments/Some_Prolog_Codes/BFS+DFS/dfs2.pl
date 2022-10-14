%Nama : Tahmina Islam
 %Matkul : Pemrograman Deklaratif (B) 
solve(Node, Solution) :- 
depthfirst([], Node, Solution).
 depthfirst(Path, Node, [Node|Path]) :- goal(Node). 
depthfirst(Path, Node, Sol) :- edge(Node, Node1),
 not(member(Node1, Path)),
 depthfirst([Node|Path], Node1, Sol).
 

edge(Adiba, sakila). 
edge(Adiba, sara). 
edge(sakila, alu). 
edge(sakila, jani). 
edge(alu, depu).
 edge(jani, liza).
 edge(jani, simu).
 edge(sara, tami).
 edge(sara, pari).
 edge(tami, joli).
 edge(joli, simu).
 goal(simu).
