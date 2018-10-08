function [m, b, error] = line_of_best_fit(x_data, y_data)
%LINE_OF_BEST_FIT - calculates the line y = mx + b based on a least squares
%method.
%   x_data - the x-coordinates of the data set
%   y_data - the y-coordinates of the data set
%   m - the slope of the line of best fit
%   b - the intercept of the line of best fit
%   error - the least squares error, (i.e. what the least squares method
%   tries to minimize)

% Default output
m = 0;
b = 0;
error = inf;

%********************************** TODO **********************************
% Calculate the slope and the intercept by setting up the matrix-system and
% solve using the \ operator

xLen = length(x_data);
X = [ones(xLen,1),x_data'];
c = X\y_data';
m = c(2);
b = c(1);

%********************************** TODO **********************************
% Calculate the error made by the solution vector
error = sqrt(sum((y_data'-m*(x_data)'-b).^2));