function slope = regression(myalpha, myt)

temp = -polyfit(myt, log(myalpha), 1);
slope = log(2)/temp(1);