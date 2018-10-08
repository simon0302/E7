function [output, A1, A2, A3, A4, A5, A6] = modify (A)

y1 = A(12);
y2 = A(2,3);
A1 = A([2:1:3], [2:1:3]);
A2 = A(5:1:7);
A3 = [A(1:1:2, 1:1:4); A(3), 6, A(3,3:1:end)];
A3 = [A3; zeros(1,4)];
A4 = 2*A;
A5 = A';
A6 = [[4 0 3];[3 3 3; 1 0 0; 2 5 1]];
A6 = A5.*A6;
A6 = A6(2:1:end, 1:1:end);
y3 = size(A6,1);
y4 = size(find(A6>10),1);
output = [y1 y2 y3 y4];