function [ret] = SOR(~,~,~,~,~,~)

A=[-1, -7/4, 25/33, -10/3; 11/20, -1, -31/20, -49/20; 21/37, -22/37, -1, -160/37; 1/12, 23/120, -11/30, -1;];
b=[-299/60; -199/100; -122/37; -403/1200;];
x=[0; 0; 0; 0;];
w=1.25;
tol=0.0000001;
iter=100;

    cond(A)%verificar si esta bien condicionada la matriz

    D=diag(diag(A)); %el programa encuentra la diagonal de A
    L=D-tril(A); %el programa encuentra la matriz trinagular inferiror	
    U=D-triu(A); %el programa encuentra la matriz triangular superior


    T=(D-w*L)^-1*((1-w)*D+w*U); %encuentra la matriz T usando D L y U
    rho=max(abs(eig(T))); %encuentra el valor del radio espectral con la matriz T

     if rho>1	%si el re>1 el metodo no converge
         disp('radio espectral mayor que 1');
         disp('el metodo no converge');
     end 

C=w*(D-w*L)^-1*b; %encunetre el valor de la constante C
i=0;
error=tol+1;

    while error>tol && i<iter %mientras error>tol y i<iter ejecute la formula iterativa	
        xi=T*x+C; %formula iterativa
        i=i+1;	%incrmente el valor del contador
        error=norm(xi-x); 
        x=xi; %se tiene un nuevo valor de x para continuar hastra que encuentre solucion
        p(i)=error;	%se crea un nuevo vector p, para cargar los valores del error
    end

    itermax = [1:i];	%se crea el vector iteraciones para poder graficar el error. 				
    plot(itermax,p,'-m') %grafica de los errror.
    disp('aproximacion xi') %muestre la aproximacion xi
    disp(xi)
    disp('iteraciones realizadas') %muestre las iteraciones que realizo hasta que convergio
    disp(i)
    disp('error') %muestre el error obtenido por las operaciones
    disp(error)
    disp('Radio Espectral')
    disp(rho) %muestre el radio espectral
    disp('Matriz T')
    disp(T) %muestra la matriz T

end
