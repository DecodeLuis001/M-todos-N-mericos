function [x iter]=Iteraciones(sistema, x0, tol, c, w)

x=sistema(x0)';
iter=x;
k=0;

while norm(x-x0)>tol && k<c 
	x0=x;
	x=(1-w)*x0+w*sistema(x0)';
	k=k+1;
	iter=[iter x];
end

if k>=c
	x='No converge';
end