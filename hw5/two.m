A = ones(m)
b = [1;2;3;4]

solve = A'*b
right = A'*A
x = solve./right
