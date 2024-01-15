fill(x,y).
fill(2,0):- nl,write('Goal State Reached...').

fill(X,Y):-X=0,Y=<1,nl,write('Fill the 4-Gallon Jug : (4,'),write(Y),write(')'),fill(4,Y).

fill(X,Y):-Y=0,X=3,nl,write('Fill the 3-Gallon Jug : '),write(X),write(' , 3)'),fill(X,3).

fill(X,Y):-X+Y>=4,Y=3,X=3,Y1 is Y-(4-X),nl,write('Pour water from 3-Gallon jug to 4-Gallon until it is full : (4 , '),write(Y1),write(')'),fill(4,Y1).

fill(X,Y):-X+Y>=3,X=4,Y=<1,X1 is X-(3-Y),nl,write('Pour water from 4-Gallon jug to 3-Gallon until it is full : ( '),write(X1),write(', 3)'),fill(X1,3).

fill(X,Y):-X+Y=<4,X=0,Y>1,X1 is X+Y,nl,write('Pour all water from 3-Gallon jug to 4-Gallon : ('),write(X1),write(' , 0)'),fill(X1,0).

fill(X,Y):- X+Y<3,Y=0,Y1 is X+Y,nl,write('Pour all the water from 4-Gallon jug to 3-Gallon : (0 , '),write(Y1),write(')'),fill(0,Y1).

fill(X,Y):- Y=3,X>=1,nl,write('Empty the 3-Gallon jug on ground : ('),write(X),write(' , 0)'),fill(X,0).

fill(X,Y):- X>4,Y<3,write('4L jug overflowed').

fill(X,Y):- X<4,Y>3,write('3L jug overflowed'),nl.

fill(X,Y):- X>=4,Y>=3,write('Both 3L & 4L jug overflowed').


