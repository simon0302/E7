function x = backward_substitution(A, b)
%BACKWARD_SUBSTITUTION - Completes the solution from the forward
% elimination method by performing backwards substitution
%   A - unit upper triangular matrix
%   b - vector associated with the unit upper triangular matrix
%   x - the solution to Ax = b

% Default output
x = zeros(length(b), 1);

%********************************** TODO **********************************
% Perform backward subsitution

n = length(A);
x = [A b];
for i = n-1:-1:1
    x(i,:) = (b(i,:) - A(i,i+1:n)*x(i+1:n,:))/A(i,i);
end
x = x(:,n+1);