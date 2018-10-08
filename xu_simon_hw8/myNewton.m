function [root, rootHistory, iter, errorValue] = myNewton(fh, dfh, initialGuess, tol, maxIter)

rootHistory  = [];
iter = 0;
divVal = 10000000;
x = initialGuess;

while (iter < maxIter)
    
    xNext = x-fh(x)/dfh(x);
    
    if abs(fh(xNext)) < tol
        return;
    end
    
    if abs(fh(xNext)) > tol
        root = xNext;
        rootHistory = [rootHistory; root];
        errorValue = abs(fh(root));
    end
    
    if abs(fh(x)) > divVal
        disp('Solution diverges');
        break;
    end
    
    iter = iter + 1;
    x = xNext;
end
    