%Write a prolog code to find factorial of a Negative number.
factorial(0,1).
factorial(1,1).
factorial(N,F):-
N<0,
N1 is N+1,
factorial(N1,F1),
F is N*F1.
