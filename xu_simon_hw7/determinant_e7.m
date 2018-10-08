function result = determinant_e7(A)
%DETERMINANT_E7 - calculates the determinant using the cofactors of A
%   A - n x n matrix whos determinant we want to know
%   result - value of the determinant of A should be a scalar

% Default output
result = NaN;

% Test for non-square A
if size(A, 1) ~= size(A, 2)
    result = NaN;
else
    %******************************** TODO ********************************
    % Fill out the remainder of the determinant function
    
    if size(A,1) == 2 && size(A,2) == 2
        result = A(1,1)*A(2,2)-A(1,2)*A(2,1);
    else
        
        for counter = 1:1:size(A,1)
            temp = A;
            temp(1,:) = [];
            temp(:,counter) = [];
            if counter == 1
                result = A(1,counter)*(-1)^(counter+1)*determinant_e7(temp);
            else
                result = result + A(1,counter)*(-1)^(counter+1)*determinant_e7(temp);
            end
        end
    end
end