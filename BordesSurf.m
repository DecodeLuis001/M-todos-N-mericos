%Se tiene un integral doble con intervalos:
%Intervalo en X: x1=sin(x), x2=cos(x);
%Intervalo en Y: y1=pi/4, y2=5pi/4;
syms x y;
f=1
a=input('Ingrese el intervalo inferior en x: ');
b=input('Ingrese el intervalo superior en x: ');
f1=int(f,y, a, b)
c=input('Ingrese: el intervalo inferior en y: ');
d=input('Ingrese el intervalo superior en y: ');
f2=int(f1, x, c, d)
%%fsurf(f2, 'g')

