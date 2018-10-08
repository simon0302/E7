function [doy] = calcDayOfYear(day, month, year)

isLeap = false;

if ((mod(year,4) == 0) && (mod(year,100) ~=0)) || (mod(year, 400) == 0)
    isLeap = true;
end

numDays = 0;

switch month
    case 1 %january
        doy = day;
        return;
        
    case 2 %feburary
        numDays = 31;
        doy = day + numDays;
        return;
        
    case 3 %march
        if (isLeap == false)
            numDays = 31+28;
        else
            numDays = 31+29;
        end
        
        doy = day + numDays;
        
    case 4 %april
        
        if (isLeap == false)
            numDays = 31+31+28;
        else
            numDays = 31+31+29;
        end
        
        doy = day + numDays;
        return;
        
    case 5 %may
        
        if (isLeap == false)
            numDays = 30+31+31+28;
        else
            numDays = 30+31+31+29;
        end
        
        doy = day + numDays;
        return;
        
    case 6 %june
        if (isLeap == false)
            numDays = 31+30+31+31+28;
        else
            numDays = 31+30+31+31+29;
        end
        
        doy = day + numDays;
        return;
        
    case 7 %july
        
        if (isLeap == false)
            numDays = 30+31+30+31+31+28;
        else
            numDays = 30+31+30+31+31+29;
        end
        
        doy = day + numDays;
        return;
        
    case 8 %august
        
        if (isLeap == false)
            numDays = 31+30+31+30+31+31+28;
        else
            numDays = 31+30+31+30+31+31+29;
        end
        
        doy = day + numDays;
        return;
        
    case 9 %september
        
        if (isLeap == false)
            numDays = 31+31+30+31+30+31+31+28;
        else
            numDays = 31+31+30+31+30+31+31+29;
        end
        
        doy = day + numDays;
        return;
        
    case 10 %october
        
        if (isLeap == false)
            numDays = 30+31+31+30+31+30+31+31+28;
        else
            numDays = 30+31+31+30+31+30+31+31+29;
        end
        
        doy = day + numDays;
        return;
        
    case 11 %november
        
        if (isLeap == false)
            numDays = 31+30+31+31+30+31+30+31+31+28;
        else
            numDays = 31+30+31+31+30+31+30+31+31+29;
        end
        
        doy = day + numDays;
        return;
            
    case 12 %december
        
        if (isLeap == false)
            numDays = 30+31+30+31+31+30+31+30+31+31+28;
        else
            numDays = 30+31+30+31+31+30+31+30+31+31+29;
        end
        
        doy = day + numDays;
        return;
        
    otherwise
        disp("Sorry, month not known, please enter valid month between 1-12");
        return;
end
    
