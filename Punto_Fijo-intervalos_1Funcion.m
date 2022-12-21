%Punto fijo para una sola variable.

%Se ingresan los datos de la funci?n a examinar.
gx=input('Ingrese el valor de la funcion: ');
g=inline(gx);
x=input('Ingrese el valor inicial: ');
n=input('Ingrese el maximo de iteraciones: ');
tol=input('Ingrese la tolerancia: ');
i=1; %se inicializan la iteraciones.
%Se genera la tabla.
fprintf(' n \t\t x \t\t error \n');
fprintf('0 \t %f \n', x);

while(i<=n)
    a=x; %Aqui se tiene el valor original de x.
    x=g(a); %la funcion se modifica para optener un nuevo x.
    e=(abs((x-a)/x)*100); %Permite calcular el error que se tiene en cada iteracion.
    fprintf('%d \t %1.8f \t\t %f \n', i, x, e);
    
    if(e<tol) %Sirve para temrinar el ciclo si es que el error sobrepasa el limite.
        i=n+1; %refleja el maximo de iteraciones.
    end
    i=i+1; %Aumenta el orden de las iteraciones
end
fprintf('\n');
fprintf('La aproximacion es: %.9f\n',i);
fprintf('Se tuvo un error de: %.9f\n',x);

    