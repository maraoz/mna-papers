function [rta] = diagMayor(j,h)
    if (j)*h >= 20
       rta = -1;
    else
       rta = -2;
    end
end
