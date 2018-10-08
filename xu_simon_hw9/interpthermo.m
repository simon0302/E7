function T2 = interpthermo(T1, newT)

for i = 1:1:length(newT)
    T1 = interpthermo2(T1, newT(i));
end

T2 = T1;
end


function T2 = interpthermo2(T1, newT)

temps = T1{:,1};
intEnergies = T1{:,2};

for i = 1:1:length(temps)-1
    
    if newT >= temps(i) && newT <= temps(i+1)
        
        nIntEnergy = interp1(temps, intEnergies, newT);
        temps = [temps(1:1:i); newT; temps(i+1:1:end)];
        intEnergies = [intEnergies(1:1:i); nIntEnergy; intEnergies(i+1:1:end)];
        break;
        
    end
end

T2 = table(temps, intEnergies);
end