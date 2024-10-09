% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

grid(1..4, 1..4).
numbers(1..4).

gridval(X,Y,Z) :- grid(X,Y), numbers(Z)




#show sudoku/3.
