basket([coffee, milk, chocolate, apple, juice]).

shopping :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    handle_choice(Choice).

handle_choice(d) :-
    basket(Items),
    display_list(Items),
    shopping.

handle_choice(a) :-
    write('enter the item you want to add: '),
    read(Item),
    basket(OldItems),
    NewItems = [Item | OldItems],
    retract(basket(OldItems)),
    assertz(basket(NewItems)),
    write('The item has been added'), nl,
    shopping.

handle_choice(e) :-
    write('Exiting shopping program. Goodbye!'), nl.

handle_choice(_) :-
    write('Invalid choice, please try again.'), nl,
    shopping.

display_list([]).
display_list([Head | Tail]) :-
    write(Head), nl,
    display_list(Tail).
