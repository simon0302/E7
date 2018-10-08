function [T, theta] = optimize_truss(W)
%OPTIMIZE_TRUSS - finds the angle theta so that the absolute maximum
%tension/compression experienced by the beams is as small as possible
%   W - load W_1, see diagram
%   T - the optimal tension in ALL the beams and reaction forces (same
%   units as inputted load) optimized to minimize maximum force in the just
%   the beams
%   theta - the optimal angle of the beams IN DEGREES

% Default output
T = zeros(12, 1);
theta = -1;

%********************************** TODO **********************************
% Optimize T with respect to theta

sumT = @(theta) slave(W, theta);
theta = fminbnd(sumT,0,180);
T = truss_solve(W,theta);


function help = slave(W,theta)
output = truss_solve(W,theta);
help = max(abs(output(1:1:3)));