%Uso del metodo de biseccion.
%Alumno: Jose Luis Arroyo Nunez
%U.D.A: Metodos numericos.

f=input('Ingrese la funcion para analizarla: ');
h=inline(f);
a=input('Ingrese el limite inferior: ');
b=input('Ingrese el limite superior: ');
t=input('Indicique la tolerancia a manejar: ');

n=0; %Este es el numero de iteraciones.
c=(b-a)/2; 
fprintf('\t n \t\t a \t\t f(a) \t\t b \t\tf(b) \t c \t\t f(c)\n')

while(c > t)
    c=(a+b)/2;
    fprintf('\t %2d \t %.8f \t %.8f \t %.8f \t %.8f \t %.8f \t %.8f \n', n, a, h(a), b, h(b), c, h(c));
    if(h(a)*h(c)<0)
        b=c;
    else
        a=c;
    end
    c=(b-a)/2; 
    n=n+1;
end

fprintf('\n')
fprintf('Se encontro la raiz con una tolerancia de: %.7f\t \n', t);

