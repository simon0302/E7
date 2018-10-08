function [squaresCell] = generateSquares(a,b)

array = a:1:b;
sqArray = array.^2;

arrayLength = b-a+1;

squaresCell(1:arrayLength,1:2) = {0};

for i = 1:1:arrayLength
    squaresCell(i,1) = {['x = ', num2str(array(i))]};
    squaresCell(i,2) = {['x squared = ', num2str(sqArray(i))]};
end