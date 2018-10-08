quadratic([1,1,-1]);
quadratic([1,2,-3]);

% question 3
poly1 = @(x) evalPoly([1,1,-1], [2,1,0], x);
poly2 = @(x) evalPoly([1,2,-3], [2,1,0], x);

% question 4
fzero(poly1, [0,1.5]);
fzero(poly2, [-1.1, 1.2]);

% question 5
errorInApprox = @(coef, power, func, x) abs(evalPoly(coef, power, x) - func(x));

%%
% question 6
%errorInApprox([1, -1/6, 1/120, -1/5040], [1,3,5,7], sin(pi/2), pi/2);
%errorInApprox([1, -1/6, 1/120, -1/5040], [1,3,5,7], sin(pi), pi);
