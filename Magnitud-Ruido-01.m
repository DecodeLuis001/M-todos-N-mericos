close all
%% Inicializacion
%Comentario XD
n=input('Ingrese el numero de muestras: ');
mr=0.1; % Representa la magnitud de ruido.
ne=input('Ingrese el numero de ventanas: '); % Numero de elementos. 

%% Calculo de la funcion 
x=0:pi/n:2*pi;
y=sin(x);
ya=2*mr*rand(1, 2*n+1)-mr;
yr=y+ya;

tic;
yf=zeros(1, 2*n+1); %Elimina el ruido.
i2=-(ne/2-1):(ne/2);
v1=ones(1, ne);
i1=ne/2:(2*n+1-ne/2); %Empieza en 1 e incrementa de (2*n+1).
ni1=length(i1);
ind1=ones(ne, 1)*i1;
ind2=i2'*ones(1, ni1);
indt=ind1+ind2;
yf(i1)=v1*yr(indt);
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
print('-f1', '-djpeg90', '-r800', 'Prueba1.jpg');