[x,y]=meshgrid((-sqrt(2)/3):0.5:(sqrt(2)/3), -sqrt(2):0.5:sqrt(2));
%el inttervalo es el vector generado
z=x.*y; %el punto solo representa la multiplicacion de vectores.
mesh(x,y,z) %dibuja el contorno de la superficie.
meshc(x,y,z) %dibuja el contorno en la superficie.
surf(x,y,z) %dibuja un enmallado en la superficie.
meshz(x,y,z) %Fronteras del respecivo dominio.
surfc(x,y,z) %Encajona la superficie.
contour(x,y,z) %curvas de nivel.
contour3(x,y,z) %curvas de nivel en el epsacio.
xlabel('X', 'FontSize', 12)
ylabel('Y', 'FontSize', 12)
zlabel('N', 'FontSize', 12)
title('Plano de la superficie generada a partir de la funci?n z=xy', 'FontSize', 15);
grid on;

