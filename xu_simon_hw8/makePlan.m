function [profit, rawID] = makePlan(ConsumeInfo, budget, unitProfit)

[optx, lambda, ~,~] = lpsolver(-unitProfit, [ConsumeInfo; -eye(size(ConsumeInfo,2))] , [budget'; 24*30; zeros(size(ConsumeInfo,2),1)]);

profit = optx'*unitProfit;
rawID = find(lambda == max(lambda));