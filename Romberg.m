function Romberg

syms x %Para poder calcular el error conociendo el valor real de la integral.

g = input('Ingrese la funcion: '); %(x^2)*(exp(-x)); 
f=inline(g);
a = input('Ingrese el limite inferior, a:  ');
b = input('Ingrese el limite superior, b:  ');
%Entre mas grande el numero de intervlos mejor sera la presion.
n = input('Ingrese el numero de intervalos, n:  ');

%Calculo de la integral exacta.
e=int(g, x, a, b);
fprintf('El valor exacto de la funcion es: %4.9f\n', e); 
  
h = b-a;
r = zeros(2,n+1); %Inicializacion de la formula principal.
r(1,1) = (f(a)+f(b))/2*h;
%La tabla permite  visualizar mediante degradracion descendente siendo el ultimo valor
%a la derecha de la tabla la solucion a la integral
fprintf('Tabla de degradacion de Romberg:\n');
fprintf('\n%9.9f\n\n', r(1,1));

     for i = 2:n %Aplicacion de las iteraciones seleccionadas por el usuario.
        sum = 0;
        for k = 1:2^(i-2)
           sum = sum+f(a+(k-0.5)*h);
        end
        r(2,1) = (r(1,1)+h*sum)/2;

        for j = 2:i %Aplicacion de la segunda forma para encontrar la igualacion i=j.
           l = 2^(2*(j-1));
           r(2,j) = r(2,j-1)+(r(2,j-1)-r(1,j-1))/(l-1);
        end

        for k = 1:i %Se imprimen las iteraciones de acuerdo al valor dado.
           fprintf('%9.9f\t',r(2,k));
        end

        fprintf('\n\n'); %Para vizualizar la tabla de forma descendente.
        h = h/2;
        for j = 1:i %Finaliza la evluacion de la regla trapezoidal.
           r(1,j) = r(2,j);
        end
     end
     
%Para obtener el error
fprintf('El valor aproximado de la integral es: %9.9f\n', r(1, j));

E=abs((e-r(1, j))/r(1, j))*100; %Aqui se calcula el error.

fprintf('El error calculado es: (%9.9f) en porcenjte.\n', E);

%Para fines de visualizacion.
zoom on;
grid on;
hold on;
x=linspace(a, b, n);
y=eval(g);
bar(x, y)
xlabel('X');
ylabel('Y');
plot(a, b,'r');
 
end