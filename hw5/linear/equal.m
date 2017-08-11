m = 2
A = ones(m)
b = []
for x=1:m
	b = [b;x]
end
solve = A'*b
right = A'*A
x = inv(right)*solve
