media = input('Introduzca el valor para la media: ');
desv = input('Introduzca el valor de la desviacion estandar: ');

%Para x menor que X
x70 = input('Introduzca un valor para x: ');
x70_0 = linspace(x70-(3*desv),x70+(3*desv));
p1 = normcdf(x70,media,desv);
p_menor = 0.5 - p1;
fprintf('El valor de la densidad es es: %4.9f\n', p_menor);

%Grafica acumulada para x<=X
Fx7_0 = normcdf(x70_0, media, desv);
figure(1)
hold on
plot(x70_0, Fx7_0, '-.m',...
    'LineWidth',2,... %Grosor de linea
    'MarkerSize',9) %tama?o de las figuras.
hold off
title('Distribucion acumulativa normal.', 'FontSize',14)
xlabel('x', 'FontSize',12)
ylabel('Fx(x)', 'FontSize',12)
grid on;
%---------------------------------------------------------

%Para x mayor que X
x70_A = input('Introduzca un valor para x: ');
x70_0_A = linspace(x70_A-(3*desv),x70_A+(3*desv));
p2 = normcdf(x70_A,media,desv);
p_mayor = p2 + 0.5;
fprintf('El valor de la densidad es es: %4.9f\n', p_mayor);

%Grafica acumulada x>=X
Fx7_1 = normcdf(x70_0_A, media, desv);
figure(2)
hold on
plot(x70_0_A, Fx7_1, '-.m',...
    'LineWidth',2,... %Grosor de linea
    'MarkerSize',9) %tama?o de las figuras.
hold off
title('Distribucion acumulativa normal.', 'FontSize',14)
xlabel('x', 'FontSize',12)
ylabel('Fx(x)', 'FontSize',12)
grid on;

%-----------------------------------------------------------

%Para intervalos
x71 = input('Introduzca un valor para x superior: ');
x72 = input('Introduzca un valor para x inferior: ');
x70_Intervalos = linspace(x72,x71);
p3 = normcdf(x72,media,desv); %Intervalo superior
p4 = normcdf(x71,media,desv); %Intervalo inferior
pt = abs(p4 - p3);
fprintf('El valor de la densidad es es: %4.9f\n', pt);

%Grafica acumulada en intervalos
Fx7_2 = normcdf(x70_Intervalos, media, desv);
figure(3)
hold on
plot(x70_Intervalos, Fx7_2, '-.m',...
    'LineWidth',2,... %Grosor de linea
    'MarkerSize',9) %tama?o de las figuras.
hold off
title('Distribucion acumulativa normal.', 'FontSize',14)
xlabel('x', 'FontSize',12)
ylabel('Fx(x)', 'FontSize',12)
grid on;