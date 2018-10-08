function sortedArray = mergeSort(doubleArray)

if length(doubleArray) == 1
    sortedArray = doubleArray;
else
    left = [];
    right = [];
    
    for i = 1:1:length(doubleArray)
        if i <= length(doubleArray)/2
            
            left = [left doubleArray(i)];
        else
            
            right = [right doubleArray(i)];
        end
    end
    
    left = mergeSort(left);
    right = mergeSort(right);
    
    sortedArray = combine2Arrays(left, right);
    
end
    function combinedArray = combine2Arrays(arr1, arr2)
        
        combinedArray = [];
        
        if length(arr1) >= length(arr2)
            lenSmaller = length(arr2);
        else
            lenSmaller = length(arr2);
        end
        
        while ~isempty(arr1) && ~isempty(arr2)
            
            if arr1(1) <= arr2(1)
                combinedArray = [combinedArray, arr1(1)];
                arr1 = arr1(2:1:end);
            else
                combinedArray = [combinedArray, arr2(1)];
                arr2 = arr2(2:1:end);
            end
        end
        
        while ~isempty(arr1)
            combinedArray = [combinedArray arr1(1)];
            arr1 = arr1(2:1:end);
        end
        
        while ~isempty(arr2)
            combinedArray = [combinedArray arr2(1)];
            arr2 = arr2(2:1:end);
        end
    end
end