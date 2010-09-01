function [matrix] = matrix_maker(h)
    inter = 30/h;
    matrix = zeros(inter,inter);
	for i = h:h:30
        for j = h:h:30
            if i == j
                matrix(floor(i/h),floor(j/h)) = diagMedio(floor(j/h),h);
            elseif i == j-h
                matrix(floor(i/h),floor(j/h)) = diagMenor(floor(j/h),h);
            elseif i == j+h
                matrix(floor(i/h),floor(j/h)) = diagMayor(floor(j/h),h);
            end
        end    
    end
end

	