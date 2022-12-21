media = input('Introduzca el valor para la media: ');
x70 = input('Introduzca un valor para x: ');
x71 = input('Introduzca un valor para x superior: ');
x72 = input('Introduzca un valor para x inferior: ');
desv = input('Introduzca el valor de la desviacion estandar: ');

x70_0 = linspace(x70-(3*desv),x70+(3*desv));
x70_Intervalos = linspace(x72,x71);
x_Mayor_Intervalo = linspace(x70, x70+(3*desv));
x_Menor_Intervalo = linspace(x70-(3*desv), x70);

%Se caclula el error funcion para cada limite.
integral0 = @(x) exp( -(x.^2/2) );

z0 = abs((x70-media)/desv); %Error funcion de x deseada.

fx70_0 = (1/sqrt(2*pi) ) * integral(integral0 ,0, z0); %Probabilidad del valor deseado.

fx7_0 = (1 / (sqrt(2*pi) * media ) ) * exp( - ((x70_0 - media) ./ (2*desv) ).^2 );

X_Mayor = 0.5 + fx70_0;
X_Menor = 0.5 - fx70_0;

fprintf('El valor de la densidad es: %4.9f\n', X_Mayor);
fprintf('El valor de la densidad es: %4.9f\n', X_Menor);

%Calcular con intervalos la densidad.
integral0_1 = @(x) exp( -(x.^2/2) );
integral0_2 = @(x) exp( -(x.^2/2) );

z1_1 = abs((x72-media)/desv); %Error funcion de x deseada limite inferior.
z2_1 = abs((x71-media)/desv); %Error funcion de x deseada limite superior.

z71_1 = (1/sqrt(2*pi) ) * integral(integral0_1 ,0, z1_1); %Probabilidad del error funcion de limite inferior.
z72_1 = (1/sqrt(2*pi) ) * integral(integral0_2 ,0, z2_1); %Probabilidad del error funcion de limite superior.

fx70_1 = z71_1 + z72_1; %Probabilidad del valor deseado.

fx7_1 = (1 / (sqrt(2*pi) * media ) ) * exp( - ((x70_Intervalos - media) ./ (2*desv) ).^2 );

fprintf('El valor de la densidad es: %4.9f\n', fx70_1);

%Para la elaboracion de la grafica con X mayor.
figure(7)
hold on
plot(x70_0, fx7, ':gs',... 
    'LineWidth',2,... %Grosor de linea.
    'MarkerSize',8) %tama?o de las figuras.
fill(x_Mayor_Intervalo ,fx7_0, 'r')
hold off
title('Densidad probabilistica Normal.', 'FontSize',14)
xlabel('x', 'FontSize',12)
ylabel('fx(x)', 'FontSize',12)
grid on;

%Para la elaboracion de la grafica con X menor.
figure(8)
hold on
plot(x70_0, fx7, ':gs',... 
    'LineWidth',2,... %Grosor de linea.
    'MarkerSize',8) %tama?o de las figuras.
fill(x_Menor_Intervalo ,fx7_0, 'r')
hold off
title('Densidad probabilistica Normal.', 'FontSize',14)
xlabel('x', 'FontSize',12)
ylabel('fx(x)', 'FontSize',12)
grid on;

%Para la elaboracion de la grafica con intervalos.
figure(9)
hold on
plot(x70_Intervalos, fx7, ':gs',... %fill en lugar de plot.
    'LineWidth',2,... %Grosor de linea.
    'MarkerSize',8) %tama?o de las figuras.
fill(x70_Intervalos ,fx7, 'r')
hold off
title('Densidad probabilistica Normal.', 'FontSize',14)
xlabel('x', 'FontSize',12)
ylabel('fx(x)', 'FontSize',12)
grid on;