#exercicio 2 - H
format short;
n = 1000;
H = hilb(n);
# x = ones(n,1);
c = H*ones(n,1);
[Lh,Uh,Ph] = lu(H);
yh = triangInf(Lh,Ph,c,n);
xh = triangSup(Uh,yh,n);
dete = dTriang(Uh,n);
dete2 = det(H);
disp(norm(c-(H*xh))/norm(xh));
disp(norm(ones(n,1)-xh)/norm(xh));
disp(dete);
disp(dete2);