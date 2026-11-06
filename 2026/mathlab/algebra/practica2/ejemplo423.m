syms s t
A = [1 s 3 4; 1 2 3 t]
rank ( A)
rowReducedA = rref(A)
% En matrices dependientes de parametros no puedo estudiar el rango
% con el comando rank ni con el comando rref
