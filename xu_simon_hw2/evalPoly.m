function [y] = evalPoly(coef, power, x)
%given any polnomial vector thing, 
% ax^2+bx+c @ x=  1, ----> evalPoly([a b c], [2 1 0], 1)

y = sum(coef.*x.^power);


% @ pi/2: evalPoly([1, -1/6, 1/120, -1/5040], [1,3,5,7], pi/2)
% @ pi: evalPoly([1, -1/6, 1/120, -1/5040], [1,3,5,7], pi)