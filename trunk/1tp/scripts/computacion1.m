function [lambda, phi_k, k] = computacion1(h, tole1, tole2)
	sigmaf = sigmaf_maker(h);
    A = matrix_maker(h)
    phi0 = phi0_maker(h);
    
    k = 1;
    [lambda, phi_k] = mi_power(A, phi0, tole1, 1000 ,4*(h^2)*sigmaf);
end