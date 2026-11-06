syms x
f = 1/x + log(x);
d_f =diff(f)
candidatos = solve(d_f==0);

d_f2 = diff(f,2)
valor = subs(d_f2,x,candidatos)

valorMinimo = subs (f,x,candidatos)

figure
fplot(f)
hold on
plot(candidatos,valorMinimo,'r')

hold off