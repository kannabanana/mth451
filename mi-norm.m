A = [1 2 1]
b = [1]
[U,E,V] = svd(A,'econ')
X = V*inv(E)*ctranspose(U)*b



A = [1;2;1]
b = [1;1;1]

[U,E,V] = svd(A,'econ')
X = V*inv(E)*ctranspose(U)*b
