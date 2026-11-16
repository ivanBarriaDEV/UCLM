function [salida]  =func_coef_binomial(n,k)
    salida = factorial(n)/(factorial(k)*factorial(n-k))
end