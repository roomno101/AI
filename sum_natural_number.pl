%write a prolog program to calculate the sum of natural numbers.
sum:-
    write("Enter the last number"),
    read(N),
    sum(N,Sum),
    write("\n The sum is : "),write(Sum),nl.
sum(N,Sum):-
    Sum is ((N*(N-1))/2.0).


%output:-
?- sum.
Enter the last number5.

 The sum is : 10.0
true.
