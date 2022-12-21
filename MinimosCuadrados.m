disp('Inicio del metodo de minimos cuadrados.')

x=[1, 3, 5, 7, 13];
y=[800, 2310, 3092, 3940, 4755];
g=input('De que grado es su polinomio: ');
Tabulacion=polyfit(x, y , g); %El numero "g" es depende al grado del polinomio.

fprintf('El resultado de la tabulacion es: ');
disp(Tabulacion);

%Estetica de la grafica.
zoom on;
grid on;
hold on;
xlabel('X');
ylabel('Y');
plot(x, y);
plot(x, y, 'or');
plot(x, y, '*');

% x=input('Ingrese el vector fila x: ');
% y=input('Ingrese el vector fila y: ');
% n=length(x);
% 
% sx=0;
% sy=0;
% sxy=0;
% sx2y=0;
% sx2=0;
% sx3=0;
% sx4=0;
% 
% for i=1:n
%     sx=sx+x(i);
%     sy=sy+y(i);
%     sxy=sxy + x(i)*y(i);
%     sx2y=sx2y + x(i)^2 * y(i);
%     sx2=sx2 + x(i)^2;
%     sx3=sx2 + x(i)^3;
%     sx4=sx2 + x(i)^4;
% end
% 
% A=sy;
% B=sxy;
% C=sx2y;
% D=n;
% E=sx;
% F=sx2;
% G=sx3;
% H=sx4;
% 
% m=[D, E, F; E, F, G; F, G, H];
% b=[C, B, A];
% a=m/b;
% 
% disp(a);