%Uso del metodo e punto fijo.
%Alumno: Jose Luis Arroyo Nunez
%U.D.A: Metodos numericos.

%Forma en como se registran las funciones.
ab=input('Ingrese la primer funcion: ');
cd=input('Ingrese la segunda funcion: ');

%Hace referencia a que el texto ingresaro sera tratado como cadena de
%texto.
f=inline(ab);
g=inline(cd);

%Indica que se obtiene la deriva respecto a determinada funcion
syms x
Dg=diff(cd, x);
x=input('Ingrese el valor que corresponde para x: ');

%abs: es un comando que devuleve el valor abosluto de la funcion.
%eval: comando que evalua una cadena de caracteres siempre y cuando esta
%sea valida para el formato matematico.
%disp: escribe el valor de una variable para en formato de comando de
%texto.

%Se establece la condicion para que el avlor absoluto de la derivada sea
%menor que uno.
if(abs(eval(Dg))<1)
    %Establece un rango de error aceptable segun el usario necesite.
    t=input('Tolerancia requerida: ');
    %Muestra el porcentaje de error si es que existe.
    disp('    n   x0    error')
    %Total de datos enteros y decimales que puede tener la variable.
    fprintf(' 0.0000 %9.9f ------\n', x)
    n=0; %n: numero de iteraciones.
    error=100; %Rango minimo para inicializar el bucle.
    
    %Se busca que se obtenga un error menor o igual a la tolerancia.
    %La condicion tambien sirve para limitar el rango de divergencia.
    while(error>t)
        n=n+1; %Se aumenta una iteracion hasta llegar a n.
        %Se hace la comparativa de errores.
        anterior=x;
        x=g(x);
        %Se calcula el error en la primer funcion dado que la segunda sirve
        %como intermediaria.
        error=abs(f(x-anterior));
        %Muestra a modo de tabla los resultados.
        disp([n,x,error])
    end
else
    disp('Ingrese otra funcion secundaria, la actual funcion diverge.')
end
