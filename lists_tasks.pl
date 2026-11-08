deleteElement(_, [], []).
deleteElement(X, [Y|Tail], Result) :-
    (   X = Y
    ->  deleteElement(X, Tail, Result)
    ;   Result = [Y|Rest],
        deleteElement(X, Tail, Rest)
    ).

add_at_the_end(X, List, Result) :-
    append(List, [X], Result).
