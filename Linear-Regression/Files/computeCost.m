function J = computeCost(X, y, theta)


m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

hypo = X*theta;

sq_er= (hypo-y).^2;


J = ( (1/(2*m)) * sum(sq_er) );



end
