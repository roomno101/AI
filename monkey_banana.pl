do(state(middle,onbox,middle,hasnot),grasp,state(middle,onbox,middle,has)).
do(state(L,onfloor,L,Banana),climb,state(L,onbox,L,Banana)).
do(state(L1,onfloor,L1,Banana),push(L1,L2),state(L2,onfloor,Box,Banana)).
do(state(L1,onfloor,Box,Banana),walk(L1,L2),state(L2,onfloor,Box,Banana)).

canget(state(_,_,_,has),[]).
canget(state1,action,state2),canget(state2,write(Action)).
canget(state(_,_,_,has),[]).
canget(state1,action,state2),canget(state2,write(Action)).

canget(state2,partialplan).
add(action,partialplan).
add(X,L,[X|L]).

%OutPut:-
?- canget(state(atdoor,onfloor,atdoor,hasnot),plan).
false.
?- canget(state(middle,onbox,middle,hasnot),plan).
false.
?- canget(state(middle,onbox,middle,hasnot),p).
false.

