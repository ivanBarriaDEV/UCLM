function [mod, arg] = func_ejer1 (a,b)



suma = conj(a) + conj(b)

compassplot(suma)

mod = abs(suma)
arg = angle(suma)
    
end