%Para poder usar las variables y poder derivar.
syms x y

%Ingreso de datos
f=input('Ingrese la ecuacion diferencial: ', 's');
x=input('Ingrese el primer punto x_0: ');
xf=input('Ingrese el segundo punto x_1: ');
y=input('Ingrese la condicion inicial y(x0): ');
h=input('Ingerese la cantidad de error: '); %Entre mas peque?o mas aproximado al resultado. 
%Se recomienda valores de 0.001 o inferiores.

n=(xf-x)/h;
fprintf('i \t x \t y ');

for i=1:n+1
    y1=eval(f);
    hy1=h*y1;
    fprintf('\n %d \t %4.4f \t %8.8f',i, x, y);
    fprintf('\n');
    y=y+hy1;
    x=x+h;
end

fprintf('\n Aproximacion estimada en y(%4.4f) = %8.8f\n',x, y);


