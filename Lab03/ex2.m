# Exercício 2
n = 1000;
A = rand(n,n);
H = hilb(n);
x = ones(n,1);
b = A*x;
c = H*x;
[La,Ua,Pa] = lu(A);
[Lh,Uh,Ph] = lu(H);
ya = triangInf(La,Pa,b,n);
xa = triangSup(Ua,ya,n);
yh = triangInf(Lh,Ph,c,n);
xh = triangSup(Uh,yh,n);
disp(norm(b-A*xa)/norm(xa))
disp(norm(ones(n,1)-xa)/norm(xa));
disp(norm(c-H*xh)/norm(xh));
disp(norm(ones(n,1)-xh)/norm(xh));