function FuncPartes

%Funcion a graficar.
% f(x)= 
% x^2, x<-2
% 5x, -2 <= x < 2
% 2, 2 <= x >= 6
% x^2 - 9x + 4 x>=6 

x=-4:0.05:8;
%Primero va la condicion y luego la funcion.
f=(x<-2).*(x.^2) + ((x>=-2) & (x<2)).*(5*x) + ((x>=2) & (x<6)).*(2) + (x>=6).*(x.^2 - 9*x +  4); 
plot(x, f, 'r'), grid
