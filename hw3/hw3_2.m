n=20;
x=([1:n]-0.5)/n; 	%row vector divide by n to keep it from 0-1
y=x;			
K = cos(pi*x.'*y)/n;	%cos(pi*x*y)divide by n to keep it from 0-1
h = ((sin(pi*x)/(pi*x))+((cos(pi*x)-1)/((x.^2)*(pi.^2))))+x/100
h = h.'
%h = ; %column vector 
f = (eye(n)/100+K)\h;
A = (eye(n)/100+K)
maxerr = max(abs(f-x.'))

