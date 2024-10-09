

grid(1..4, 1..4).
numbers(1..4).


sudoku(X,Y,Z) :- initial(X,Y,Z).

empty(X,Y) :- grid(X,Y), not sudoku(X,Y,_).

accepted(X,Y,Z) :- empty(X,Y), numbers(Z).

subgrid(X,Y,1) :- X=1..2, Y=1..2.
subgrid(X,Y,2) :- X=3..4, Y=1..2.
subgrid(X,Y,3) :- X=1..2, Y=3..4.
subgrid(X,Y,4) :- X=3..4, Y=3..4.

subgridcells(X,Y,X1,Y1,G) :- subgrid(X,Y,G), subgrid(X1,Y1,G), X!=X1, Y!=Y1.

1 { sudoku(X,Y,Z) : accepted(X,Y,Z) } 1 :- empty(X,Y).

:- sudoku(R1,Y,Z), sudoku(R2,Y,Z), R1 < R2.

:- sudoku(X,C1,Z), sudoku(X,C2,Z), C1 < C2.

:- sudoku(X1,Y1,Z), sudoku(X2,Y2,Z), subgridcells(X1,Y1,X2,Y2,G).

1 { sudoku(X,Y,Z) : numbers(Z) } 4 :- grid(X,Y).
1 { sudoku(X,Y,Z) : numbers(Z) } 4 :- grid(X,Y).


sudoku(X,Y,Z) :- sudoku(X,Y,Z).

#show sudoku/3.







