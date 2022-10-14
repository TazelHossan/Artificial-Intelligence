%solve(Node, Solution):
solve(Node,Solution):-
depthfirst([],Node,Solution).
%depthfirst(Path,Node,Solution):
% extending the path[Node|Path] to a goal gives Solution
depthfirst(Path,Node,[Node|Path]):-
goal(Node).
depthfirst(Path,Node,Sol):-
s(Node,Node1),
\+member(Node1,Path), %Prevent a cycle
depthfirst([Node|Path],Node1,Sol).
goal(f).
goal(j).
s(a,b).
s(a,c).
s(b,d).
s(b,e).
s(c,f).
s(c,g).
s(d,h).
s(e,i).
s(e,j).
