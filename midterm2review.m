%fall 2012 midterm 1
% clear
% A = cell(2,2);
% A{1,1} = linspace(0,5,100);
% A(1,2) = {{'Hello World'}};
% A{2,1} = A(1,1);
% A{2,2} = {@cos, @(v) 10-2*v};
% plot(A{1,1},A{2,2}{2}(A{1,1}))

%fall 2008 midterm 1
% Mycell = {'Good', {'Morning', 5, 'Sunshine'};
%     [3:7], [1 5; 2 4]};

% Teamdata(1).Team = 'Super';
% Teamdata(1).Timing = [102, 107];
% Teamdata(2).Team = 'Fantastic';
% Teamdata(2).Timing = [100, 101. 99];

% %2015 E77 Mid 1
% Info = {'My name is', 1;
%     [1 2; 3 4], [5 6; 7 8]};

% A = {{{[5 7]}}};
% B = A{1}
% C = B{1}
% D = C{1}
% E = D{1}

% clear all;
% record.name = 'studentA';
% record.id = 1;
% record.score = 100;
% record(2).name = 'studentB';
% record(2).id = 3;
% record(2).score = 90;
% record(3).name = 'studentC';

% x = 1;
% 
% if x < 5
%     y = 2*x;
% elseif x<10
%     y = x;
% else
%     y = 10;
% end
% 
% if x < 10
%     y1 = x;
% elseif x<5
%     y1 = 2*x;
% else
%     y1 = 10;
% end

% clear;
% M(1).A = 3;
% M(1).B = [1 3];
% M(2).A = 2;
% M(2).B = [2 3];
% G = [10 20 30;40 50 60; 70 80 90];
% H = [5.1 4.1 3.1 2.1 1.1];

% x = 0;
% for k = 1:1:10
%     x = k^2;
% end
% x


% y = 0;
% for k = 1:2:10
%     y = y + k;
% end
% y

% z = 0;
% for k = 1:100
%     for m = 100:-10:10
%         if k ==m
%             z = z+1;
%         end
%     end
% end
% z


% clear;
% A = {'Golden', {'Bears'}, [3,1;4,2]};
% C.f = {7};
% D.f = 88;
% E = [C D];
% F = {[12 5] A E};


% clear
% schools(1).SchoolName = 'Cal';
% schools(1).TeamName = 'Golden Bears';
% 
% schools(2).SchoolName = 'UCLA';
% schools(2).TeamName = 'Bruins';
% 
% schools(3).SchoolName = 'Stanford';
% schools(3).TeamName = 'Cardinal';
% 
% schools(4).SchoolName = 'USC';
% schools(4).TeamName = 'Trojans';

% A = {'Cal', 'Golden', 'Bears', [5 7], {[1 2 3 4]}};
% 
% 
% tallB2 = struct('name', {'Taipei 101', 'Petronas Tower', 'Sears Tower'},'location', {'Taipei, Taiwan', 'Kuala Lumpur, Malaysia', 'Chicago, USA'});

% M = [1 3 2; 7 -5 1];
% temp = 0;
% for k = M
%     temp = temp + k(2)
% end
% temp;


% A = {'125' '22' '24'};
% G = {89, 92,93};
% G{1,2} = 91;
% %G{1,3} = 94;
% Data = struct('Name', {'Nick', 'ben', 'Ericka'}, 'Grade', G, 'Age', A);
% 
% classtype = class(Data);
% [dim1, dim2] = size(Data);
% C = [Data.Age];
% D = [Data.Grade];
% % E = Data(1).Name;
% % F = A(1,1);
% 
% function dec = midterm2review(BA)
% n = length(BA);
% 
% if n == 1
%     dec = BA(1);
% else
%     dec = midterm2review(BA(2:end))+BA(1)*2^(n-1);
% end

% function g = midterm2review(a,b)
% 
% while b~=0
%     r = rem(a,b);
%     a = b;
%     b = r;
% end
% g= a;

% 
% 
% i = 1; j = 1; z = 1;
% 
% while i < 5
%     i = i +1;
%     while j < 3
%         z = [z i+j];
%         j = j+1;
%     end
% end

% function total = midterm2review(n)
% 
% if n == 1
%     total = 1;
% else 
%     total = midterm2review(n-1)+(2*n-1);
% end

% function t = midterm2review(n)
% 
% t = [1 1 2];
% 
% for k = 4:1:n
%     t = [t sum(t(k-1:-1:k-3))];
% end
%     
S(1).name = 'Bob'; S(1).age = 7;

S(2).name = 'Karen'; S(2).age = 8;
S(3).name = 'Michael'; S(3).age = 8;
S(4).name = 'Judy'; S(4).age = 7;
S(5).name = 'Jeff'; S(5).age = 7;
S(6).name = 'Linda'; S(6).age = 9;

T = S(1);
U = S(3:end);










