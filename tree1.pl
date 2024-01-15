%Design a tree using swi pro-prolog
parent(bob,jerry).
parent(bob,tom).
parent(tom,kim).
parent(tom,rat).


%output:-
?- parent(bob,jerry).
true.
?- parent(bob,rat).
false.
