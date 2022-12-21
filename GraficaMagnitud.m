close all
%% Inicializacion
%Comentario XD
n=100000;
mr=0.1; % Representa la magnitud de ruido.
ne=1000; % Numero de elementos. 

%% Calculo de la funcion 
x=0:pi/n:2*pi;
y=sin(x);
ya=2*mr*rand(1, 2*n+1)-mr;
yr=y+ya;

tic;
yf=zeros(1, 2*n+1); %Elimina el ruido.
i2=-(ne/2-1):(ne/2);
v1=ones(ne, 1);
for i1=ne/2:(2*n+1-ne/2) %Empieza en 1 e incrementa de (2*n+1).
    yf(i1)=yr(i1+i2)*v1;
end
yf=yf/ne;
t1=toc;
%% Grafica
plot(x,y, 'r-');
hold on; %Aqui puede ir un hold on
plot(x, yr, 'bo')
plot(x, yf, 'g-')
title('Grafica de sin(x) \epsilon');
xlabel('x');
ylabel('y');
grid on;
axis([min(x) max(x) min([y yr]) max([y yr])]);
print('-f1', '-djpeg90', '-r800', 'Prueba.jpg');