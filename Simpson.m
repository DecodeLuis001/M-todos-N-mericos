function Simpson

%CONSIDERE: Variacion Simpson 1/3. 

syms x %Para calcular el error.
g=input('Ingrese la funcion: ', 's');
f=inline(g);
a=input('Ingrese el valor del primer intervalo: ');
b=input('Ingrese el valor del segundo intervalo: ');
k=input('Ingrese la cantidad de veces a aplicar el metodo: '); %Entre mas grande sea la cantidad menor sera el error.
n=2*k;
S=0;
h=(b-a)/n;

e=int(g, x, a, b);
fprintf('El valor exacto de la funcion es: %4.9f\n', e); 

    for i=1:k
        S=S + (h/3) * (f(a)+4*f(a+h) + f(a+2*h));
        a=a+2*h;
    end

fprintf('El valor aproximado de la integral es: %4.9f\n', S);

E=abs((e-S)/S)*100; %Aqui se calcula el error.

fprintf('El error calculado es: (%4.9f) en porcenjte.\n', E);    

end