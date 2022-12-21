%Metodo de Newton-Rapson de segundo orden.
clear, clc
pf=input('Ingrese la funcion a evaluar: ');

syms x %Se hace la derivacion con respecto a x.
f=inline(pf);
d=diff(pf, x);
df=inline(d); %La derivada se toma en cuenta como una cadena de caracteres.
tolerancia=input('Ingrese el valor de la tolerancia: ');
error=75; %Se necesita un error grande para que se inicie el ciclo.
x=input('Ingrese el valor inicial: ');
n=0;
fprintf('\t n \t x_i \t\t error \n');

while(error>tolerancia)
    %x es el valor mas aproximado a la raiz.
    fprintf('\t %i \t %.7f \t %f \n', n, x, error); %Muestra los valores.
    n=n+1;
    SegDiv= -df(x)/f(x); + mrdivide(diff(x), 2*df(x)); %Evalua la condicion de una segunda derivada.
    if(f(x)==0 || df(x)==0)
        fprintf('La funcion se indetermina al hacer la derivada.');
    end
    x=x + 1/SegDiv;
    error=abs(f(x)); %Aqui se calcula el error.
end

%% Encontrar las raices de un polinomio.

roots([4, -5, 8, 10, -9, 18])