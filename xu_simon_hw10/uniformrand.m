function x = uniformrand(n,a,b)

% The students have to find the CDF, which is P(x) = (x-a)/(b-a) for
% a<=x<=b. Then just invert (or use Newton) and solve for x as a function 
% of u.
u = rand(1,n);
x = u*(b-a) + a;
end

