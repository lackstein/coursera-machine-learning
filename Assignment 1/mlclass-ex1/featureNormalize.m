function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

% Returns a column vector containing the mean of each column
mu = mean(X);
% Ditto with the standard deviation
sigma = std(X);
% Transform the mean to a matrix with the same number of rows as X
% and then subtract it from X
diff = X - repmat(mu, size(X,1), 1);
% Take the inverse of the std deviations (so multiplying results in
% diff_i / stdev) and diagonalise it so each column is only divided by
% its own stdev
X_norm = diff * diag(sigma.^-1);



% ============================================================

end
