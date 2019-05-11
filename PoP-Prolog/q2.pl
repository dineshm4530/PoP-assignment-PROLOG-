# Find the number of elements of a list

count([],0).
count([H|Tail], N) :-
    count(Tail, N1),
    (  number(H)
    -> N is N1 + 1
    ;  N = N1
    ).