function RungeKutta

%disp('El maximo orden de este codigo es k4.')

f=input('Ingrese la ecuacion diferencial: ', 's');
x0=input('Ingrese el primer punto x_0: ');
x1=input('Ingrese el segundo punto x_1: ');
y0=input('Ingrese la condicion inicial y(x0): ');
n=input('Ingrese el numero de iteraciones (n): '); %Entre mayor sea el numero, la aproximacion es mas exacta.
h=(x1-x0)/n;
xs=x0:h:x1; %Intervalo asignado, aqui se calcula el valor aproximado.
fprintf('Iteracion \t x0 \t\t y(%4.4f)', x1);

    for i=1:n
        it=i-1;
        x0=xs(i);
        x=x0;
        y=y0;
        k1=h*eval(f);
        x=x0+h/2;
        y=y0+k1/2;
        k2=h*eval(f);
        x=x0+h/2;
        y=y0+k2/2;
        k3=h*eval(f);
        x=x0+h;
        y=y0+k3;
        k4=h*eval(f);
        y0=y0+(k1+2*k2+2*k3+k4)/6;
        fprintf('\n %4d \t\t %8.8f \t %8.8f\n',it,x0,y0);
    end
    
fprintf('\n Aproximacion estimada en y(%4.4f) = %8.6f\n',x1, y0);

%Consideraciones del grafico.
xI=x0:0.1:x1;

%Estetica de la grafica.
zoom on;
grid on;
hold on;
xlabel('X');
ylabel('Y');
plot(xI, y0, '*');

end 