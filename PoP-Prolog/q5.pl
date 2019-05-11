# duplicates of the element

duplicate([H], [H,H]).
duplicate([H|L], [H,H|X]) :- duplicate(L, X).