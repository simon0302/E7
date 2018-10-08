function [I, h] = Simpson(f, a, b, tol)

n = 4;
h = (b-a)/n;
Iold = (h/3)*(f(a) + 4*f((a+b)/2) + f(b));
I = 0;

while abs((I-Iold)/Iold) >= tol
    
    Iold = I;
    n = 2*n;
    h = (b-a)/n;
    term1 = 0;
    term2 = 0;
    
    for i = 1:1:(n/2)-1
        xi = a+2*h*i;
        term1 = term1 + f(xi);
    end
    
    for j = 1:1:(n/2)
        xj = a+(2*j-1)*h;
        term2 = term2 + f(xj);
    end
    
    I = (h/3)*(f(a) + 2*term1 + 4*term2 + f(b));
end