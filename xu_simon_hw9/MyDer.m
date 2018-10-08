function yp = MyDer(h, y)

left = (-3*y(1) + 4*y(2) - y(3))/(2*h);
right = (3*y(end) - 4*y(end-1) + y(end-2))/(2*h);
yp = [left, zeros(1,length(y) - 2), right];

for i = 2:1:size(y,2)-1
    yp(i)=(y(i+1) - y(i-1))/(2*h);
end