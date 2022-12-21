disp('Seleccione un numero')
disp('-->Para funciones discretas:')
disp('1) Distribucion uniforme.') %Totalmente funcionando.
disp('2) Distribucion de Bernoulli')
disp('3) Distribucion Binomial.') %Totalmente funcionando.
disp('4) Distribucion de Poisson.') %Totalmente funcionando.
disp('-->Funciones continuas:')
disp('5) Distribucion uniforme.')
disp('6) Dsitribucion exponencial.') %Totalmente funcionando.
disp('7) Distribucion normal')
selector = input('Selecciona el teorema: ');

switch selector
    case 1
        disp('Teorema de distribucion uniforme: para eventos equiprobables.')
        
        n1 = input('Numero de eventos: ');
        x1 = input('Valor deseado para x: ');
        
        disp('1) Funcion de densidad probabilistica')
        disp('2) Funcion de distribucion acumulativa')
        disp('3) Esperanza matematica')
        disp('4) Varianza matematica')
        selector1 = input('Selecciona el metodo: ');
        switch selector1
            case 1
                disp('Funcion de densidad probabilisitica.')
                
                if x1 <= n1
                    fx1 = 1 / n1 ;
                else
                    fx1 = 0;
                end
                
                fprintf('El valor de la densidad es es: %4.9f\n', fx1); 
               
                figure(1) %Abrir una ventana 1
                stem(x1, fx1, 'm');
                title('Densidad probabilistica')
                xlabel('x')
                ylabel('fx(x)')
                grid on;
                
            case 2
                disp('Funcion de distribucion acumulativa')
                
                Fx1 = 0;
                    
                for i=1:x1
                    Fx1 = Fx1 + (1/n1);
                end
                
                fprintf('El valor de la distribucion acumulativa es: %4.9f\n', Fx1);
                
                figure(2) %Abrir una ventana 1
                Fx1 = Fx1 +(1/n1);
                Y = Fx1;
                stairs(Y)
                title('Distribucion acumulativa')
                xlabel('x')
                ylabel('Fx(x)')
                grid on;
            case 3
                disp('Esperanza matematica')
                %1 es el valor inicial x_1 ; xn es el valor final.
                Ex1 = 0;
                
                %Cuando los valores sean enteros consecutivos.
                if mod(x1,1)==0 
                    Ex1 = (1 + n1) / 2;
                    fprintf('El valor de la esperanza matematica es: %4.9f\n', Ex1);
                %cuando los valores no son enteros consecutivos.
                else
                    for i=0:n1
                        Ex1 = Ex1 + x1;
                    end
                    SEx1 = (1/n) * Ex1;
                    
                    fprintf('El valor de la esperanza matematica es: %4.9f\n', SEx1);
                end
            case 4
                 disp('Varianza matematica')
                 
                 Varx1 = 0;
                 
                 %Cuando los valores sean enteros consecutivos.
                if mod(x1,1)==0 
                    Varx1 = ((n1 -1 +1)^2 -1) / 12 ;
                    fprintf('El valor de la varianza es: %4.9f\n', Varx1);
                %cuando los valores no son enteros consecutivos.
                else
                    for i=0:n1
                        Varx1 = Varx1 + ( (x1)^2 - (SEx1)^2);
                    end
                    SVarx1 = (1/n) * Varx1;
                    
                    fprintf('El valor de la varianza es: %4.9f\n', SVarx1);
                end
            otherwise 
                disp('Su eleccion no esta dentro del rango de valores permitidos.')
        end
    case 2
        disp('Teorema de Bernoulli: Para eventos donde solo se tiene exito o fracaso, (No hay puntos medios.)')
        disp('Recuerde: x={0: fracaso ; 1: exito}')
        
         x2 = input('Ingrese el valor para x: ');
         p2 = input('Ingresa el valor de P: ');
        
        disp('1) Funcion de densidad probabilistica')
        disp('2) Funcion de distribucion acumulativa')
        disp('3) Esperanza matematica')
        disp('4) Varianza matematica')
        selector2 = input('Selecciona el metodo: ');
        switch selector2
            case 1
                disp('Funcion de densidad probabilisitica.')
                
                fx2 = p2^x2 * (1-p2)^(1-x2);
                
                fprintf('El valor de la probabilidad es: %4.9f\n', fx2); 
            case 2
                disp('Funcion de distribucion acumulativa')
                
                Fx2 = (1) %Corregir.
                
                fprintf('El valor de la distribucion acumulativa es: %4.9f\n', Fx2);
            case 3
                disp('Esperanza matematica')
                
                Ex2 = p2;
                
                fprintf('El valor de la esperanza matematica es: %4.9f\n', Ex2);
            case 4
                 disp('Varianza matematica')
                 
                 Varx2 = p2 * (1 - p2);
                 
                 fprintf('El valor de la varianza es: %4.9f\n', Varx2);
            otherwise 
                disp('Su eleccion no esta dentro del rango de valores permitidos.')
        end
    case 3
        disp('Teorema binomial de Benoulli: se tiene un numero indistinto de intentos para lograr un exito.')
        disp('Recuerde: x={0: fracaso ; 1: exito}')
        
        x3 = input('Introduce un valor para x: ');
        n3 = input('Introduce el numero de repeticiones: ');
        p3 = input('Introduce la propabilidad de exito: ');
        
        disp('1) Funcion de densidad')
        disp('2) Funcion de distribucion acumulativa')
        disp('3) Esperanza matematica')
        disp('4) Varianza matematica')
        selector3 = input('Selecciona el metodo: ');
        switch selector3
            case 1
                disp('Funcion de densidad probabilistica.')
                
                fx3 = binopdf(x3,n3,p3);
                
                fprintf('El valor de la densidad es: %4.9f\n', fx3);
                
                figure(9)
                defects = 0:n3;
                y3 = binopdf(defects, n3, p3);
                plot(defects, y3)
                title('Densidad probabilistica')
                xlabel('x')
                ylabel('fx(x)')
                grid on;
            case 2
                disp('Funcion de distribucion acumulativa')

                Fx3 = binocdf(x3,n3,p3);
                
                figure(10)
                defects = 0:n3;
                y3 = binocdf(defects, n3, p3);
                plot(defects, y3)
                title('Distribucion acumulativa.')
                xlabel('x')
                ylabel('Fx(x)')
                grid on;
                
                fprintf('El valor de la distribucion es: %4.9f\n', Fx3);
            case 3
                disp('Esperanza matematica')
                
                Ex3 = n3*p3;
                
                fprintf('El valor de la esperanza es: %4.9f\n', Ex3);
            case 4
                 disp('Varianza matematica')
                 
                 Varx3 = n3*p3 * (1-p3);
                 
                 fprintf('El valor de la varianza es: %4.9f\n', Varx3);
            otherwise 
                disp('Su eleccion no esta dentro del rango de valores permitidos.')
        end         
    case 4
        disp('Teorema de Poisson: Refiere a las posibilidades relacionadas al tiempo o espacio de un evento.')
        
        x4 = input('Introduce un valor para x: ');
        n4 = input('Introduce el numero de repeticiones: ');
        p4 = input('Introduce la propabilidad de exito: ');
        f4 = factorial(x4);
        Landa = n4*p4;
        fprintf('El valor de la Landa es: %4.9f\n', Landa);
        
        disp('1) Funcion de densidad')
        disp('2) Funcion de distribucion acumulativa')
        disp('3) Esperanza matematica')
        disp('4) Varianza matematica')
        selector4 = input('Selecciona el metodo: ');
        switch selector4
            case 1
                disp('Funcion de densidad probabilistica')
                
                fx4 = ( exp(1)^(Landa*-1) * (Landa^x4 / f4) );
                
                fprintf('El valor de la densidad es: %4.9f\n', S4);
            case 2
                disp('Funcion de distribucion acumulativa')
                
                Fx4 = 0;
                
                for i=0:1:x4
                    Fi4 = factorial(i);
                    Fx4 = Fx4 + ( ((Landa)^i / Fi4) * exp(1)^(Landa * -1));
                end
                S4 = Fx4;
                
                fprintf('El valor de la distribucion es: %4.9f\n', S4);
            case 3
                disp('Esperanza matematica')
                
                Ex4 = Landa;
                
                fprintf('El valor de la Landa es: %4.9f\n', Ex4);
            case 4
                disp('Varianza matematica')
                
                Varx4 = Landa;
                
                fprintf('El valor de la Landa es: %4.9f\n', Varx4);
            otherwise 
                disp('Su eleccion no esta dentro del rango de valores permitidos.')
        end
    case 5
        disp('Funciones uniformes:')
        
        x5 = input('Introduzca un valor para x: ');
        x51 = input('Defina un valor para x1: ');
        x52 = input('Defina un valor para x2: ');
        
        disp('1) Funcion de densidad probabilisitica')
        disp('2) Funcion de distribucion acumulativa')
        disp('3) Esperanza matematica')
        disp('4) Varianza matematica')
        selector5 = input('Selecciona el metodo: ');
        switch selector5
            case 1
                disp('Funcion de densidad')
                
                if (x51 <= x5) &&  (x5 <= x52)
                    fx5 = 1 / (x52 - x51) ;
                else 
                    fx5 = 0 ;
                end
                
                fprintf('El valor de la Landa es: %4.9f\n', fx5);
            case 2
                disp('Funcion de distribucion acumulativa')
                
                if x5 <= x51
                    Fx5 = 0;
                end
                if (x51 <= x5) &&  (x5 <= x52)
                    Fx5 = x5 - x51 / x52 - x51 ;
                end
                if x5 > x51
                    Fx5 = 1 ;
                end 
            
                fprintf('El valor de la Landa es: %4.9f\n', Fx4);
            case 3
                disp('Esperanza matematica')
                
                Ex5 = (x52 + x51) / 2 ;
                
                fprintf('El valor de la esperanza es: %4.9f\n', Ex5);
            case 4
                 disp('Varianza matematica')
                 
                 Varx5 = (x52 - x51)^2 / 12;
                 
                 fprintf('El valor de la varianza es: %4.9f\n', Varx5);
            otherwise 
                disp('Su eleccion no esta dentro del rango de valores permitidos.')
        end
    case 6
        disp('Funcion exponencial: Administracion de tiempo.')
        
        x6 = input('Introduzca un valor para x: ');
        c = input('Introduzca un valor para Landa: ');
        
        disp('1) Funcion de densidad probabilistica.')
        disp('2) Funcion de distribucion acumulativa')
        disp('3) Esperanza matematica')
        disp('4) Varianza matematica')
        selector6 = input('Selecciona el metodo: ');
        switch selector6
            case 1
                disp('Funcion de densidad probabilistica')
                
                if x6 >=0
                    x61 = 0:0.1:x6;
                    
                    fx6 = 1/c * exp( (-c * x61) ); %Para hacer la grafica.
                    fx6_1 = 1/c * exp( (-c * x6) ); %Para mostrar un valor al usuaario.
                    
                else
                    fx6 = 0; 
                end
                
                fprintf('El valor de la densidad es: %4.15f\n', fx6_1);
                
                %Diseno de la grafica.
                figure(5)
                hold on
                plot(x61, fx6, '-r*',...
                    'LineWidth',2,... %Grosor de linea
                    'MarkerEdgeColor','k',... %contorno de los circulos.
                    'MarkerFaceColor',[.49 1 .63],... %Color interno de los circulos.
                    'MarkerSize',7) %tama?o de las figuras
                hold off
                title('Densidad probabilistica exponencial.', 'FontSize',14)
                xlabel('x', 'FontSize',12)
                ylabel('fx(x)', 'FontSize',12)
                grid on;
            case 2
                disp('Funcion de distribucion acumulativa')
                
                if x6 >= 0
                    x61 = 0:0.1:x6;
                    
                    Fx6 = 1-exp(-c * x61); %Para la grafica.
                    Fx6_1 = 1-exp(-c * x6); %Para mostrar solo un valor al usuario.
                else
                    Fx6 = 0 ;
                end
                
                fprintf('El valor de la distribucion es: %4.9f\n', Fx6_1);
                
                %Dise?o de la grafica.
                figure(6)
                hold on
                plot(x61, Fx6, '-bo',... % Color + figura
                    'LineWidth',3,... %Grosor de linea
                    'MarkerSize',7) %tama?o de las figuras
                hold off
                title('Distribucion acumulativa exponencial', 'FontSize',14)
                xlabel('x', 'FontSize',12)
                ylabel('Fx(x)', 'FontSize',12)
                grid on;
            case 3
                disp('Esperanza matematica')
                
                Ex6 = 1 / c ;
                
                fprintf('El valor de la esperanza es: %4.9f\n', Ex6);
            case 4
                 disp('Varianza matematica')
                 
                 Varx6 = 1 / c^(2);
                 
                 fprintf('El valor de la varianza es: %4.9f\n', Varx6);
            otherwise 
                disp('Su eleccion no esta dentro del rango de valores permitidos.')
        end
    case 7
        disp('Distribucion Normal: Administracion de tiempo.')
        
        media = input('Introduzca el valor para la media: ');
        x71 = input('Introduzca un valor para x superior: ');
        x72 = input('Introduzca un valor para x inferior: ');
        desv = input('Introduzca el valor de la desviacion estandar: ');
        
        disp('1) Funcion de densidad probabilistica.')
        disp('2) Funcion de distribucion acumulativa')
        disp('3) Esperanza matematica')
        disp('4) Varianza matematica')
        selector7 = input('Selecciona el metodo: ');
        switch selector7
            case 1
                disp('Funcion de densidad probabilistica')
               
                x70 = input('Introduzca el valor de x: ');
                
                %En el caso de que el usuario le de un valor a x fuera del
                %intervalo.
                if (x72 <= x70) && (x70 <= x71)
                    %Se caclula el error funcion para cada limite.
                    integral0 = @(x) exp( -(x.^2/2) );

                    z0 = abs((x72-media)/desv); %Error funcion de x deseada.

                    fx70 = (1/sqrt(2*pi) ) * integral(integral0 ,0, z0); %Probabilidad del valor deseado.

                    x7 = linspace(x72,x71);
                    fx7 = (1 / (sqrt(2*pi) * media ) ) * exp( - ((x7 - media) ./ (2*desv) ).^2 );

                    fprintf('El valor de la densidad es: %4.9f\n', fx70);
                    
                    %Para la elaboracion de la grafica.
                    figure(7)
                    hold on
                    plot(x7, fx7, ':gs',... %fill en lugar de plot.
                        'LineWidth',2,... %Grosor de linea.
                        'MarkerSize',8) %tama?o de las figuras.
                    hold off
                    title('Densidad probabilistica Normal.', 'FontSize',14)
                    xlabel('x', 'FontSize',12)
                    ylabel('fx(x)', 'FontSize',12)
                    grid on;
                else
                    fprintf('El valor deseado para x no esta dentro del intervalo de: %4.4f y %4.4f',x72, x71)
                    fprintf('Favor de rectificarlo.')
                end
            case 2
                disp('Funcion de distribucion acumulativa')
                
                %Se caclula el error funcion para cada limite.
                integral1 = @(x) exp( -(x.^2/2) );
                integral2 = @(x) exp( -(x.^2/2) );
                
                z1 = abs((x72-media)/desv); %Error funcion de limite inferior.
                z2 = abs((x71-media)/desv); %Error funcion de limite superior.
                
                z71 = (1/sqrt(2*pi) ) * integral(integral1 ,0, z1); %Probabilidad del error funcion de limite inferior.
                z72 = (1/sqrt(2*pi) ) * integral(integral2 ,0, z2); %Probabilidad del error funcion de limite superior.
                
                Fx7 = z71 + z72; %Probabilidad total.
                
                %Mostrar valores al usuario.
                fprintf('El valor del error funcion de: %4.9f es: %4.9f\n',z1 ,z71);
                fprintf('El valor del error funcion de: %4.9f es: %4.9f\n',z2 ,z72);
                fprintf('El valor de la probabilidad es: %4.9f\n', Fx7);
                
                %Se inicia con la grafica.
                x73 = linspace(x72,x71);
                Fx7_0 = @(x) exp( -(x-media ./ 2*desv).^2 );
                Fx7_1 = (1 / (sqrt(2*pi)*desv) ) * integral(Fx7_0, x72, x71);
                Fx7_2 = normcdf(x73, media, desv);
                %Fx7_3 = 1 / ( sqrt(2*pi)*desv ) * (sqrt(pi)*z72/2 - sqrt(pi)*z71/2);
                
                %Para la elaboracion de la grafica.
                figure(8)
                hold on
                plot(x73, Fx7_2, '-.m',...
                    'LineWidth',2,... %Grosor de linea
                    'MarkerSize',9) %tama?o de las figuras.
                hold off
                title('Distribucion acumulativa normal.', 'FontSize',14)
                xlabel('x', 'FontSize',12)
                txt = ['Rango: ',num2str(x71) '\leq x \leq', num2str(x72)];
                ylabel('Fx(x)', 'FontSize',12)
                grid on;
            case 3
                disp('Esperanza matematica')
                
                Ex7 = media ;
                
                fprintf('El valor de la esperanza es: %4.9f\n', Ex7);
            case 4
                 disp('Varianza matematica')
                 
                 Varx7 = (desv)^(2);
                 
                 fprintf('El valor de la varianza es: %4.9f\n', Varx7);
            otherwise 
                disp('Su eleccion no esta dentro del rango de valores permitidos.')
        end
    otherwise
        disp('Su eleccion no esta dentro del rango de valores permitidos.')
end

%Pagina para lo estetico.
%https://la.mathworks.com/help/matlab/ref/linespec.html
%https://la.mathworks.com/help/matlab/ref/xlabel.html