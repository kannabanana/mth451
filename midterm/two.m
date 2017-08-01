A = [1 1;power(10,-10) 0;0 power(10,-10)]
b = [-power(10,-10);1+power(10,-10);1-power(10,-10)]

solve = A'*b
right = A'*A
x = solve./right


[Q,R] = qr(A)
