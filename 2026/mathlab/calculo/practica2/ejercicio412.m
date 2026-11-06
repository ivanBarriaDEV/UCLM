
syms x
f = 1/x
g = sin(x)
hold on
fplot(f, 'g', LineWidth=4)
fplot(g, 'r' ,LineWidth=8)
plot ([pi/2 pi/2],[10 -10], 'b', LineWidth=2 )
plot ([10 -10],[pi/2 pi/2], 'b', LineWidth=2 )

plot(pi/2,1,'*', LineWidth=10)
hold off
