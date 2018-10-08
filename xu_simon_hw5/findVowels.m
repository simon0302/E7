function [vowels] = findVowels(charCell)


vowels = cell(size(charCell,1), size(charCell,2));
vow = ['a', 'e', 'i', 'o', 'u'];

for i = 1:1:size(charCell,1)*size(charCell,2)
    
    vowelStr = '';
    indices = [];
    word = lower(charCell{i});
    
    for j = 1:1:length(word)
       
        for k = 1:1:length(vow)
            
            if word(j) == vow(k)
                
                vowelStr = [vowelStr word(j)];
                
            end
   
        end
     
    end
    
       vowels{i} = vowelStr;
end
