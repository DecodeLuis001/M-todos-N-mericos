function [x]=GaussSeidel(~, ~, ~)

clc  %permite borrar el area de trabajo
clear  %permite borrar las variables almacenadas

%Esta parte solo es estetica sirve para que el usuario visualice la matriz
%y su vector resultante.
%Nota: PUEDE SER ELIMINADA DEL CODIGO SIN PROBLEMAS.
disp('La matriz A para utilizar es:');
disp('A=');
disp('[+1.78,  +3.01,  -4.88;]')          
disp('[+4.63,  -1.06,  -2.27;]')
disp('[-3.39,  +9.81,  -4.78;]')
fprintf('\n');

disp('La matriz B para iniciar: ')
disp('B=[-7.70; -6.36; 3.95;]')
fprintf('\n');

disp('Valores iniciales para X: ')
disp('Xe=[0; 0; 0;]')
fprintf('\n');

A=[ +4.63  -1.06  -2.27

    -3.39  +9.81  -4.78

    +1.78  +3.01  -4.88];

b=[-6.36; 3.95; -7.70];

Xe=[0; 0; 0;];

n=length(A);
x=zeros(n,1);
e=1;

 while e>0.00001
     for i=1:n
         sum=0;
         for j=1:n
             if j~=i
                 sum=sum+A(i,j)*Xe(j);
             end
             x(i)=(b(i)-sum)/A(i,i);
         end
         e=norm(Xe-x);
         Xe=x;
     end
 end
end
  







