%Graficas de un campo vectorial conservador.

%%
%1) Sea la funcion vectorial v=xi-yj
%Se construye el vector con los prametros de integraci?n.
[x, y] = meshgrid(-1:0.5:1, -1:0.5:1); %Rango de amplifaci?n 
u=x; %va en la direccion de x
v=-y; %va en la direccion de y 
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
figure(1);
grid on;
quiver(u, v, 'g'), axis square %Centra los ejes de manera cuadrada.
%Otorga la direcci?n en funci?n de las variables que se estan planteando.
title('Particula neutra aislada por un campo vectorial en contra posici?n', 'FontSize', 15);

%-->Campo vectorial visualizado en tres dimensiones. (Se hace la
%transformaci?n de R^2 a R^3).
%1.1) Sea la funci?n vectorial v=xi-yj+zk
[x, y, z] = meshgrid(-1:0.5:1, -1:0.5:1, -5:0.5:5); %Usando parametros en x, y, dejando libre a z.
u=x;
v=-y;
w=z;
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
figure(2);
grid on;
quiver3(x, y, z, u, v, w, 'r'), axis square %Centra los ejes de manera cuadrada.
%Otorga la direcci?n en funci?n de las variables que se estan planteando.
title('Cambio de espacio bidimensional a tridimencional', 'FontSize', 15);

%%
%2). Sea el vector dado v=(3x^2-y^2)i+(3-4xy)j
[x, y] = meshgrid(-10:0.9:10, -10:0.9:10); %Rango de amplifaci?n
x=tan(y)*x;
u=3*x^2-y^2; %va en la direccion de x
v=3-4*x*y^2; %va en la direccion de y 
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
figure(3);
grid on;
quiver(u, v,'v'), axis square %Centra los ejes de manera cuadrada.
%Otorga la direcci?n en funci?n de las variables que se estan planteando.
title('Vector de campo conservativo unitario en direccion.', 'FontSize', 15);

%%
%3). Sea el vector dado v=(2ye^2x+e^2)i+(3ze^3y+e^2x)j+(xe^2+e^3y)k
[x, y, z] = meshgrid(-1:0.05:1, -1:0.05:1, -1:0.05:1); %Usando parametros en x, y, dejando libre a z.
[x, y, z]=sphere(50);
u=(2*y.*exp(2*x))+(exp(2));
v=(3*z.*exp(3*y))+(exp(2*x));
w=(x*exp(2))+(exp(3*y));
colormap ('winter')
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
figure(4);
grid on;
quiver3(x, y, z, u, v, w, 'k'), axis square %Centra los ejes de manera cuadrada.
%Otorga la direcci?n en funci?n de las variables que se estan planteando.
title('Campo gravitatorio conservativo', 'FontSize', 15);

%%
%4) Sea el vector dado v=(2xy)i+(x^2)j
[x, y] = meshgrid(-5:0.5:5, -5:0.5:5); %Rango de amplifaci?n
%---->X=tiempo, Y=Factor de durabilidad del material.
z=cos(x)*y+sin(y)*x;% caso 1: equilibrio entre tiempo y durabilidad.
%z=(cos(x)*x)-sin(y);% caso 2: mayor tiempo en ambiente, menor durabilidad.
%z=-cos(x)+sin(y)*y;% caso 3: menor tiempo en ambiente, mayor durabilidad.
%z=cos(x)+sin(y);% caso 4: Condiciones ideales, situaci?n ideal.
%z=cos(x)*y+sin(y)*x; % caso 5: intercambio equivalente, forzar la situacion.
%---->Ecuanci?n R(t); t es la variable de temperatura oscilante constante.
u=2*x*y; %va en la direccion de x
v=x^2; %va en la direccion de y 
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
figure(5);
grid on;
quiver(u, v), axis square %Centra los ejes de manera cuadrada.
%Otorga la direcci?n en funci?n de las variables que se estan planteando.
mesh(x,y,z) %dibuja el contorno de la superficie.
title('Campo conservativo formado de particulas alineadas.', 'FontSize', 15);