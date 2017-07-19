A = sym([1;2])
B = colspace(A)
disp B

C = sym([1,2])
D = null(C)
disp D


A = [3;6]
B = [1;2]
C = A./B
disp C

D = C*B
disp D
