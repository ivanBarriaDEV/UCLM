title("hola");
subplot (2,3,1)
syms x

f = log(x)
fplot(f)

subplot(2,3,2)
g = x-3 +1/x
fplot(g)

figure
h = x^2
fplot(h)
