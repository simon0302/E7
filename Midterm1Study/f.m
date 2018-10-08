function y = f(x)
y = x + g(x) + h(x);
end

function y = g(x)
y = x*h(x);
end

function y = h(x)
y = x;
end