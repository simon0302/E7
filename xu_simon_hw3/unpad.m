function w = unpad(w)
firstNonZeroIndex = find(w,1);
w = w(firstNonZeroIndex:1:end);
