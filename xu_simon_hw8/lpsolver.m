function [optx,lambda,status,gamma] = lpsolver(c,A,b)
% Solves LP in standard form (see slides/notes)
%   min c'*x, subject to Ax<=b
%
% Makes direct call to lp236a.m from 
%    Matlab LP solver for use in EE236A, Fall 2005 Quarter.
%    UCLA, Department of Electrical Engineering
%    Prof. Lieven Vandenberghe
%
% Returns optimal x (optx), dual variables (lambda), status (CHAR), and the
% optimal objective function (simply c'*optx).  The
% dual variables are the derivative of the optimum value
%

[optx,~,lambda,~,status] = lpLV(c,A,b,[],[]);
if strcmp(status,'optimal')
   gamma = c'*optx;
elseif strcmp(status,'primal infeasible')
   status = 'infeasible';
   gamma = inf;
elseif strcmp(status,'dual infeasible')
   status = 'unbounded';
   gamma = -inf;
else
   status = 'unknown';
   gamma = [];
end
   

