function [raices] = func_ejer2 (complejo, nraiz)
    raices = zeros(1,nraiz)
    r1 = sqrt(complejo^1/nraiz)
    angleR1= angle(r1)
    for i = 1 : nraiz
        raices(i) = (angle(complejo) + 2 * (nraiz + i-1) * pi) / nraiz
        
    end
   compassplot(raices)
end 