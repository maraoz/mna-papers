function [lambda, phi_k, k] = my_power(A, phi0, sigmaf, tole1, tole2)
	k = 0;
    y_k = phi0.*sigmaf;
    x_k = phi0.*sigmaf;
    phi_k = phi0;
    state = 1;
	while ((state == 1))
		% backup variables
		y_kk = y_k;
		x_kk = x_k;
        
        x_k = phi_k.*sigmaf;

		% compute new variables
		y_k = A*x_k;
		phi_k = y_k/norm(y_k,inf);
        x_k = phi_k;
        lambda = norm(y_k,inf);
        k=k+1
        if((norm(y_k,inf) - norm(y_kk,inf)) < tole1 && norm(x_k - x_kk,inf) < tole2)
           state = 0; 
        end
	end
	