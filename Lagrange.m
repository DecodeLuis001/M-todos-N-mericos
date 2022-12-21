%%Para hacer la tabulacion 

function [C]=Lagrange(~,~)

disp('Inicio del metodo de Lagrange.');

x=[1, 3, 5, 7, 13];
y=[800, 2310, 3092, 3940, 4755];

n1=length(x);
n=n1-1;
L=zeros(n1,n1);

for k=1:n+1
    V=1;
    for j=1:n+1
        if k~=j
            V=conv(V,poly(x(j)))/(x(k)-x(j));
        end
    end
    L(k,:)=V;
end

C=y*L;

%Se activa mediante la ventana de comandos: Lagrange(x,y)

