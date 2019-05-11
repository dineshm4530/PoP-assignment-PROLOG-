# Generate a random permutation of the elements.

rnd_permutation(L,X) :-
        length(L,S),
        rnd_select(L,S,X).