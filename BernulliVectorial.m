%Graficaci?n del espiral de Bernulli
%Funci?n vector original R(t)=(e^t*cos(4*t) + e^t*sin(4*t)).
%La derivada de dicha funci?n es: R?(t)=4*e^t*cos(4*t) - 4*e^t*sin(4*t) + e^t*cos(4*t) + e^t*sin(4*t)
%La norma de la derivada de la funci?n es: ||R?(t)||=(e^(2*t)*(log(e)^2 - 16*sin(8*t) + sin(8*t)*log(e)^2 + 16))^(1/2)

%%Para saber la gr?fica de la funci?n normal.
syms x y
t=-pi/2:0.05:pi/2;
r=exp(t);
x=r.*cos(4*t);
y=r.*sin(4*t);
figure(1) %Abrir una ventana 1
plot(x,y, 'm');
title('Espiral de Bernoulli: Forma base.')
xlabel('x')
ylabel('y')
grid on;

%%Para saber la gr?fica de la derivada de la funci?n.
syms x y
t=-pi/2:0.05:pi/2;
r=exp(t);
a=-4*sin(4*t);
b=4*cos(4*t);
x=r.*(a+sin(4*t));
y=r.*(b+cos(4*t));
figure(2) %Abrir una ventana 2
plot(x,y, 'r');
title('Espiral de Bernoulli: Forma derivada')
xlabel('x')
ylabel('y')
grid on;

%%Para saber la gr?fica de la norma de la derivada.
%La ecuaci?n original fue modificada con fines de graficaci?n.
syms x y
t=-pi/2:0.5:pi/2;
r=exp(2*t);
a=0.8665;
b=16;
x=a.*(r.*sin(8*t));
y=(r.*cos(8*t)+b);
figure(3) %Abrir una ventana 3
plot(x,y, 'g');
title('Espiral de Bernoulli: Forma de la norma de la derivada')
xlabel('x')
ylabel('y')
grid on;