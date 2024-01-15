%write a prolog program to calculate grade of students based on marks
% division.
marks:-
    write("\n Enter the marks in CN : "),
    read(P),
    write("\n Enter the marks in DBMS : "),
    read(Q),
    write("\n Enter the marks in AI : "),
    read(R),
Total is (P+Q+R),
Per is (Total/3),
     write("Total Marks : "),write(Total),nl,
     write("Percentage : "),write(Per),nl,
     checkgrade(Per).
checkgrade(A):-
    A>=70,
    write("\n Distinction"),!.
checkgrade(A):-
    A>=60,A<70,
    write("\n First class"),!.
checkgrade(A):-
    A>=40,A<60,
    write("\n Pass"),!.
checkgrade(A):-
    A>=40,
    write("\n Fail"),!.







