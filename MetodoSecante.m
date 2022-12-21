%Metodo de la secante.
f=input('Ingrese la funcion: ');
a=input('Ingrese el punto de entrada: ');
b=input('Ingrese el punto de salida: ');
tolerancia=input('Ingrese la tolerancia: ');
ezplot(f)
grid on;
f=inline(f);
fail=100; %contador de error absoluto.
n=0; %Numero de iteraciones.
fprintf('n \t x_1 \t\t x_2 \t\t raiz \t\t error \n');

while(fail>tolerancia)
    %Para mas facilidad a la hora de que se ejecute la orden del programa.
    sup=(f(b)*(a-b));
    inf=(f(a)-f(b));
    
    xn= b - ( sup / inf ); %Formula con abreviaciones para evitar conflictos con los parentesis.
    fail=abs(((xn-b)/xn)*100);
    fprintf(' %d \t %8.8f \t %8.8f \t %8.8f \t %8.8f \n', n, a, b,xn, fail); %Muestra las cantidades registradas.
    a=b;
    b=xn;
    n=n+1;
end
fprintf('Raiz de la funcion: %8.8f ; fue calculada en: %d iteraciones \n', xn, n);