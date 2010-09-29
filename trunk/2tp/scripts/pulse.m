function [matrix] = pulse()
    matrix = ones(400,400);
	for k = 1:1:400
        for l = 1:1:400
            if k >= 0 && k <= 400 && l >= 190 && l >=210
                matrix(k,l) = 0;
            elseif l >= 0 && l <= 400 && k >= 190 && k >=210
                matrix(k,l) = 0;
            end
        end
    end
end