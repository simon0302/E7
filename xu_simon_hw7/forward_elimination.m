function [A_new, b_new] = forward_elimination(A, b)
%FORWARD_ELIMINATION - Performs forward elimination to put A into unit
% upper triangular form.
%   A - original matrix of Ax = b
%   b - original vector of Ax = b
%   A_new - unit upper triangular A formed using Gaussian Elimination
%   b_new - the vector b associated with the transformed A

% Default output
A_new = A;
b_new = b;

%********************************** TODO **********************************
% Perform Gaussian Elimination to evaluate turn A into a unit upper
% triangular matrix

n = length(A);    
for i = 1:1:n-1   
    if A(i,i) == 0
        A_new = zeros(n,n);
        b_new = zeros(n,1);
        return;
    end    
    ratio = -A(i+1:n,i)/A(i,i);       
    A(i+1:n,:) = A(i+1:n,:) + ratio*A(i,:);
    b(i+1:n,:) = b(i+1:n,:) + ratio*b(i,:);
end
x = [A b];
for j = 1:1:n
        x(j,:) = x(j,:)/x(j,j);
end
A_new = x(1:1:n,1:1:n);
b_new = x(:,n+1);