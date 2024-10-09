 
grid(1..4, 1..4).
numbers(1..4).


sudoku(X,Y,Z) :- initial(X,Y,Z).

empty(X,Y) :- grid(X,Y), not sudoku(X,Y,_).

accepted(X,Y,Z) :- empty(X,Y), numbers(Z).

1 { sudoku(X,Y,Z) : accepted(X,Y,Z) } 1 :- empty(X,Y).

:- sudoku(R1,Y,Z), sudoku(R2,Y,Z), R1 < R2.
:- sudoku(X,C1,Z), sudoku(X,C2,Z), C1 < C2.
1 { sudoku(X,Y,Z) : numbers(Z) } 4 :- grid(X,Y).
1 { sudoku(X,Y,Z) : numbers(Z) } 4 :- grid(X,Y). 

sudoku(X,Y,Z) :- sudoku(X,Y,Z).

#show sudoku/3. 



