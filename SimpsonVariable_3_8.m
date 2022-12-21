function Simpson2

%CONSIDERE: Variacion Simpson 3/8. 

syms x %Para calcular el error.
g=input('Ingrese la funcion: ', 's');
f=inline(g);
a=input('Ingrese el valor del primer intervalo: ');
b=input('Ingrese el valor del segundo intervalo: ');
k=input('Ingrese la cantidad de veces a aplicar el metodo: '); %Entre mas grande sea la cantidad menor sera el error.
n=3*k;
h=(b-a)/n;
A=0;

e=int(g, x, a, b);
fprintf('El valor exacto de la funcion es: %4.9f\n', e); 

    for i=1:k
        A=A+(3*h/8) * (f(a) + 3*f(a+h) + 3*f(a+2*h) + f(a+3*h));
        a=a+3*h;
    end

fprintf('El valor aproximado de la integral es: %4.9f\n', A);

E=abs((e-A)/A)*100; %Aqui se calcula el error.

fprintf('El error calculado es: (%4.9f) en porcenjte.\n', E);

end