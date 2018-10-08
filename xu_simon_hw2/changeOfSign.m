function [n] = changeOfSign(f)
    % CHANGEOFSIGN - finds the location of the first integer input, n, of a
    % function of one variable, f, so that f(n) < 0
    %   f - a function handle input of only one variable
    %   n - the integer that corresponds to the first negative output,
    % Hint: if you have a monotonic decreasing function with only one root,
    % what is this point? What does it mean in the context of this problem?
    
    n = 0;
    while(f(n) > 0)
        n = n + 1;
    end
end