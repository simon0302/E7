function [cStar, err, Flag] = myRegression(xdata, ydata)

if size(xdata,1) ~= size(ydata,1) || ~(size(xdata,1)>=size(xdata,2))
    
    cStar = [];
    err = [];
    Flag = -1;
    
else
    
    cStar = xdata\ydata;
    err = sqrt(sum((xdata*cStar-ydata).^2));
    Flag = 1;
     
end