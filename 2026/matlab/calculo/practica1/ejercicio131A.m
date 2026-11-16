%%Biseccion
tol = 1e-4;
xp = 3;
xn = -3;
error_cometido = inf;

iteraciones = 1;
disp('iteraciones | xs');

while (abs(error_cometido)>tol)
    xs = (xp+xn)/2;
    fs = funcionA(xs);
    if fs > 0
        xp = xs;
    else
        xn = xs;
    end
    jrl = [iteraciones xs];
    disp(jrl)
    iteraciones = iteraciones+1;
    error_cometido = abs(xn-xp);
    if iteraciones > 100
        error('No se ha encontardo la solucion')
    end
end

%%Newton

% Define la tolerancia del error; el algoritmo se detendrá cuando el error sea menor que 0.0001
tol = 1e-4;

% Valor inicial (x0) desde donde comenzará la aproximación del método de Newton
x = 1;

% Inicializa el error en infinito para garantizar que el bucle while se ejecute al menos una vez
error_cometido = inf;

% Inicializa el contador de iteraciones en 1
iteraciones = 1;

% Imprime en la consola el encabezado de las columnas que se van a mostrar
disp('Iteraciones | xs')

% Inicia el bucle que continuará iterando mientras el error absoluto supere la tolerancia
while abs(error_cometido) > tol

    % Aplica la fórmula de Newton-Raphson para calcular la siguiente aproximación (xs = x_{k+1})
    % Requiere que existan las funciones 'funcion01' (f(x)) y 'dfuncion01' (f'(x))
    xs = x - funcion01(x) / dfuncion01(x);

    % Crea un vector fila que contiene el número de iteración actual y la aproximación actual 'x'
    jrl = [iteraciones x];

    % Muestra en consola los valores del vector 'jrl'
    disp(jrl)

    % Incrementa en 1 el contador de iteraciones
    iteraciones = iteraciones + 1;

    % Calcula el error cometido como la diferencia absoluta entre el nuevo valor (xs) y el actual (x)
    error_cometido = abs(xs - x);

    % Condición de seguridad: si supera 100 iteraciones sin converger, interrumpe la ejecución
    if iteraciones > 100
        error('No se ha encontrado la solución');
    end
    
    % Actualiza 'x' con el nuevo valor aproximado 'xs' para la siguiente iteración
    x = xs;
end


function [dy] = funcionA(x)
dy = x^2 - exp(x);
end




