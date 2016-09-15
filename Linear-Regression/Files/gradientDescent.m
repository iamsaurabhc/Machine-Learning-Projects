function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples

J_history = zeros(num_iters, 1);
range = max(X(:,2)) - min(X(:,2));

for iter = 1:num_iters

a = theta;
h = X * theta;
error_v = (h - y) ;
change = X' * error_v;
lambda =   (alpha/m) * change ;

% Updating the Value of Theta Simultaneously

theta = a - lambda


% Save the cost J in every iteration    

J_history(iter) = computeCost(X, y, theta) ;

end
