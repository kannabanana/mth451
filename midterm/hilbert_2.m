n = 8
H = hilb(n)
HI = invhilb(n)
x = randn(n,1)
b = H*x
x1 = H\b;
disp(x1)
x2 = HI*b
log10(cond(H))

n = 10
H = hilb(n)
HI = invhilb(n)
x = randn(n,1)
b = H*x
x1 = H\b;
disp(x1)
x2 = HI*b
log10(cond(H))


