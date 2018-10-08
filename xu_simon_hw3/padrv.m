function v = padrv(v,n)
sizeNMinusV = size(v);
numZeros = n - sizeNMinusV(2);
v = [zeros(1,numZeros) v];