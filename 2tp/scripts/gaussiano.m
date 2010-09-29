function [matrix] = gaussiano()
    matrix = ones(400,400);
	for k = 1:1:400
        for l = 1:1:400
            matrix(k,l) = exp(-0.1*((k^2)+(l^2)));
        end
    end
end