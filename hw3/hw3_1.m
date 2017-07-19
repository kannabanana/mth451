A = [1 0;99 1]
b = [1;1]
[U,E,V] = svd(A,'econ')
X1 = V*inv(E)*ctranspose(U)*b

n = norm(b,1)
b1 = [1/.99;1/.99]


A = [1 0;99 1]
[U,E,V] = svd(A,'econ')
X2 = V*inv(E)*ctranspose(U)*b1

X3 = X1-X2
n = norm(X3,1)
x1norm = norm(X1,1)
answer = n/x1norm
