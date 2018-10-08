function [exact, approx, abs_error, terms] = calcTaylorTerms(x, dx, tol, max_terms, exp_or_sin)

abs_error = intmax;
approx = 0;

if exp_or_sin == "exp"
    exact = exp(x+dx); 
    i = 0;

    while ~(abs_error < tol)
        
        if i == max_terms
            abs_error = abs(exact - approx);
            terms = max_terms;
            return;
        end
        
        approx = approx + ((dx)^(i)/factorial(i))*exp(x);
        abs_error = abs(exact - approx);
        i = i+1; 
    
    end
    
    terms = i;
    
elseif exp_or_sin == "sin"
    
    exact = sin(x+dx);
    counter = 0;
   
    while ~(abs_error < tol)
        
        if counter == max_terms
            abs_error = abs(exact - approx);
            terms = max_terms;
            return;
        end
        
        %sin - 0
        if mod(counter,4) == 0
        
            approx = approx + ((dx)^(counter)/factorial(counter))*sin(x);
        
        %cos - 1    
        elseif mod(counter,4) == 1
    
            approx = approx + ((dx)^(counter)/factorial(counter))*cos(x);
    
        %-sin - 2
        elseif mod(counter,4) == 2

            approx = approx + ((dx)^(counter)/factorial(counter))*-sin(x);
    
        %-cos - 3
        elseif mod(counter,4) == 3
        
            approx = approx + ((dx)^(counter)/factorial(counter))*-cos(x);
    
        end
        
        abs_error = abs(exact - approx);
        counter = counter+1;
        
    end
    
    terms = counter;  
    
else   
    exact = NaN;
    approx = NaN;
    abs_error = NaN;
    terms = NaN;
end