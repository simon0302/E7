function array2 = charReversal(array1)

counter = length(array1);

if counter == 1
    array2 = array1(1:1:1);
else    
    temp = array1(counter:1:counter);
    array2 = [temp, charReversal(array1(1:1:counter-1))];    
end