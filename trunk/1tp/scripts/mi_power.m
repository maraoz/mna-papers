function [lambda, V] = mi_power(A, X, epsilon, max_iter,sigmaf)
% Input
% 	A is an nxn matrix
% 	X is the nx1 starting vector
% 	epsilon is the error tolerance
% 	max_iter is the maximum number of iterations
% 
% Output
% 	lambda is the dominant eigenvalue
% 	V is the dominant eigenvector

lambda = 0;
cnt = 0;
err = 1;
state = 1;

while((cnt<=max_iter) & (state == 1))

    X = sigmaf.*X;
	Y = A*X;

	[m j] = max(abs(Y));
	c_k = m;
	dc = abs(lambda-c_k);
	Y = (1/c_k)*Y;
	
	dv = norm(X-Y);
	err = max(dc,dv);
	X = Y;
	lambda = c_k;
	state = 0;
	if (err>epsilon)
		state = 1;
	end
	cnt = cnt + 1;
end
V=X;

