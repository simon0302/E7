function rate = ConvergenceSimpson(f, a, b, N, I)

n = 2.^(2:1:N);
h = (b-a)./n;
errors = [];

for k = 1:1:length(n)
    
    term1 = 0;
    term2 = 0;
    
    for i = 1:(n(k)/2)-1
        xi = a+2*h(k)*i;
        term1 = term1 + f(xi);
    end
    
    for j = 1:(n(k)/2)
        xj = a+(2*j-1)*h(k);
        term2 = term2 + f(xj);
    end
    
    Is = (h(k)/3)*(f(a) + 2*term1 + 4*term2 + f(b));
    errors = [errors, abs(I-Is)];
end

temp = polyfit(log(h), log(errors), 1);
rate = temp(1);