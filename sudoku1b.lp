grid(1..4, 1..4).
numbers(1..4).
lessthantwo(1..2).
greaterthantwo(3..4).

sudoku(X,Y,Z) :- initial(X,Y,Z).

empty(X,Y) :- grid(X,Y), not sudoku(X,Y,_).

accepted(X,Y,Z) :- empty(X,Y), numbers(Z).

subgrid(X,Y,1) :- lessthantwo(X), lessthantwo(Y).
subgrid(X,Y,2) :- greaterthantwo(X), lessthantwo(Y).
subgrid(X,Y,3) :- lessthantwo(X), greaterthantwo(Y).
subgrid(X,Y,4) :- greaterthantwo(X), greaterthantwo(Y).
 

1 { sudoku(X,Y,Z) : accepted(X,Y,Z) } 1 :- empty(X,Y).

:- sudoku(R1,Y,Z), sudoku(R2,Y,Z), R1 < R2.

:- sudoku(X,C1,Z), sudoku(X,C2,Z), C1 < C2.

:- sudoku(X1,Y1,Z), sudoku(X2,Y2,Z), subgrid(X1,Y1,G), subgrid(X2,Y2,G), X1 != X2.
:- sudoku(X1,Y1,Z), sudoku(X2,Y2,Z), subgrid(X1,Y1,G), subgrid(X2,Y2,G), Y1 != Y2.

1 { sudoku(X,Y,Z) : numbers(Z) } 4 :- grid(X,Y).


sudoku(X,Y,Z) :- sudoku(X,Y,Z).


#show subgridX/3.
















