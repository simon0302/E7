function roots = quadratic (coef)
% "quadratic evaluates the roots of a general trinomial"

a = coef(1);
b = coef(2);
c = coef(3);

roots = [(-b + sqrt(b^2 - 4*a*c))/(2*a),(-b - sqrt(b^2 - 4*a*c))/(2*a)];

% 2a) quadratic([1,1,-1]) = 0.61803, -1.618
% 2b) quadratic([1,2,-3]) = 1, -3