function X = minorm(A,b)
	[U,E,V] = svd(A,'econ')
	X = V*inv(E)*ctranspose(U)*b
end
