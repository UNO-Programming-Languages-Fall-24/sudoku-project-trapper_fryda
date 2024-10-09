
grid(1..4, 1..4).
Xnumbers(1..4).1


sudoku(X,Y,Z) :- initial(X,Y,Z).

ininitial(X,Y) :- initial(X,Y,_).
empty(X,Y) :- grid(X,Y), not ininitial(X,Y).

accepted(X,Y,Z) :- empty(X,Y), numbers(Z).
:- empty(X,Y), not sudoku(X,Y,Z) : numbers(Z)


%need constraints to check rows and columns 




#show sudoku/3.
