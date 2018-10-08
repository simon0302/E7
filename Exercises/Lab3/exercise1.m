M = [ 1 2 3; 4 5 6];
y1 = size(M);
y2 = M(2,3);
y3 = M(3);
y4 = M(3:1:4);
M2 = [M(1,1) 6 M(1,3); M(2, 1:3)];
M3 = [M(1, 1:end); 9 10 11];
M3 = [M3, zeros(2,1)];
y5 = diag(M3);
M4 = 2*M;
y6 = find(M4 > 9);
sum(M); % returns sum along each column
sum(M, 2); % returns sum along each row
min(M); %finds min along each column
eye(2);
ones(3, 5);
repmat ([1 2], 5); %makes [1 2] 5 times
repmat ([1 2],[3, 2]); % makes a matrix of [1,2] in a 3x2 form