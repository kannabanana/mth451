A = [4 6 0;2 3 1;4 0 1]
[L,U,P] = lu(A)
b = [2;2;9]
d = P*b
y = L\d
x = U\y
rnorm = norm(A*x -b)
