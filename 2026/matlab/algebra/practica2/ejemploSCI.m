C =[ 1 2 3 2 3; -1 3 1 1 1; 2 -1 1 0 -1]
b = [1;0;-1]
C_amp = [C b]
rC= rank (C)
rAmp = rank(C_amp)
%%Infinitas soluciones porque tiene rango 3 y tiene 5 variables

sol = C \ b %Me da solo una solución de las infinitas

%Para calcular 
format rat
rref (C_amp)
format short 

% x = -11/5 +(3/5)*alfa + (14/5)*beta;
% y = -7/5 + (1/5)* alfa + (8/5)* beta
% z = 2 - alfa - 3*beta
% t = alfa
% r = beta
%con alfa y beta reales