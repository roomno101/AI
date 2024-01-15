%Write a prolog code to find factorial of a positive number.
factorial(0,1).
factorial(1,1).
factorial(N,F):-
N>0,
N1 is N-1,
factorial(N1,F1),
F is N*F1.

%output-
?- factorial(5,F).
F = 120 .
?- factorial(5,120).
true


