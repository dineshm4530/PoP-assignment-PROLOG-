# Find out whether a list is a palindrome

domains

    list=symbol*

    
predicates

    palin(list)
    findrev(list,list,list)
    compare(list,list)

    
clauses

    palin(List1):-
        findrev(List1,[],List2),
        compare(List1,List2).
            
    findrev([],List1,List1).
    
    findrev([X|Tail],List1,List2):-
        findrev(Tail,[X|List1],List2).
        
    compare([],[]):-
        write("List is Palindrome\n").
        
    compare([X|List1],[X|List2]):-
        compare(List1,List2).    
        
    compare([X|List1],[Y|List2]):-
        write("List is not Palindrome\n").