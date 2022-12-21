function [x]=Gauss_Eliminacion(~,~)

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
 A=[ +1.2,   +2.1,   -1.1,   +4.0;
     -1.1,    +2.0,   +3.1,   +4.9;
     -2.1,    +2.2,   +3.7,   +16.0;
     -1.0,    -2.3,   +4.7,   +12.0;    ];

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
fprintf('El error en la matriz es de: f\n', error); fprintf('\n');

disp('---->Inicia el proceso de la eliminacion gausseana\n.');

format long

[~, n]=size(A);
A=[A';B']';
x=zeros(n,1);

    for piv=1:n %Piv es el pivote.
        for i=[1:piv-1,piv+1:n] %i es el numero de iteraciones
            M=-A(i,piv)/A(piv,piv); %Evalua para saber si el metodo es aplicable o no.
            A(i,:)=A(i,:)+M*A(piv,:) %Efectua el proceso de resta entre renglones.
        end
    end

    disp('ESTAS SON LAS SOLUCIONES COMPLETAS(METODO GAUSS-JORDAN')
fprintf('Las soluciones finales de su sistema de ecuaciones son: \n');
x=A(:,n+1)./diag(A) %diag es un comando que determina la diagonal principal de la matriz.
