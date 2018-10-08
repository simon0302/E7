% A = [1 2 3 4];
% B = [1 0];
% X = 1:4;
%


s = struct('name', {'robert', 'rachel'}, 'math', {93, 95}, 'chem', {78, 82});

% y = 0;
% 
% % % for i = 1:length(s)
% % %     y = y+s(i).math/length(s);
% % % end
% % % y
% 
% 
% y = mean([s.math])
% 
% y
% 
% y = (s(1).math + s(2).math)/2
% % 
% % for i = 1:size(s,2)
% %     y = y+s(i).math/size(s,2);
% % end
% % 
% % mean(s.math);
% % 
% % mean(s.math)


% k = 5;
% i = -2;
% t = -10;
% 
% while i<=k
%     i = i+2;
%     k = k-i;
%     t = t+k*i;
% end
% %

% 
% figure(1);
% hold on;
% for i = 1:10
%     x = linspace(0,1,20);
%     p = rand(1,5);
%     y = polyval(p,x);
%     plot(x,y);
%     figure(2)
%     hold on;
%     y = polyval(-p, x);
%     plot(x,y);
% end
% 
% figure(2)
% 
% % conv(A,B)
% % polyval(B,X)
% % A+2*[B B]
% 
% 
% function y = finalreview(n)
% 
% if n < 0
%     n = -n;
% end
% 
% if (floor((n/10)) ~= 0)
%     y = [rem(n,10) finalreview(floor(n/10))];
% else
%     y = [n];
% end

%find(x^3 + x = 1)
% roots([1 0 1 -1])
% fzero('x^3 + x -1', [0.1 1])
% % eval('[1 0 1 -1]', 0.5)
% 
% x = 0:pi/5:pi;
% y = sin(2.*x);
% xi = 0:pi/100:pi;
% % yi = interp1(x,y,xi,'linear');
% plot(x,y,'o',xi,yi)
% % 
% % % polyfit(x,y,1)
% 
% function n = finalreview(A,b)
% n = sum(sum(A==b));

% M = []; 
% for k = 3:-1:0
%     M = [M repmat(k, [1,k])];
% end
% M
% 
% function T = finalreview(T,N,k)
% 
% for i = numel(T)
%     T(i).(N{k}) = T(i).(N{k})(end:-1:1);
% end
% 
% function [y1, y2] = finalreview(a,b,c)
% y1 = localf1(b,a);
% y2 = @(x) c(localf2(a*x, b+x));
% 
% function H = localf1(x,y)
% H = x-y^2;
% 
% function K = localf2(z,q)
% K = [z+q, z-q];
% 

% function y = finalreview(x)
% % v = 2*t+1;
% n = length(x);
% 
% if (n==1)
%     return;
% else
%     y = x(n) + 1/x(n-1);
% end
% % 
% 
% function out = finalreview(A,N)
% 
% [m,n] = size(A);
% 
% out = zeros(m*N, n);
% 
% for i = 1:m
%     for j = 1:n
%         out(N*(i-1)+1:i*N,j) = A(i,j)*ones(N,1);
%     end
% end
% % 
% function dS = finalreview(t,S)
% 
% dS = [S(1)*S(2)*S(3); S(1)*(S(2)-S(3)); S(1)*S(2)-S(3)];
% end
% 
% function [idx, mid] = finalreview(M, key)
% left = 1;
% right = numel(M);
% while right > left
%     mid = floor((left+right)/2);
%     if M(mid)<key
%         left = mid+1;
%     else
%         right = mid;
%     end
%     if M(left) == key;
%         idx = left;
%     else
%         idx = [];
%     end
% % end
% 
% function f = finalreview(list)
% p1 = list(1);
% p2 = finalreview(list(2:end));
% 
% if p1>p2
%     f = p1;
% else
%     f = p2;
% % end
% color = 'red';
% n = 0;
% 
% switch color
%     case {'red', 'black', 'blue'}
%         n = n+2;
%         color = 'green';
% %     case {'yellow', 'green', 'white'}
% %         n = n+10;
% %     otherwise
% %         n = 2*n;
% end

% n
% 
% 
% function f = finalreview(n)
% if n ==1
%     f = 0;
% elseif n ==2
%     f = 1;
% else
%     f = finalreview(n-1)+finalreview(n-2);
% end
% function x = finalreview(y)
% if y ==1
%     x = 1;
% elseif y ==2
%     x = 2;
% else
%     x = finalreview(y+1)+finalreview(y);
% end
% end
% function f = finalreview(n)
% f = add(n,1,2);
% end
% function a = add(n, x0, x1)
% if n ==1
%     a = x0;
% else
%     if n==2
%         a = x1;
%     else
%         a = add(n-1,x1,x0+x1);
%     end
% end
% end
% 
% counter = 0;
% i = 1;
% while i < 5
%     counter = counter+1
%     i = i +1;
% end
% 
% % 
% % for i = 1:0.5:3
% %     for j = 10:-2:1
% %         n = i+j;
% %     end
% 
% k = 5;
% i = -2;
% t = -10;
% 
% while (i<=k)
%     i = i +2;
%     k=k-1;
%     t=t+k*i;
% end
% t
% 

% function x = finalreview(y)
% x = y+3;
% end