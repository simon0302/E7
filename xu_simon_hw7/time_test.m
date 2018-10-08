function [t] = time_test(N, flag)
%TIME_TEST - solves systems of the sizes listed in N and times how it takes
% for each algorithm implemented in solver_e7 
%   N - the test case sizes, use rand() to generate systems
%   flag - flag variable to turn of the slow version of Cramer's rule (it
%   will take forever on systems any size bigger than 10 or so)
%       -> flag == true - run slow Cramer's rule
%       -> flag == false - do not
%   t -  the times, listed for each method with each column corresponding
%   to a test case and each row corresponding to the solver in solver_e7
%   (this is meant to make your life easier, don't over think it)

% Default output
t = zeros(4, length(N));

%********************************** TODO **********************************
% Using tic and toc find the run time for each test case and store it in
% the corresponding array

if flag == false
     for size = 1:length(N)
        
        A = rand(N(size));
        b = rand(N(size),1);
        
        for method = 2:1:4
            tic;
            x = solver_e7(A,b,method);
            t(method,size) = toc;
        end
        
    end
else
    for size = 1:length(N)
        
        A = rand(N(size));
        b = rand(N(size),1);
        
        for method = 1:1:4
            tic;
            x = solver_e7(A,b,method);
            t(method,size) = toc;
        end
        
    end
end