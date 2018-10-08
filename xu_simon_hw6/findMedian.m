function val = findMedian(inputArray)

val = findTerm(inputArray, length(inputArray)/2);

    function val = findTerm(inputArray, k)
        
        if length(inputArray) <= 1
            val = inputArray(1);
        else
            
            x = inputArray(randi(length(inputArray)));
            arr1=[];
            arr2=[];
            arr3=[];
            
            for i = 1:length(inputArray)
                
                if inputArray(i) < x
                    arr1 = [arr1, inputArray(i)];
                elseif inputArray(i) == x
                    arr2 = [arr2, inputArray(i)];
                else
                    arr3 = [arr3, inputArray(i)];
                end
            end
            
            len1 = length(arr1);
            len2 = length(arr2);
            
            if len1 > k
                val = findTerm(arr1, k);
            elseif len1+len2 > k
                val = findTerm(arr2, k-len1);
            else
                val = findTerm(arr3, k-len1-len2);
            end
            
        end
    end
end