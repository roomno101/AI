%Mita sells anything that neelam buys.
%Tony buys from anyone who sells bread.
sells(mita,egg).
sells(rama,appale).
sells(john,bread).
buys(neelam,egg).
buys(tony,bread).
mita_sells(X) :- buys(neelam,X).
tony_buys(X) :- sells(john,X).

%output-
?- sells(mita,X),buys(neelam,X).
X = egg.
?- buys(tony,bread),sells(X,bread).
X = john.
?- mita_sells(X).
X = egg.
?- tony_buys(X).
X = bread.
