function [lambda, x_k, k] = my_power_inv(A, x0, tole1, tole2)
    
    % Datos
    %   -A es una matriz de orden n x n
    %   -x0 es el vector inicial de orden n x 1
    %   -tole1 es la tolerancia del autovalor
    %   -tole2 es la tolerancia del autovector
    % Resultados
    %   -lambda es el autovalor que esta mas cerca de alpha
    %   -x_k es el autovector asociado a lambda
    
    [L , U] = lu(A);
    lambda = 0;
	x_k = x0;
	k = 0;
    y_k = x0;
    state = 1;
	while ((state == 1))
        % backup variables
        y_kk = y_k;
		x_kk = x_k;
        
        % compute new variables
        % Resolucion del sistema Ay_k = x_k
        z = linsolve(L,x_kk);
        y_k = linsolve(U,z);
              
        lambda = norm(y_k,inf);
		x_k = y_k/lambda;
        k=k+1
        if((lambda - norm(y_kk,inf)) < tole1 && norm(x_k - x_kk,inf) < tole2)
           state = 0; 
        end
	end
	