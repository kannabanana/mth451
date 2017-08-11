function v = driver(A)
%call part 2 on loop - three times
	v = []
%	T = tridiag(A)
	T = hess(A)

	for i=1:3
		[m,n] = size(T)
		T = qralg(T)
		disp(T)
		v1 = T(m,m)
		disp(v1)
		v = [v v1]
		T = T(:,1:end-1)	%get rid of column
		T = T(1:end-1,:)	%get rid of row
	end
	v = [v T(1,1)]
end

