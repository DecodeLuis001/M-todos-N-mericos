clc
clear  

format long

%PARA MATRICES 3X3.

% a=[  1.2    2.1   -1.1     4.0;
%     -1.1    2.0    3.1     4.9;
%     -2.1    2.2    3.7    16.0;
%     -1.0   -2.3    4.7    12.0;];
% b=[5.98; 3.89; 12.2; 4.03;];

a=[-1, -7/4, 25/33, -10/3; 11/20, -1, -31/20, -49/20; 21/37, -22/37, -1, -160/37; 1/12, 23/120, -11/30, -1;];
b=[-299/60; -199/100; -122/37; -403/1200;];
x=[0; 0; 0; 0;];
tol=0.001;
iter=input('Ingrese el numero maximo de iteraciones: \n');
w=input('Ingrese el landa de la relajacion: \n');

k=norm(a)*norm(a^-1);%Se calcula el condicional de la matriz de coeficientes
fprintf('El condicional es: %8.8f \n', k) 

determinante=det(a); %se calcula el determinante de la matriz de coeficiente

if determinante==0
	disp('En la matriz uno de los determinates es cero, el metodo no es aplicable.')
    disp('La matriz no posee la solucion unica.')
end

n=length(b);%numero de elementos del vector b
d=diag(diag(a)); %obtencion de la matriz diagonal
l=d-tril(a); %obtencion de la matriz diagonal superior L
u=d-triu(a); %obtencion de la matriz diagonal inferior u
fprintf('La solucion es: \n');
fprintf('\n');
fprintf('La matriz de transicion de gauss seidel:\n');
Tw=((d-w*l)^-1)*((1-w)*d+w*u); % matriz de transicion de gauss con relajacion
disp(Tw)
 
re=max(abs(eig(Tw))); %calculo del radio espectral
 
   if re>1
        fprintf('El metodo no puede converger el radio espectral es mayor a 1.\n')
        return
   end

fprintf('El vector constante es: \n')
Cw=w*(d-w*l)^-1*b; % vector constante C, para el metodo con relajacion
disp(Cw)
i=0;

err=tol+1;
z=[i,x(1),x(2),x(3),x(4),err];

while(err>tol && i<iter)
  
    xi=Tw*x+Cw;

    err=max(sqrt((xi(1)-x(1))^2+(xi(2)-x(2))^2+(xi(3)-x(3))^2-x(4)^2));
    %err=norm(Xmejor-x); %norma 2
    %err=max(abs(xi-x)); %norma 1
    %err=norm(xi-x)/norm(xi); %norma relativa
    x=xi;
    
    z(i,1)=i; 
	z(i,2)=x(1); 
	z(i,3)=x(2); 
	z(i,4)=x(3);
	z(i,5)=err;

end

fprintf('\nTABLA:\n\n    n                  x1                  x2                  x3                 Error\n\n   ') 
disp(z) 

% Resultados
for i=1:n
    xi=x(i,1); % Vector soluci?n
    fprintf('X%g=',i)
    disp(xi);
end