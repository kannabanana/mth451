function v = driver(A)
%call part 2 on loop - three times
	v = []
%	T = tridiag(A)
	T = hess(A)

	for i=1:4
		[m,n] = size(T)
		T = qralg(T)
		v1 = T(m,m)
		v = [v v1]
		A = A(:,1:end-1)	%get rid of column
		A = A(1:end-1,:)	%get rid of row
	end
end

