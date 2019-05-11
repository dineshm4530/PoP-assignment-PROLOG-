# Extract a slice from a list.


slice([H|_], 1, 1, [H]).
slice([H|T], 1, To, [H|X]) :-
        N is To - 1,
        slice(T, 1, N, X).
slice([_|T], From, To, L) :-
        N is From - 1,
        M is To - 1,
        slice(T, N, M, L).