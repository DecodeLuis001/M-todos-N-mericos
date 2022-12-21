%Curva c; Ecuaciones parametricas: x=2cos(t), y=2sin(t) z=3t;
%R(t)=2cos(t)+2sin(t)+3t.

%Gr?fica de la curva t=2
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
v=[-0.8323 1.8186 6];

plot3(v(1), v(2), v(3), '*g')
x1=-0.8323; y1=1.8186; z1=6; txt1='\leftarrow Position Vector'; text(x1, y1, z1, txt1)

%Ecuaciones parametricas de la linea tangtente
%Las constantes se obtubieron evaluando el valor t=2 en la funci?n original
%Las variables se obtubieron evaluando t=2 en la derivada de R(t).

hold on
x=-0.8323-1.8186*t;
y=1.8186-8323*t;
z=6+3*t;

plot3(x,y,z, 'b')

%Vector unitario tangente t=2;

vx=0.5044;
vy=-0.2308;
vz=0.8321;

hold on
quiver3(v(1), v(2), v(3), vx, vy, vz, 'm')

%Vector normal en t=2;

nx=0.4161;
ny=-0.9023;
nz=0;

hold on
quiver3(v(1), v(2), v(3), nx, ny, nz, 'k')

%Vector Binormal en t=2

nx=0.7566;
ny=0.3463;
nz=0.5547;

hold on
quiver3(v(1), v(2), v(3), nx, ny, nz, 'c')

view(20,20)
axis([-5 5 -2 3 -15 15])

legend('Curva C', 'Vector Posici?n', 'Linea Tangente', 'Vector Unitario Tangente', 'Vector Normal', 'Vector Binormal')