function [schedule] = addGameStruct(schedule, hometeam, awayteam, homescore, awayscore)

temp = {hometeam, awayteam, homescore, awayscore};
[s1,s2] = temp{3:4};
scores = [s1, s2];
ind = find(scores == max(scores));
winner = temp{ind};

nextRowNum = size(schedule,2);

schedule(nextRowNum+isfield(schedule,'hometeam')).hometeam = hometeam;
schedule(nextRowNum+isfield(schedule,'awayteam')).awayteam = awayteam;
schedule(nextRowNum+isfield(schedule,'homescore')).homescore = homescore;  
schedule(nextRowNum+isfield(schedule,'awayscore')).awayscore  = awayscore; 
schedule(nextRowNum+isfield(schedule,'winner')).winner = winner;