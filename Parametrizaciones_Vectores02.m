%Curva c; Ecuaciones parametricas: x=2cos(t), y=2sin(t) z=3t;
%R(t)=2cos(t)+2sin(t)+3t.

%Gr?fica de la curva t=pi/4
%Se consideran los valores usando el valor radian de 2.

t=-2:0.01:2;
x=2*cos(t);
y=2*sin(t);
z=3*t;

plot3(x,y,z, 'r')
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
grid on;

%Vector de posici?n

hold on
v=[sqrt(2), sqrt(2), (3*pi)/4];

plot3(v(1), v(2), v(3), '*g')
x1=1.4142; y1=1.4142; z1=2.3561; txt1='\leftarrow Position Vector'; text(x1, y1, z1, txt1)

%Ecuaciones parametricas de la linea tangtente
%Las constantes se obtubieron evaluando el valor t=pi/4 en la funci?n original
%Las variables se obtubieron evaluando t=pi/4 en la derivada de R(t).

hold on
x=1.4142-1.4142*t;
y=1.4142+1.4142*t;
z=2.3561+3*t;

plot3(x,y,z, 'b')

%Vector unitario tangente t=pi/4;

vx=0.3922;
vy=0.3922;
vz=0.8320;

hold on
quiver3(v(1), v(2), v(3), vx, vy, vz, 'm')

%Vector normal en t=pi/4;

nx=-0.7071;
ny=-0.7071;
nz=0;

hold on
quiver3(v(1), v(2), v(3), nx, ny, nz, 'k')

%Vector Binormal en t=pi/4

nx=-0.5883;
ny=-0.5883;
nz=-0.5547;

hold on
quiver3(v(1), v(2), v(3), nx, ny, nz, 'c')

view(20,20)
axis([-5 5 -2 3 -15 15])

legend('Curva C', 'Vector Posici?n', 'Linea Tangente', 'Vector Unitario Tangente', 'Vector Normal', 'Vector Binormal')