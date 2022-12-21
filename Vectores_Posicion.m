%R(t)=t^2i+(t^2-t)j-7*tk en un tiempo igual a 3.

%Gr?fica de la curva t=3

t=-4:0.1:4;
x=t.^2;
y=(t.^2-t);
z=7*t;

plot3(x,y,z, 'r')
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
grid on;

%Vector de posici?n

hold on
v=[9, 6, -21];

plot3(v(1), v(2), v(3), '*g')
x1=9; y1=6; z1=-21; txt1='\leftarrow Position Vector'; text(x1, y1, z1, txt1)

%Ecuaciones parametricas de la linea tangtente
%Las constantes se obtubieron evaluando el valor t=pi/4 en la funci?n original
%Las variables se obtubieron evaluando t=pi/4 en la derivada de R(t).

hold on
x=9+6*t;
y=6+5*t;
z=-21-7*t;

plot3(x,y,z, 'b')

%Vector unitario tangente t=3;
%CAMBIAR VALORES.
vx=0.5720;
vy=0.4767;
vz=-0.6674;

hold on
quiver3(v(1), v(2), v(3), vx, vy, vz, 'm')

%Vector normal en t=3;

nx=0.7071;
ny=0.7071;
nz=0;

hold on
quiver3(v(1), v(2), v(3), nx, ny, nz, 'k')

%Vector Binormal en t=3
%CAMBIAR VALORES.
nx=-0.4719;
ny=0.4719;
nz=0.0674;

hold on
quiver3(v(1), v(2), v(3), nx, ny, nz, 'c')

view(20,20)

legend('Curva C', 'Vector Posici?n', 'Linea Tangente', 'Vector Unitario Tangente', 'Vector Normal', 'Vector Binormal')