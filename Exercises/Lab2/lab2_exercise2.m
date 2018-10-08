% #1
f = @convertTempFtoC;
f(32);
f(212);
% #2
f1 = @(x) x^2;
% #3
whos f1;
% #4
E2_1 = f1(3);
% #5
f2 = @(x,y) x^2+y^2;
f2(1,2);
% #6
f3 = @(T_F) convertTempFtoC(T_F)*9/5 +32;
f3(50);
% #7
f4 = @(T_F) f(T_F)*9/5 +32;
% #8
f5 = @(x) f2(x,8);
% #9
%nope
% #10
poly = @(x) x^3 +2*x^2 + x + 5;
fzero(poly, 0);