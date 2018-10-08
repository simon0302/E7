function [meanList, clusterList] = kMeansClustering(data, k, distFunc, tol, maxIter)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%KMEANSCLUSTERING - Clusters a data set based on the k-means algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   data: the dataset on which the k-means algorithm will be run. Should be
%         a N x d array where each row is a data point with d fields.
%   k: the number of means to use in the clustering algorithm
%   distFunc: distance function that is used to evaluate the similarity
%             between two data arrays. Should be a function of two 1 x d 
%             arrays, calculating the distance between them.
%   tol: tolerance for what is considered at static mean 
%   maxIter: the maximum iterations to be used in the k-means algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% OUTPUTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   meanList: the list of k-means, should be k x d, with each row
%             corresponding to a different mean
%   clusterList:  the cluster each data point belongs to based on the list 
%             of k-means. Should be a N x 1 list of number between 1-k with
%             each row corresponding to the label of the data point found
%             at the same row in the data array.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Pick k random points from data as the means, since the data is shuffled,
% we pick the first k
%meanList = kMeansPPInit(data, k, distFunc);
meanList = data(1:k, :);

% Initialize currDist to hold the distance of the current data point to
% each mean
currDist = zeros(1, k);
% Cluster based on these points
clusterList = zeros(size(data, 1), 1);
for ii = 1:size(data, 1)
    % Calculate the distance from the data to the means for each mean
    for jj = 1:k
        currDist(jj) = distFunc(data(ii, :), meanList(jj, :));
    end
    
    % Cluster based on which one it is closest too
    [~, clusterList(ii)] = min(currDist);
end

% Initialize newMeans
newMeans = meanList;

% Iterate
iter = 1;
done = false;
while ~done && iter < maxIter
    iter = iter + 1;
    
    % Update the means based on the clustering
    for jj = 1:k
        group = data(clusterList == jj, :);
        newMeans(jj, :) = sum(group, 1) / size(group, 1);
    end
    
    % Check if new means are near old means
    updateDist = zeros(1, k);
    for ii = 1:k
        updateDist(ii) = norm(meanList(ii, :) - newMeans(ii, :));
    end
    if max(updateDist) < tol
        done = true;
    else
        % If not update set the means to the new means and update the
        % clustering
        meanList = newMeans;
        for ii = 1:size(data, 1)
            % Calculate the distance from the data to the means for each mean
            for jj = 1:k
                currDist(jj) = distFunc(data(ii, :), meanList(jj, :));
            end
            
            % Cluster based on which one it is closest too
            [~, clusterList(ii)] = min(currDist);
        end
    end
end