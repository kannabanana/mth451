function v = driver(A)
%call part 2 on loop - three times
	v = []
	T = tridiag(A)
	[m,m] = size(T)
	v_ultimate = []

	for i=1:m-1
		[m,n] = size(T)
		[T,MVALUES] = wilkinson(T)
		v_ultimate = [v_ultimate MVALUES]
		v1 = T(m,m)
		v = [v v1]
		T = T(:,1:end-1)	%get rid of column
		T = T(1:end-1,:)	%get rid of row
	end
	v = [v T(1,1)]
end

