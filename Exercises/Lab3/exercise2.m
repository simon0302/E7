p1 = [1 4 3];
p2 = [1 3];
p = [1 3 2] + [2 4 3];
p = conv(p1, p2);
[Q, R] = deconv(p2, p1);
polyval(p2, -2 : 1 : 2);
roots(p2);
polyder(p2);