%A = ones(m)
%b = [1;2;3;4]

%A = [1 1;-1 1;1 0]
%b = [1;1;1]

%A = [1;2]
%b = [3;4]

%A = [1;2;1]
%b = [1;1;1]

%A = [1 2 1]
%b = [1]
function x = minorm(A,b)
	solve = A'*b
	right = A'*A
	x = inv(right)*solve
end

