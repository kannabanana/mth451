function [Tnew,MVALUES] = qralg(T)
	MVALUES = []
	[J,I] = size(T)
	m = T(J,J-1)
	fin = 10^-12
	while abs(m) > fin
		[Q,R] = qr(T)
		T = R*Q
		m = T(J,I-1)
		MVALUES = [MVALUES abs(m)]
	end
	Tnew = T

	%MVALUES = m
end
