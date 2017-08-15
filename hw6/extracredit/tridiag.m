function A0 = tridiag(A)
	[m,n] =size(A)
	column = 1
	for a=1:m-1
		v = A(a+column:m,column)
		n = norm(v)
		[e,f] = size(v)
		v1 = v+(n*eye(e,1))
		v2 = norm(v1)
		v1 = v1/v2
		S1 = 2*v1*v1'
		[j,k] = size(S1)
		S1 = eye(j,k)-S1
	
		b = zeros(1,m)
		c = zeros(m-1,1)
		S1 = [c S1]
		S1 = [b;S1]
		S1(a,a) = A(a,a)

		A = S1*A*S1
		column = column+2
	end
end
