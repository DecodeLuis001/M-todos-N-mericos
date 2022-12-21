%Metodo Gauss-Jordan

function [x]=GaussJordan(~,~)

clc  %permite borrar el area de trabajo
clear  %permite borrar las variables almacenadas

%Esta parte solo es estetica sirve para que el usuario visualice la matriz
%y su vector resultante.
%Nota: PUEDE SER ELIMINADA DEL CODIGO SIN PROBLEMAS.
disp('La matriz A para utilizar es:');
disp('A=');
disp('[+1.2    +2.1   -1.1   +4.0;]');
disp('[-1.1    +2.0   +3.1   +4.9;]');
disp('[-2.1    +2.2   +3.7   +16.0;]');
disp('[-1.0    -2.3   +4.7   +12.0;]');
fprintf('\n');

disp('El vector resultante B de la matriz A es: B=[5.98; 3.89; 12.2; 4.03;]');
fprintf('\n');

%Esta parte edita los valores a usar en el metodo.
%NOTA: puede ser modifacda tanto en dimensiones como en valores.

A=[ +1.2    +2.1   -1.1   +4.0;
    -1.1    +2.0   +3.1   +4.9;
    -2.1    +2.2   +3.7   +16.0;
    -1.0    -2.3   +4.7   +12.0;    ];

B=[5.98; 3.89; 12.2; 4.03;];

disp('---->Se calcula el error porcentual.'); fprintf('\n');

C=[ +1,    +2,   -1,   +4;
    -1,    +2,   +3,   +5;
    -2,    +2,   +4,   +16;
    -1,    -2,   +5,   +12;    ];

[m, n]=size(A);

for i=1:m
    for j=1:n
        S(i, j)=A(i, j) - C(i, j);
    end
end

error=abs(S(i, j)/A(i, j))*100;
fprintf('El error en la matriz es de: %8.50f\n', error); fprintf('\n');

[n, n]=size(A);
AB=[A B]

    for piv=1:n %Piv es el pivote.
        for i=[1:piv-1,piv+1:n] %i es el numero de iteraciones
            M=-AB(i,piv)/AB(piv,piv); %Evalua para saber si el metodo es aplicable o no.
           AB(i,:)=AB(i,:)+M*AB(piv,:) %Efectua el proceso de resta entre renglones.
        end
   end

fprintf('Las soluciones de su sistema de ecuaciones son: \n');
x=rref(AB);



