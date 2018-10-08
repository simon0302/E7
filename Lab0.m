% Lab 0
%% Question 1
% This is how I can write a comment.

% Hello! My name is Simon Xu and this is my lab0 for E7

4+5
6/2
ans
ans * 2
x=4
y=5
x+y
x+y; 
% ^ prints nothing

y=3; 
% ^prints nothing

z= x*y+y
% z is 15

%% Question 2
% Define x and y
 x=2;
 y = 4;
 
% part 1
(x-(1/(x*y)))^(-2) 
% = 0.2844

% part 2

x^(y^x) 
% = 65536

% part 3
x^(1/y) 
% = 1.1892

% part 4
log10(y-x)
% = 0.3010

% part 5
(x^2+1)/((x*y-1)*(x+exp(y))) 
% = 0.0126

% part 6
log(sin(abs(x-y))) 
% = -0.0951

% part 7
log2(asin(x/y)) 
% = -0.9335

% part 8
atan((y^2+x^2)/(x^2+1)^(1/2)) 
% = 1.4595

% part 9
asin(sin(x/2)) 
% = 1

% part 10
asin(sin(x))
% = 1.1416

% part 11
% MATLAB calculates f = sin(g) then asin(f) instead of "cancelling out"
% sin inside the asin. This is why the #9 returns 1 and #10 doesn't return
% 2

%% Question 3
% Write your one-line Matlab code below.

2*(0.85*(1.09*(3*50 - 15)))
% (He has $250.1550 now)

%% Question 4

% part 4.1
10/0 
% = inf
exp(9999) 
% = inf
log(0) 
% = -inf

% part 4.2

inf-inf 
% = nan
inf/inf 
% = nan
sin(inf)
% = nan

% part 4.3
a = 1+i;
b = 2-2i;

5*a+b 
% = 7.0000 + 3.0000i

(a+b)/((a-b)^2) 
% = -0.1800 + 0.2600i

sin(((2*a + b)/8)*pi)
% = 1

log10(4*a+2*b-8) 
% = -inf

% part 4.4

i = 13
clear i
whos
i
y = 10
clear y
whos
y

% clear i and clear y only work when you have overloaded i or y. 
% Otherwise clear i and clear y do nothing and don't print out anything
% Also, you can't print out y after you have cleared it since it isn't
% defined

%% Question 5

clear
% clear resets all the variables defined

a=pi
% defines a and sets it to the value of pi

format bank; a
% format bank; a makes a have 3 digits

format short; a
% format short; a makes a have 5 digits

b=8;
% defines b and sets it to 8, but does not print it out

cos = b + 5j
% defines cos and sets it to a complex number, b + 5j, which b = 8 for now

whos
% whos gives the name, size, bytes, class, and attributes of each defined
% variable

acos = a*cos
% defines acos as a*cos and calcuates a * (b+5*j) since b+5j = cos

% cos(c/2)
% error since "c" is not defined

clc
% clc clears the command window

format long; pi
% format long; pi makes pi have 16 digits

format bank
% format bank; prints nothing since ; supresses the printout and no number is
% specified

b=2.3456
% defines b = 2.3456 buts prints out b = 2.35 because of format bank

isequal(b,2.34)
% isequal(b, 2.34) prints out (logical) 0 (since it's not true)

isequal(b,2.3456)
% isequal(b,2.3456) prints out (logical) 1 (since it is true)

c=2.3445
% c = 2.34 is printed since I did format bank 4 steps earlier

a=c+b
% a = c+b prints out 4.69 

format short;
% format short allows subsequent to print out 4 decimal places

a
% a now becomes 4.6901