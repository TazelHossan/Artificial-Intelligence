breadth_first(Goal, Goal, _,[Goal]).
breadth_first(Start, Goal, Visited, Path) :-
    findall(X,
            (connected2(X,Start,_),not(member(X,Visited))),
            [T|Extend]),
    write(Visited), nl,
    append(Visited, [T|Extend], Visited2),
    append(Path, [T|Extend], [Next|Path2]),
    breadth_first(Next, Goal, Visited2, Path2).