close all
clear all
clc
 
%matriz cuadrda
N=3;
A=[11  5    3;
   -6  -4  -2;
   -5  0   -1;];
 
% Aqui inicializamos las matrices a rellenar con valores calculados
C=zeros(N,N);
y=zeros(N,1);
y(1)=1;
syms x;
C(:,N)=y;

%Aqui va el ciclo
for i=(N-1):-1:1
    C(:,i)=A*C(:,(i+1));
end
a=-(A^N)*y;
 
%Calcular los coeficientes b1, b2,... bn
 
b=inv(C)*a
p=x^(N);
for i=2:(N+1)
    p=p+x^(N-(i-1))*b(i-1); %Ecuacion general del metodo de Krylov.
end

disp('El polinomio caracterisitico es: ');
p

%Calculamos las raices del polinomio
p2 = sym2poly(p); %Esta parte se encarga de que las raices se encuentren de cauerdo a la variable X.
disp('La raices del polinomio caracterisitco son: ')
r = roots(p2) %Comando para visualizar las raices.