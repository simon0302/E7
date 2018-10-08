%% Part A
A = 1:5;
B = [1 2 3 2 1];
A
A+B
[A B]
B./B
A+4
1./B
B.^2
%[A' B];
size([A;B])
A.*B
%% Part C
A = [5; 6];
B = [3; 4];
C = 3;
B(2) = 2;
B(:, 2) = A;
B = B - C

t = sum(A.*B);
t = [t; B(2,:)];
[i, j] = find(t>0);
i
%% Part D
myfun(4)
myfun(0)
%reciprocal
myfun(myfun(1)+1)
a = 2;
a = myfun(a)
