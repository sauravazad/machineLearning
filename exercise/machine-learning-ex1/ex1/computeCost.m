function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
% h theta = theta1+ theta1 * xi = thetaT * X
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
H = theta' .* X ; % size = m * size(theta')
H = H(:,1) + H(:,2); % hypothesis vector is ready dynamically calculate n* 1 vector of ones()
diff = sum((H - y) .^ 2); %  sum square of diff calculated
J = diff / (2 * m);

% =========================================================================

end
