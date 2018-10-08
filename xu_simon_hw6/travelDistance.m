function filled = travelDistance(blank)

filled = blank;
b = false;
filled = helper(filled, 1, b);

    function filled = helper(filled, index, a)
        
        if a == true
            return;
        else
            temp = filled;
            
            for r = 2:(size(filled,1)-1)
                for c = 2:(size(filled,2)-1)
                    
                    if filled(r,c) == index && filled(r-1,c) == 0
                        filled(r-1,c) = index + 1;
                    end
                    if filled(r,c) == index && filled(r+1,c) == 0
                        filled(r+1,c) = index + 1;
                    end
                    if filled(r,c) == index && filled(r,c-1) == 0
                        filled(r,c-1) = index + 1;
                    end
                    if filled(r,c) == index && filled(r,c+1) == 0
                        filled(r,c+1) = index + 1;
                    end
                end
            end
            
            if temp == filled
                a = true;
            else
                a = false;
                filled = helper(filled,index+1,a);
            end
        end
    end
end

