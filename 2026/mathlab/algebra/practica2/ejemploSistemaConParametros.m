syms  a
A = [2 1 -1; a -1 -1 ; 3 0 -2*a]

b = [0; a-1; a-1]

a_amp = [A b]

detA= det(A)

sol = solve(detA == 0, a)

detfactorizado=factor(detA)


%si a distinto de 1 o a distinto de -3 ==> SCD

% si a = -3
A_sol1 = double(subs(A,sol(1)))
A_ampSol1=double(subs(A_amp,sol(1)))
rAsol1= rank (A_sol1)
rAmpSol1=rank(A_ampSol1)

%si a = -3; rank (A)=2, distinto de rank (Aamp) = 3 ==> Si
%caso a = 1

A_sol2 = double(subs(A,sol(2)))
A_ampSol2=double(subs(A_amp,sol(2)))
rAsol2= rank (A_sol2)
rAmpSol2=rank(A_ampSol2)
%si a = 1, rank(A) = 2 = rank(A_amp) ==> SCI
format rat
escalonada = rref(A_ampSol2)
% x = (2/3)*alfa
% y = (-1/3)*alfa
% z = alfa

xsol = A\b

