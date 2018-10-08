%% Exercise 1: Numeric Arrays
A = [1:1:10];
B = [-2:-1:-6];
C = [2:3:150];
D = [A B];
E = D';
F = D + E;
G = 2*D;
H = G.*G;
I = D;
I(1:1:10) = 0;
J = find(I > 0);
K = isempty(J);
L = sum(H);
M = [I(1:1:length(I)-1) 0];
N = [I(1:1:end-1) 0];
%% Exercise 2: Numeric Arrays
Time = linspace(0,0.6,1001);
xVel = 10*cos(20*pi/180);
yVel = 10*sin(20*pi/180);
xDistance = xVel*Time;
yDistance = yVel*Time - 0.5*(9.8)*(Time.*Time);
MaxHeight = max(yDistance);
plot(xDistance, yDistance);
%% Exercise 3: Character Arrays
A = 'nick is a good boy. ';
B = upper(A);
C = 'he never gets into trouble with his teachers.';
D = [A C];
E = strfind(D, 'e');
F = fliplr(D);
disp(F);
G = '42';
H = isnumeric(G);
I = str2num(G);
J = isnumeric(I);
%% Exercise 4: Strings
c = 'I am doing MATLAB programming.';
cc = c(end-4:1:end);
s = string(c);
s = s + 'I am finding it easy so far';
whos c s;
sequal = c == s;