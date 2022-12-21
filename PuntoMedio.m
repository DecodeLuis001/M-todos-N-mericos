function PuntoMedio

syms x %Para calcular el error.
g=input('Ingrese la funcion: ', 's');
f=inline(g);
a=input('Ingrese el valor del primer intervalo: ');
b=input('Ingrese el valor del segundo intervalo: ');
%n = numero entero superior a 100 como recomendacion.
n=input('Ingrese la cantidad de puntos medios a utilizar: '); %Entre mayor la iteracion, menor el error.
h=(b-a)/n;
S=0;

e=int(g, x, a, b);
fprintf('El valor exacto de la funcion es: %4.9f\n', e); 

    for i=1:n
        S=S+(h)*(f((a+(a+h))/2));
        a=a+h;
    end
    
fprintf('El valor aproximado de la integral es: %4.9f\n', S);

E=abs((e-S)/S)*100; %Aqui se calcula el error.

fprintf('El error calculado es: (%4.9f) en porcenjte.\n', E);

end