function [v,v_ultimate] = driver(A)
%call part 2 on loop - three times
	v = []			%store eigenvalues
	T = tridiag(A)
	[m,n] = size(A)		
	v_ultimate = []		%store m values

	for i=1:m-1
		[m,n] = size(T)
		[T,MVALUES] = qralg(T)
		v_ultimate = [v_ultimate MVALUES]
		v1 = T(m,m)
		v = [v v1]
		T = T(:,1:end-1)	%get rid of column
		T = T(1:end-1,:)	%get rid of row
	end
	v = [v T(1,1)]
end

