function A = test(A)
	[m,n] = size(A)
	for k=1:m-2
		x = A(k+1:m,k)
		[a,b] = size(x)
		vk = norm(x)*eye(a,b)+x
		vk = vk/norm(vk)
		A(k+1:m,k:m) = A(k+1:m,k:m)-(2*vk*(vk'*A(k+1:m,k:m)))
		A(1:m,k+1:m) = A(1:m,k+1:m) - 2*(A(1:m,k+1:m)*vk)*vk'
	end
end
