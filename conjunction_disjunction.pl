%write a prolog code to show use of conjunction(and) and
% disjunction(or).

likes(marry,chocolate).
likes(marry,coffee).
likes(marry,burger).
likes(john,coffee).
likes(john,marry).
likes(john,burger).

%output:-
?- likes(marry,X);likes(john,X).
X = chocolate ;
X = coffee .

?- likes(marry,Y);likes(marry,Y).
Y = chocolate ;
Y = coffee .

?- likes(marry,Y);likes(marry,Y);likes(marry,Y).
Y = chocolate ;
Y = coffee ;
Y = burger .


