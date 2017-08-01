N=[5,10,20];
A = []
for c=1:length(N)
	n = N(c)
	x=([1:n]-0.5)/n; 	%row vector divide by n to keep it from 0-1
	y=x;			
	K = cos(pi*x.'*y)/n;	%cos(pi*x*y)divide by n to keep it from 0-1

	g = ((sin(pi.*x)./(pi.*x))+((cos(pi.*x)-1)./((pi.*x).^2)))
	g = g.'

	A = (eye(n)/100+K)
	ninv_inf = norm(A,inf)		%part d
	ninf = norm(inv(A),inf)
	cond = ninv_inf*ninf

	f = (eye(n)/100+K)\g;
	maxerr = max(abs(f-x.'))	%equ2
end



N=[5,10,20];
A = []
for c=1:length(N)
	n = N(c)
	x=([1:n]-0.5)/n; 	%row vector divide by n to keep it from 0-1
	y=x;			
	K = cos(pi*x.'*y)/n;	%cos(pi*x*y)divide by n to keep it from 0-1

	g = ((sin(pi.*x)./(pi.*x))+((cos(pi.*x)-1)./((pi.*x).^2)))
	h = g+x./100
	h = h.'
	
	A = (eye(n)/100+K)
	ninv_inf = norm(A,inf)		%part d
	ninf = norm(inv(A),inf)
	cond = ninv_inf*ninf


	f = (eye(n)/100+K)\h;
	maxerr = max(abs(f-x.'))	%equ2
end


