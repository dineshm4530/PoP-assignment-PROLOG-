#  Drop every N'th element from a list.


drop(L, N, L) :-
        length(L, Length),
        Length < N.
drop(List, N, NthDropped) :-
      length(List,Length),
      Length >= N,
      length(WithNth, N),
      append(WithNth, Tail, List),
      drop(Tail, N, Rest),
      length(NthElem, 1),
      append(WithoutNth, NthElem, WithNth),
      append(WithoutNth, Rest, NthDropped).