# Insert an element at a given position into a list.


insert_at(A, L, 1, [A|L]).
insert_at(A, [H|T], N, [H|R]) :-
        N1 is N - 1,
        insert_at(A, T, N1, R).
