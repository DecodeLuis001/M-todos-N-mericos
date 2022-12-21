function Trapecio

syms x %Para calcular el error.
g=input('Ingrese la funcion: ');
f=inline(g);
a=input('Ingrese el valor del primer intervalo: ');
b=input('Ingrese el valor del segundo intervalo: ');
%n = numero entero superior a 100 como recomendacion.
n=input('Ingrese la cantidad de trapecios a utilizar: '); %Entre mayor la iteracion, menor el error.
h=(b-a)/n;
S=0;

e=int(g, x, a, b); %Integral de forma precisa.
fprintf('El valor exacto de la funcion es: %4.9f\n', e);

    for i=1:n
        %Se calcula el area del trapecio en cada intervalo.
        S= h/2 * (f(a+(i-1)*h) + f(a+(i)*h)) + S;
    end
    
fprintf('El valor aproximado de la integral es: %4.9f\n', S);

E=abs((e-S)/S)*100; %Aqui se calcula el error.

fprintf('El error calculado es: (%4.9f) en porcenjte.\n', E);

%Para fines de visualizacion.
zoom on;
grid on;
hold on;
x=linspace(a, b, n);
y=eval(g);
bar(x, y)
xlabel('X');
ylabel('Y');
plot(x, y, 'r')