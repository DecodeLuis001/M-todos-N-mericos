%Metodo de Leverrier-Faddev.

A=[ +1.2,   +2.1,   -1.1,   +4.0;
     -1.1,    +2.0,   +3.1,   +4.9;
     -2.1,    +2.2,   +3.7,   +16.0;
     -1.0,    -2.3,   +4.7,   +12.0;    ]

B=(A)^2
C=(A)^3
D=(A)^4
SumaDiagonal=0;

disp('Suma de la matriz a seleccionar')
for x=1:4
    SumaDiagonal=SumaDiagonal + D(x,x); %Aqui se cambia la matriz dependiendo de la suma que se quiera obtener
    %en base a la potencia requerida de las traza.
end

fprintf('La suma de la diagonal princpal es: %.6f', SumaDiagonal);