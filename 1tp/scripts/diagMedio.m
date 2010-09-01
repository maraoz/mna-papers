function [rta] = diagMedio(j,h)
    rta = 0;
    if j*h == 20
        rta = 4*(h^2)*0.0605+3;
    elseif j*h < 20
        rta = 4*(h^2)*0.11+4;
        if j == 1
            rta = rta - 2;
        end
    elseif j*h > 20
        rta = (h^2)*0.021+2;
    end
end
