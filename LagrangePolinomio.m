function LagrangePolinomio

X=input('Ingrese el vector fila x: ');
Y=input('Ingrese el vector fila y: ');
x1=input('Ingrese el valor que desea interpolar: ');

[~, n]=size(X);
p='0';
syms x;

    for k=1:n
        LK='1';
        for j=1:n
            if(j~=k)
                %--->num2str: convierte de numero a caracter.
                %Multiplica cada uno de los n_k. 
                %Cada que se avanza con una X_k se multiplica con la anterior
                %X_K
                LK=strcat(LK, '*((x-(',num2str(X(j)),')) / (',num2str(X(k)),' - (',num2str(X(j)),')))');
                %Esto devuleve el polinomio como una cadena de texto.
            end
        end
        %P es la variable donde se guarda la secuencia de multiplicacion.
        p=strcat(p, '+', num2str(Y(k)), '*(',LK,')');
    end

f=sym(p);
h=expand(f); %Expande la expresion en caracteres para guardarla.
m=inline(h); %Convierte la funcion guardada a una funcion con variable x
y=m(x1); %Este valor sirve para la interpolacion, con el valor x introducido al principio.

fprintf('La interpolacion de Lagrange para x=%f es y=%f\n', x1, y);
fprintf('El polinomio de interpolacion es: f(x)= ');
disp(h);

%Para obtener la grafica, estos son el rango de valores a considerar.
xg=X(1)-2:0.01:X(n);
yg=m(xg);

%Estetica de la grafica.
zoom on;
grid on;
hold on;
xlabel('X');
ylabel('Y');
plot(xg, yg);
plot(X, Y, 'ok');
plot(x1, y, '*');

end
