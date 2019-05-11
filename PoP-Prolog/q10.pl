# Create list containing all intergers within a given range.

range(N, N, [N]) :- !.
range(N, M, [N|T]) :-
        N1 is N + 1,
        range(N1, M, T).