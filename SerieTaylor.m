clear all
clc
syms x

fun=input('f(x): ');
f = inline(fun);
x1 = input('X(i): ');
x2 = input('X(i+1): ');
n = input('N?mero de Orden: ');
h = abs(x2 - x1);
v1 = f(x1);
v2 = f(x2);
et = abs((v2 - v1)/v2 * 100);
X(1,:) = [0 v1 0 et];
 for i=1:n
     X(i+1,1) = i;
 
     D = diff(fun,i);
     d1=inline(D);
     d=d1(x1);
     v1= v1+(d*((h^i)/factorial(i)));
     X(i+1,2) = v1;
 
     et=abs(((v2-v1)/v2)*100);
     X(i+1,4) = et;
 
     ea = abs((X(i+1,2)-X(i,2))/X(i,2)*100);
     X(i+1,3) = ea;
 
     if ea <=10^(-1)
        break
     end
 end
 
 X
 