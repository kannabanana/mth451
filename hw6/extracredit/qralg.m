function Tnew = qralg(T)
	[J,I] = size(T)
	m = T(J,J-1)
	fin = 10^-12
	while abs(m) > fin
		[Q,R] = qr(T)
		T = R*Q
		m = T(J,I-1)
	end
	Tnew = T
end
