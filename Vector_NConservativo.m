%1) Sea el campo vectorial=ycos(x+y)i-xsin(x+y)j
[x, y] = meshgrid(-5:0.3:5, -5:0.3:5); %Rango de amplifaci?n 
u=y*cos(x+y); %va en la direccion de x
v=-x*sin(x+y); %va en la direccion de y 
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
figure(1);
grid on;
quiver(u, v, 'g'), axis square %Centra los ejes de manera cuadrada.
%Otorga la direcci?n en funci?n de las variables que se estan planteando.
title('Campo no conservativo, direccion desviada', 'FontSize', 15);

%2) Sea el campo vectorial: (3x^2+2yz)i+(2xz+6yz)j+(2xy+3y^2)k
[x, y, z] = meshgrid(-5:0.5:5, -5:0.5:5, -5:0.5:5);
u=3*x.^2+2*y.*z;
v=2*x.*z+6*y.*z;
w=2*x.*y+3*y.^2;
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
figure(2);
grid on;
quiver3(x, y, z, u, v, w, 'r'), axis square %Centra los ejes de manera cuadrada.
%Otorga la direcci?n en funci?n de las variables que se estan planteando.
title('Modelo no conservativo: Modelaje del ADN', 'FontSize', 15);

%3) Sea el campo vectorial: v=1/y^2*(yi+xj)
[x, y] = meshgrid(-1:0.10:1, -1:0.10:1); %Rango de amplifaci?n 
u=(y.^-2)*y; %va en la direccion de x
v=(y.^-2)*x; %va en la direccion de y 
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
figure(3);
grid on;
quiver(u, v, 'k'), axis square %Centra los ejes de manera cuadrada.
%Otorga la direcci?n en funci?n de las variables que se estan planteando.
title('Campo no conservativo, direccion desviada', 'FontSize', 15);

%4) Sea el campo vectorial v=(-2xye^x^2)i-(e^x^2)j+(2*x.*y+3*y.^2)k
[x, y, z] = meshgrid(-5:0.5:5, -5:0.5:5, -5:0.5:5);
u=-2*x.*exp(x.^2);
v=-exp(x.^2);
w=2*x.*y+3*y.^2;
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
figure(4);
grid on;
quiver3(x, y, z, u, v, w, 'b'), axis square %Centra los ejes de manera cuadrada.
%Otorga la direcci?n en funci?n de las variables que se estan planteando.
title('Colision de particulas sobrepuestas.', 'FontSize', 15);

%5) Sea el campo vectorial: ((y.^-2)y)i+((y.^2)xy)j
[x, y] = meshgrid(-3:0.25:3, -3:0.25:3); %Rango de amplifaci?n 
u=(y.^-2)*y; %va en la direccion de x
v=(y.^2)*x.*y; %va en la direccion de y 
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
figure(5);
grid on;
quiver(u, v, 'm'), axis square %Centra los ejes de manera cuadrada.
%Otorga la direcci?n en funci?n de las variables que se estan planteando.
title('Campo no conservativo, direccion desviada', 'FontSize', 15);