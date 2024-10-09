
grid(1..4, 1..4).
numbers(1..4).


%sudoku(X,Y,Z) :- initial(X,Y,Z).

%ininitial(X,Y) :- initial(X,Y,_).
%empty(X,Y) :- grid(X,Y), not ininitial(X,Y).

%accepted(X,Y,Z) :- empty(X,Y), numbers(Z).
%:- empty(X,Y), not sudoku(X,Y,Z) : numbers(Z).
1 { sudoku(X,Y,Z) : numbers(number) } 1 :- grid(X,Y).

:- sudoku(R1,Y,Z), sudoku(R2,Y,Z), R1 != R2.
:- sudoku(X,C1,Z), sudoku(R2,C2,Z), C1 != C2.
%1 { sudoku(X,Y,Z) : numbers(Z) } 4 :- grid(X,Y).
%1 { sudoku(X,Y,Z) : numbers(Z) } 4 :- grid(X,Y). 

sudoku(X,Y,Z) :- sudoku(X,Y,Z).

#show sudoku/3. 





