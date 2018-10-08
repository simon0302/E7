function [coef_der, pow_der] = derivPoly (coef, power)
% finds the coefficients and exponents of derivatives
coef_der = coef.*power;
pow_der = (power - 1);

% cos(x) = derivPoly([1, -1/6, 1/120, -1/5040], [1,3,5,7]);

% @ pi/2 : evalPoly([1, -0.5, 0.0441667, -0.0013889], [0,2,4,6], pi/2)
% @ pi : evalPoly([1, -0.5, 0.0441667, -0.0013889], [0,2,4,6], pi)


% the absolute error is given by|cos(x) - evalPoly(input args)|
% error @ pi/2: 0.032162
% error @ pi:  0.014326

% ********Seems pretty accurate;*************