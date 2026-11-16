%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ejemplo de script para obtener
% las soluciones de una ecuaci´on
% mediante el M´
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Definimos la tolerancia del m´etodo
tol = 1e-3; % = 0.0001
% 2. Definimos xp y xn
xp = 3; % valores positivos
xn = -3; % valores negativos
% 3. Definimos un error inicial
error_cometido = inf;
% 4. Iteramos
iteraciones = 1;
disp('Iteraciones | xs ');
while abs(error_cometido)>tol
xs = (xp+xn)/2;
fs = funcion01(xs);
if fs>0
    xp = xs;
else
xn = xs;
end
jrl = [iteraciones xs];
disp(jrl);
iteraciones = iteraciones + 1;
error_cometido = abs(xn - xp);
if iteraciones > 100
error('No se ha encontrado la soluci´on');
end
end

    function [y]=funcion01(x)
    y = x-exp(-x);
    end