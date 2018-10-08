function [filled] = travelDistance(blank)


maxDist = size(blank,1) + size(blank,2);

for a = 1:1:maxDist
    for r = 2:size(blank,1)-1
        for c = 2:size(blank,2)
            
            if blank(r,c) == 0
               
                temp = [blank(r+1, c) blank(r-1,c) blank(r,c-1) blank(r,c+1)];
                
                if ismember(a, temp)
                    blank(r,c) = a + 1;
                end
            end
            
        end
    end
end

filled = blank;

% numOnes = 0;
% 
% 
% indexR = [];
% indexC = [];
% 
% index1R = [];
% index1C = [];
% 
% 
% %finds the number of 1's
% for r = 2:size(blank,1)-1
%     for c = 2:size(blank,2)-1
%         
%         if blank(r,c) == 1
%             numOnes = numOnes+1;
%             indexR = [indexR r];
%             indexC = [indexC c];
%         end
%               
%         if filled(r,c) == 0 && filled(r+1,c) == 1 || filled(r-1,c) == 1 || filled(r,c+1) == 1 || filled(r,c-1) == 1 
%             if filled(r,c) ~= -1
%                 filled(r,c) = filled(r,c) + 2;
%                 index1R = [index1R r];
%                 index1C = [index1C c];
%             end
%         end
%         
% for i = 1:1:length(index1R)
%     for j = 1:1:length(index1C)
%         
%         try
%         if filled(i+1,j) == -1 && filled(i-1,j) == -1 && filled(i,j+1) == -1 && filled(i,j-1) == -1
%            
%                 filled(i,j) = 3;
%             
%         end
%         catch
%         end
%         
%         
%         
%     end
% end
%        
% 
% 
%     end
% end




% index1R = [];
% index1C = [];
% 
% for i = 1:1:length(indexR)
%     for j = 1:1:length(indexC)
%         
%         try
%             if filled(indexR(i), indexC(j)) == 0 && filled(indexR(i)+1,indexC(j)) == 2 || filled(indexR(i)-1,indexC(j)) == 2 || filled(indexR(i),indexC(j)+1) == 2 || filled(indexR(i),indexC(j)-1) == 2
%             filled(r,c) = 3;
%             index1R = [index1R r];
%             index1C = [index1C c];
%             end
%         catch 
%             filled(r,c) = -1;
%             
%         end
%         
%         
%     end
% end
% 
% 
% for i = 1:1:length(index1R)
%     for j = 1:1:length(index1C)
%         
%         try
%             if filled(index1R(i), index1C(j)) == 0 && filled(index1R(i)+1,index1C(j)) == 3 || filled(index1R(i)-1,index1C(j)) == 3 || filled(index1R(i),index1C(j)+1) == 3 || filled(index1R(i),index1C(j)-1) == 3
%             filled(r,c) = 4;
%             
%             end
%         catch 
%             filled(r,c) = -1;
%             
%         end
%         
%         
%     end
% end

% for i = 2:size(blank,1)-1
%     for j = 2:size(blank,2)-1
%         if blank(i,j) ~= 0
%             continue;
%         else
%             dist = zeros(1,numOnes);
%             c = 0;
%             
%             for k = 2-i:size(blank,1)-i
%                 for p = 2-j:size(blank,2)-j
%                     
%                     if blank(i+k,j+p) == -1
%                         continue;
%                     elseif blank(i+k,j+p) == 1
%                         c=c+1;
%                         dist(c) = 1+abs(k)+abs(p);
%                     end
%                 end
%             end
%             
%             filled(i,j) = min(dist);
%             filled = goBack(filled, blank);
%             
%             
%         end
%     end
% end
% %filled(2,5:6) = 0;
% %filled(3,5) = 0;
% 
% function [filled] = goBack(filled, blank)
% 
% dank1 = filled;
% dank2 = blank;
% 
% for i = 2:size(blank,1)-1
%     for j = 2:size(blank,2)-1
%         
%         if blank(i,j) == 0
%             
%             for left = -1:-1:1-j
%                  if blank(i,j+left) == 1
%                      west = 0;
%                      break;
%                  elseif blank(i,j+left) == -1
%                      west = 1;
%                      break;
%                  end
%             end
%             
%             for up = 1:abs(1-i)
%                  if blank(i-up,j) == 1
%                      north = 0;
%                      break;
%                  elseif blank(i-up,j) == -1
%                      north = 1;
%                      break;
%                  end
%             end
%             
%             for right = 1:size(blank,2)-j
%                  if blank(i,j+right) == 1
%                      east = 0;
%                      break;
%                  elseif blank(i,j+right) == -1
%                      east = 1;
%                      break;
%                  end
%             end
%             
%             for down = -1:-1:i-size(blank,1)
%                  if blank(i-down,j) == 1
%                      south = 0;
%                      break;
%                  elseif blank(i-down,j) == -1
%                      south = 1;
%                      break;
%                  end
%             end
%            
%         end
%         
%         if west == 1 && north == 1 && east == 1 && south == 1
%             filled(i,j) = dank1(i,j);
%         end
%         
%      end
% end         