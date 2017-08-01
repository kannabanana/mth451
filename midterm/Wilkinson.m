n = 64
W = eye(n)+tril(-ones(n),-1)
W(:,n) = ones(n,1)
x = randn(n,1)
b = W*x
x1 = W\b
norm(x)
cond(W)
