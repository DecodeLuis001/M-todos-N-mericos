%Calculas el valor correspondiente al valor de Y en base a un valor de X.
function LagrangeED

X=input('Ingrese el vector fila x: ');
Y=input('Ingrese el vector fila y: ');
x=input('Ingrese el valor que desea interpolar: ');

[m, n]=size(X);
p=0;

for k=1:n
    LK=1;
    for j=1:n
        if(j~=k)
            LK=LK*(x-X(j))/(X(k)-X(j)); %Multiplica cada uno de los n_k. 
            %Cada que se avanza con una X_k se multiplica con la anterior
            %X_K
        end
    end
    p=p+Y(k)*LK;
end

fprintf('La interpolacion de Lagrange para x=%f es y=%f\n', x, p);