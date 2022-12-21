%Metodo de Gauss

function [x]=Eliminiacion_Gauss(~, ~)

A=[ +1.2    +2.1   -1.1   +4.0;
    -1.1    +2.0   +3.1   +4.9;
    -2.1    +2.2   +3.7   +16.0;
    -1.0    -2.3   +4.7   +12.0;    ];

B=[5.98; 3.89; 12.2; 4.03;];

    [nA, ~] = size(A);
    [~, ~] = size(B);
  
    a = [A B];
    
    n = nA;
 
    for k=1:n-1;
        for i=k+1:n
            for j=k+1:n+1
                a(i,j)=a(i,j)-a(k,j)*a(i,k)/a(k,k);
            end;
        end;
    end;
 
    x(n) = a(n,n+1)/a(n,n);
 
    for i = n-1:-1:1;
        sumk=0;
        for k=i+1:n
            sumk=sumk+a(i,k)*x(k);
        end;
        x(i)=(a(i,n+1)-sumk)/a(i,i);
    end;