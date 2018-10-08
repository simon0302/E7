function prob = buffon(a,x,theta)

% Check when conditions apply:
prob = sum(x <= 0.5*a*sin(theta)) / length(x);