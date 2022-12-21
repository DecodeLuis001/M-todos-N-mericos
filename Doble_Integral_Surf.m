%Se tiene un integral doble con intervalos:
%Intervalo en X: x1=x, x2=2;
%Intervalo en Y: y1=0, y2=2;

syms x y;
f=x+y
a=input('Ingrese el intervalo inferior en x: ');
b=input('Ingrese el intervalo superior en x: ');
f1=int(f,y, a, b)
c=input('Ingrese el intervalo inferior en y: ');
d=input('Ingrese el intervalo superior en y: ');
f2=int(f1, x, c, d)
fsurf(f1, 'b')
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
title('Area comprendida en x+y', 'FontSize', 15);
grid on;