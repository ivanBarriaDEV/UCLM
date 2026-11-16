A = [2 1; 2 -1; 1 -2]
b = [3;0;4]
A_amp = [A b]
rangA = rank(A)
rangA_amp = rank(A_amp)
% El sistema es incompatible, rango de A != rango de Aampliada
%% no hacer xsol = A\b


