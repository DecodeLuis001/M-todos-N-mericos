%Metodo de Newton Rapshon: Metodo de convergencia cuadratica.
%clear, clc
pf=input('Ingrese la funcion a evaluar: ');

syms x %Se hace la derivacion con respecto a x.
f=inline(pf);
d=diff(pf, x);
df=inline(d); %La derivada se toma en cuenta como una cadena de caracteres.
tolerancia=input('Ingrese el valor de la tolerancia: ');
error=75; %Se necesita un error grande para que se inicie el ciclo.
x=input('Ingrese el valor inicial: ');
ezplot(f)
grid on;
n=0;
fprintf('\t n \t x_i \t\t error \n');

while(error>tolerancia)
    %x es el valor mas aproximado a la raiz.
    fprintf('\t %i \t %.7f \t %.7f \n', n, x, error); %Muestra los valores.
    n=n+1;
    x=x-f(x)/df(x);
    if(df(x)==0)
        fprintf('La funcion se indetermina al hacer la derivada.');
    end
    error=abs(f(x)); %Aqui se calcula el error.
end
fprintf('\n');
