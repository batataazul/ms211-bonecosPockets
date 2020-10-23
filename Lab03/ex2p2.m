#exercicio 2 - H
n = 100;
H = hilb(n);
# x = ones(n,1);
c = H*ones(n,1);
[Lh,Uh,Ph] = lu(H);
yh = triangInf(Lh,Ph,c,n);
xh = triangSup(Uh,yh,n);
disp(norm(c-(H*xh))/norm(xh));
disp(norm(ones(n,1)-xh)/norm(xh));