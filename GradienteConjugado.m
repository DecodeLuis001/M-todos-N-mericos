%Metodo del gradiente conjugado.

% A = [4,     -1   0;		
%      -1, 	4, 	-1;		
%       0,    -1,  4; ];
% 
% b = [2; 6; 2];
% 
% tol=0.00001;
% 
% smax=100;

function [x]=GradienteConjugado(A,b,x,n, error)

%  A = [4,     -1   0;		
%       -1, 	4, 	-1;		
%        0,    -1,  4; ];
%  
%  b = [2; 6; 2];

% A=[ +4.63,  -1.06,  -2.27;
% 
%     -3.39,  +9.81,  -4.78;
% 
%     +1.78,  +3.01,  -4.88;];
% 
% b=[-6.36; 3.95; -7.70;];

A=[ +1.2    +2.1   -1.1   +4.0;
    -1.1    +2.0   +3.1   +4.9;
    -1.0    -2.3   +4.7   +12.0;
    -2.1    +2.2   +3.7   +16.0;  ];      %Cambio de fila 3 por 4

b=[5.98; 3.89; 4.03; 12.2;];    %Cambio de valores en los terminos independientes.

format long
 
x=[0; 0; 0; 0;];
 
n=100;
 
error=0.01;
 
i=0;
r=b-A*x;
d=r;
tol=norm(r);

    while (i<n && tol>error)
       fprintf('\n');
       fprintf('----------------------------------------------');
       fprintf('\n');
       fprintf('Iteracion Numero: %d', i) 
       alpha=(d'*r)/(d'*A*d)
       x=x+alpha*d
       r=b-A*x
       beta=(d'*A*r)/(d'*A*d)   
       d=r-beta*d;
       tol=norm(r);
       i=i+1;
       fprintf('----------------------------------------------');
       fprintf('\n');
    end  
end

