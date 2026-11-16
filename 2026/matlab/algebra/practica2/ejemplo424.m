% Estudiar el rango utilizando determinantes en matrices
% dependiente de parametros
syms a
A = [1 2 3; -1 3 1; a 5 4]
%el rango no vale con matrices con parametros
rango = rank(A)
% escalonar no vale con matrices con parametros
rref(A)
%1
% debemos calcular el determinante
determinante= det (A) 

%2
sol = solve(determinante == 0,a)
% El unico valor que anula el determinante es a = 0
% si a es distinto de 0; ==> rank (A)=3;

%3
A_sol = subs(A,a,sol)
A_solnum= double (subs(A,a,sol))
rank (A_solnum)
%si a = 0 ==> rango(A) = 2;


