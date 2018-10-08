function dataLabels = labelKMeans(meanList, meanLabels, data, distFunc)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LABELKMEANS - labels an unlabeled data set based on the labels from the
% kMeans algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   meanList: the means calculated by the k-means algorithm, should be a
%          k x darray where each of the k rows represent a single mean with
%          d fields
%   meansLabels: the labels of the means. Should be a k x 1 column array
%                of values that correspond to the labels from the dataset.
%   data: data to be labeled based on the k-means. Should be a N x d array 
%         of values with N data points with d fields. Organized so each row
%         is a different data point
%   distFunc: distFunc used to calculate the k-means. Measures the
%           similarity between two vectors and should be a function of two 
%           row vectors of the same length (so something like:
%           distFunc = @(a, b) ...)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% OUTPUT:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   dataLabels: the labels of the data found in data based on the labels of
%               the means, should be a N x 1 column vector
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Pull out the relevant sizes for the problem
N = size(data, 1);
k = size(meanList, 1);

% For each data point go through and label it based on which mean it is
% closest to
dataLabels = zeros(N, 1);
for ii = 1:N
    % Initialize the distance function
    currDist = distFunc(meanList(1, :), data(ii, :));
    dataLabels(ii) = meanLabels(1);
    
    % Check distance to other means
    for jj = 2:k
        newDist = distFunc(meanList(jj, :), data(ii, :));
        if newDist < currDist
            % Update if closer
            dataLabels(ii) = meanLabels(jj);
            currDist = newDist;
        end
    end
end