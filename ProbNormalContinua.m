media = input('Introduzca el valor para la media: ');
x70 = input('Introduzca un valor para x: ');
desv = input('Introduzca el valor de la desviacion estandar: ');

x70_0_A = linspace(x70-(3*desv),x70+(3*desv));
x_Mayor_Intervalo = linspace(x70, x70+(3*desv));

integral0_A = @(x) exp( -(x.^2/2) );

z0_A = abs((x70-media)/desv); %Error funcion de x deseada.

fx70_0_A = (1/sqrt(2*pi) ) * integral(integral0_A ,0, z0_A); %Probabilidad del valor deseado.

fx7_0_A = (1 / (sqrt(2*pi) * media ) ) * exp( - ((x70_0_A - media) ./ (2*desv) ).^2 );

%Mostrar el valor de x>=X
e = fx70_0_A;
%set(handles.text46, 'String', e);

%Mostrar el valor de la densidad.
X_Mayor = 0.5 + fx70_0_A;
f = X_Mayor;
fprintf('El valor de la distribucion es: %4.9f\n', f);
%set(handles.text40, 'String', f);

%Grafica
%axes(handles.axes1)
hold on
plot(x70_0_A, fx7_0_A, ':gs',... 
    'LineWidth',2,... %Grosor de linea.
    'MarkerSize',8) %tama?o de las figuras.
fill(x_Mayor_Intervalo ,fx7_0_A, 'r')
hold off
title('Densidad probabilistica Normal.', 'FontSize',14)
xlabel('x', 'FontSize',12)
ylabel('fx(x)', 'FontSize',12)
grid on;