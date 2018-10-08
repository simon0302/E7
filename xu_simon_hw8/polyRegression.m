function [cStar, err, Flag] = polyRegression(xdata, ydata, p)

if size(xdata,1) ~= size(ydata,1)
    
    Flag = -1;
    cStar = [];
    err = [];
    return;
    
elseif p+1>length(ydata) %size ydata = size xdata
    
    Flag = -1;
    cStar = [];
    err = [];
    return;
    
else
    Flag = 1;   
    phi = ones(length(xdata),1);
    
    for col = 1:1:p
        phi = [phi xdata.^col];
    end
    
    cStar = phi\ydata;
    err = sqrt(sum((phi*cStar-ydata).^2));
end