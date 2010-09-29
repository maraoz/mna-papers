function [matrix] = damero()
    matrix = ones(400,400);
	for k = 1:1:400
        for l = 1:1:400
            if  l+k%2 == 0
                matrix(k,l) = 0;
            end
        end
    end
end