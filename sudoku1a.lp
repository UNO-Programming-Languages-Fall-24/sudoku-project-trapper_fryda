% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

grid(1..4, 1..4).
numbers(1..4).

sudoku(X,Y,Z) :- initial(X,Y,Z).

ininitial(X,Y) :- initial(X,Y,_).
empty(X,Y) :- grid(X,Y), not ininitial(X,Y).

accepted(X,Y,Z) :- empty(X,Y), numbers(Z).
:- empty(X,Y), not (sudoku(X,Y,Z1) :- accepted(X,Y,Z1)).

sudoku(X,Y,Z) :- sudoku(X,Y,Z).

%need constraints to check rows and columns 




#show sudoku/3.
