grid(1..9, 1..9).
numbers(1..9).


sudoku(X,Y,Z) :- initial(X,Y,Z).

empty(X,Y) :- grid(X,Y), not sudoku(X,Y,_).

accepted(X,Y,Z) :- empty(X,Y), numbers(Z).

subgrid(1,1,1).
subgrid(1,2,1). 
subgrid(1,3,1).
subgrid(1,4,2).
subgrid(1,5,2).
subgrid(1,6,2).
subgrid(1,7,3).
subgrid(1,8,3).
subgrid(1,9,3).
subgrid(2,1,1).
subgrid(2,2,1).
subgrid(2,3,1).
subgrid(2,4,2).
subgrid(2,5,2).
subgrid(2,6,2).
subgrid(2,7,3).
subgrid(2,8,3).
subgrid(2,9,3).
subgrid(3,1,1).
subgrid(3,2,1).
subgrid(3,3,1).
subgrid(3,4,2).
subgrid(3,5,2).
subgrid(3,6,2).
subgrid(3,7,3).
subgrid(3,8,3).
subgrid(3,9,3).

subgrid(4,1,4).
subgrid(4,2,4).
subgrid(4,3,4).
subgrid(4,4,5).
subgrid(4,5,5).
subgrid(4,6,5).
subgrid(4,7,6).
subgrid(4,8,6).
subgrid(4,9,6).
subgrid(5,1,4).
subgrid(5,2,4).
subgrid(5,3,4).
subgrid(5,4,5).
subgrid(5,5,5).
subgrid(5,6,5).
subgrid(5,7,6).
subgrid(5,8,6).
subgrid(5,9,6).
subgrid(6,1,4).
subgrid(6,2,4).
subgrid(6,3,4).
subgrid(6,4,5).
subgrid(6,5,5).
subgrid(6,6,5).
subgrid(6,7,6).
subgrid(6,8,6).
subgrid(6,9,6).

subgrid(7,1,7).
subgrid(7,2,7).
subgrid(7,3,7).
subgrid(7,4,8).
subgrid(7,5,8).
subgrid(7,6,9).
subgrid(7,7,9).
subgrid(7,8,9).
subgrid(7,9,9).
subgrid(8,1,7).
subgrid(8,2,7).
subgrid(8,3,7).
subgrid(8,4,8).
subgrid(8,5,8).
subgrid(8,6,8).
subgrid(8,7,9).
subgrid(8,8,9).
subgrid(8,9,9).
subgrid(9,1,7).
subgrid(9,2,7).
subgrid(9,3,7).
subgrid(9,4,8).
subgrid(9,5,8).
subgrid(9,6,8).
subgrid(9,7,9).
subgrid(9,8,9).
subgrid(9,9,9). 
 

1 { sudoku(X,Y,Z) : accepted(X,Y,Z) } 1 :- empty(X,Y).


:- sudoku(R1,Y,Z), sudoku(R2,Y,Z), R1 < R2.

:- sudoku(X,C1,Z), sudoku(X,C2,Z), C1 < C2.

:- subgrid(X1,Y1,G), subgrid(X2,Y2,G), sudoku(X1,Y1,Z), sudoku(X2,Y2,Z),  X1 != X2 , Y1 != Y2.

1 { sudoku(X,Y,Z) : numbers(Z) } 9 :- grid(X,Y).


sudoku(X,Y,Z) :- sudoku(X,Y,Z).


#show sudoku/3.















