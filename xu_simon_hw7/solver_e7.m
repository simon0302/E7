function x = solver_e7(A, b, method)
%SOLVER_E7 - solves the system Ax = b in three different ways based on the
%input method
%   A - the n x n matrix for the Ax = b system
%   b - the n x 1 column vector for the Ax = b system
%   method - integer flag for the method
%       1 -> for Cramer's rule using your determinant
%       2 -> for Cramer's rule using MatLab's Determinant
%       3 -> for Gaussian Elimination
%       Anything else, use the backslash operator
%   x - the

% Default output
x = zeros(length(b), 1);
x(:) = NaN;

lenA = length(A);

%******************************** TODO ********************************
    % Cramer's rule using your determinant function
if method == 1
    
    detA = determinant_e7(A);

    for r = 1:lenA
        Anew = A;
        for c = 1:lenA
            
            Anew(r,c)= b(r);
        end
        
        detAnew = determinant_e7(Anew);
        x(r,1) = detAnew/detA;
    end
    
%******************************** TODO ********************************
    % Cramer's Rule using MatLab's determinant function    
elseif method == 2
    
    detA = det(A);

    for r = 1:lenA
        Anew = A;
        for c = 1:lenA
            
            
            Anew(r,c) = b(r);
        end
        
        detAnew = det(Anew);
        x(r,1) = detAnew/detA;
    end
    
%******************************** TODO ********************************
    % Use Gaussian Elimination with Backward Substitution to solve the
    % system    
elseif method == 3
    
    [A_new,b_new] = forward_elimination(A,b);
    x = backward_substitution(A_new,b_new);
    
%******************************** TODO ********************************
    % Backslash operator
else 
    x = A\b;
end