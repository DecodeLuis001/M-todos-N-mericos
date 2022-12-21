[x,y]=meshgrid(pi/4:0.01:5*pi/4, -1:0.5:1);
%el inttervalo es el vector generado
z=cos(x)+sin(x).*y; %el punto solo representa la multiplicacion de vectores.
mesh(x,y,z) %dibuja el contorno de la superficie.
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
title('Area comprendida en una constante con comportamientos trigonometricos', 'FontSize', 15);
grid on;