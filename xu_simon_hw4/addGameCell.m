function [schedule] = addGameCell(schedule, hometeam, awayteam, homescore, awayscore)

temp = {hometeam, awayteam, homescore, awayscore};
[s1,s2] = temp{3:4};
scores = [s1, s2];
ind = find(scores == max(scores));
winner = temp{ind};

numRows = size(schedule,1);

%schedule(1,:) = schedule;

schedule(numRows+1,:) = {hometeam, awayteam, homescore, awayscore, winner};

% CalSchedule = {
%'UNC' 'Cal' [30] [35] 'Cal'
%'Cal' 'Weber State' [33] [20] 'Cal'
%'Cal' 'Ole Miss' [27] [16] 'Cal'
%'Cal' 'USC' [20] [30] 'USC' }