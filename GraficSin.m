close all
x=0:pi/4:2*pi;
y=sin(x);
plot(x,y, 'ro--');
title('Grafica de sin(x) \epsilon');
xlabel('x');
ylabel('y');
grid on;
axis([min(x) max(x) min(y) max(y)]);
print('-f1', '-djpeg90', '-r800', 'Prueba.jpg')