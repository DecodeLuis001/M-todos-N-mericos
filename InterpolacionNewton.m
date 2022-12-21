function [yi, p, b]=InterpolacionNewton(~, ~, ~)

x=input('Ingrese el vector fila x: ');
y=input('Ingrese el vector fila y: ');
xi=input('Ingrese el valor que desea interpolar: ');

%Inicializacion de las variables
n=length(x);
b=zeros(n); %Se llena la primer columna con los valores del vector y.
b(:,1)=y(:);

%Se obtienen las tablas de diferencias.
for j=2:n %De la segunda columna en adelante.
    for i=1:n-j+1 %Se empieza en el primer renglon y se termina en el renglon n-j.
        b(i,j)=(b(i+1, j-1) - b(i, j-1)) / (x(i+j-1) - x(i));
    end
end

%calcular el dato interpolado.
xt=1;
yi=b(1,1);

for j=1:n-1
    xt=xt.*(xi-x(j));
    yi=yi+b(1, j+i)*xt; 
end

%Para construir el polinomio.
p=num2str(b(1,1)); %Se obtiene el valor de cada una de las X.

%Para verificar el signo de los terminos.
    xx=x*-1;
    for j=2:n
        signo='';
        if b(1,j)>=0
            signo='+';
        end
        xt='';
        for i=1:j-1
            signo2='';
            if xx(i)>=0
                signo2='+';
            end
            xt=strcat(xt, '*(x', signo2, num2str(xx(i)),')'); %Se concatenan los terminos.
        end
        %Se considera la tabla de diferencias del primer renglon de la columna
        %j
        %Se concatenan el resto de los terminos.
        p=strcat(p, signo, num2str(b(1,j)), xt); %Se retorna el valor del ciclo a modo de caracteres.
    end

f=sym(p);
h=expand(f); %Expande la expresion en caracteres para guardarla.
m=inline(h); %Convierte la funcion guardada a una funcion con variable x
y=m(xi); %Este valor sirve para la interpolacion, con el valor x introducido al principio.

fprintf('La interpolacion de Lagrange para x=%f es y=%f\n', xi, y);
fprintf('El polinomio de interpolacion es: f(x)= ');
disp(h);

%Grafica de los puntos

xg=x(1)-2:0.01:x(n);
yg=m(xg);

%Estetica de la grafica.
zoom on;
grid on;
hold on;
xlabel('X');
ylabel('Y');
plot(xg, yg);
plot(x, y);
plot(xi, y, '*');

end

    



