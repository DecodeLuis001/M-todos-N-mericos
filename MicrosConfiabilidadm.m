x6 = input('Introduzca el valor del tiempo: '); %Considere el tiempo en minutos. 1 dia = 1440
c = 1000000; %Landa tendra el valor por defecto de 10^6

x61 = 0:2500:x6;
                    
fx6 = exp( (-c * x61) ); %Para hacer la grafica.
fx6_1 = exp( (1/-c * x6) ); %Para mostrar un valor al usuaario.

fprintf('El valor de la confiabilidad es: %4.19f\n', fx6_1*100);
                
%Diseno de la grafica.
figure(5)
hold on
plot(x61, fx6, '-r*',...
'LineWidth',2,... %Grosor de linea
'MarkerEdgeColor','k',... %contorno de los circulos.
'MarkerFaceColor',[.49 1 .63],... %Color interno de los circulos.
 'MarkerSize',7) %tama?o de las figuras
hold off
title('Confiabilidad: Sensor de temperatura / Reloj desplegable.', 'FontSize',14)
xlabel('Time', 'FontSize',12)
ylabel('Failure rate', 'FontSize',12)
grid on;