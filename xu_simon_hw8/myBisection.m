function [root, iter, errorValue] = myBisection(fh, low, high, tol, maxIter)

if fh(low)*fh(high)>0
    return;
else
    
    iter = 0;
    root = (low + high)/2;
    errorValue = abs(fh(root));
       
    while (errorValue > tol) && (iter ~= maxIter)
        
        if fh(low)*fh(root)<0
            high = root;
        else
            low = root;
        end
        
        root = (low + high)/2;
        errorValue = abs(fh(root));
        iter = iter + 1;
    end
end