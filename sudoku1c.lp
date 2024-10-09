grid(1..4, 1..4).
numbers(1..4).


sudoku(X,Y,Z) :- initial(X,Y,Z).

empty(X,Y) :- grid(X,Y), not sudoku(X,Y,_).

accepted(X,Y,Z) :- empty(X,Y), numbers(Z).

subgrid(1,1,1).
subgrid(1,2,1). 
subgrid(1,3,2).
subgrid(1,4,2).
subgrid(2,1,1).
subgrid(2,2,1).
subgrid(2,3,2).
subgrid(2,4,2).
subgrid(3,1,3).
subgrid(3,2,3).
subgrid(3,3,4).
subgrid(3,4,4).
subgrid(4,1,3).
subgrid(4,2,3).
subgrid(4,3,4).
subgrid(4,4,4). 
 

1 { sudoku(X,Y,Z) : accepted(X,Y,Z) } 1 :- empty(X,Y).

subgridvals(X,Y,G,Z) :- subgrid(X,Y,G), numbers(Z).

:- sudoku(R1,Y,Z), sudoku(R2,Y,Z), R1 < R2.

:- sudoku(X,C1,Z), sudoku(X,C2,Z), C1 < C2.

:- subgridvals(X1,Y1,G,Z), subgridvals(X2,Y2,G,Z), X1 != X1, Y1 != 
Y2.

1 { sudoku(X,Y,Z) : numbers(Z) } 4 :- grid(X,Y).


sudoku(X,Y,Z) :- sudoku(X,Y,Z).


#show sudoku/3.















