%Multiplicacion de matrices 

R=[ +1.2,   +2.1,   -1.1,   +4.0;
     -1.1,    +2.0,   +3.1,   +4.9;
     -2.1,    +2.2,   +3.7,   +16.0;
     -1.0,    -2.3,   +4.7,   +12.0;    ];

T=[5.98; 3.89; 12.2; 4.03;];

disp('El resultado es: ');
Z=(R)^1 * T
Z1=(R)^2 * T
Z2=(R)^3 * T
Z3=(R)^4 * T

disp('Utilizando el metodo de Gauss-Jordan obtenemos las raices.')

A= [0.5899, 0.3920, 18.0450, 5.98; 
    1.4325, 0.8699, 58.7690, 3.89;   
    3.1168, 1.9346, 105.6200, 12.2; 
    2.3889, 1.4325, 90.773, 4.03; ];    

B=[0.9843; 2.358; 2.358; 3.9432;];

[n, n]=size(A);
AB=[A B];

    for piv=1:n %Piv es el pivote.
        for i=[1:piv-1,piv+1:n] %i es el numero de iteraciones
            M=-AB(i,piv)/AB(piv,piv); %Evalua para saber si el metodo es aplicable o no.
           AB(i,:)=AB(i,:)+M*AB(piv,:); %Efectua el proceso de resta entre renglones.
        end
   end

fprintf('Las soluciones de su sistema de ecuaciones son: \n');
x=rref(AB)