function [newA,MVALUES]  = wilkinson(A)
	MVALUES =[]
	[J,I] = size(A)
	m = A(J,J-1)
	u = A(J,J)
	fin = 10^-12
	while abs(m) > fin
		B = A-(u*eye(J))
		[Q,R] = qr(B)
		newA = (R*Q)+(u*eye(J))
		u = newA(J,J)
		m = newA(J,J-1)
		MVALUES = [MVALUES abs(m)]
	end
end
