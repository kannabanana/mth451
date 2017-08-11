function X = equal(m)
	A = ones(m)
	b = []
	for x=0:m-1
		b = [b;x]
	end


%SVD
	[U,E,V] = svd(A,'econ')
	E = E(1,1)
	X = V*inv(E)*ctranspose(U)*b
end
