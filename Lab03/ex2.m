# Exercício 2 - A
format short;
n = 1000;
A = rand(n,n);
# x = ones(n,1);
b = A*ones(n,1);
[La,Ua,Pa] = lu(A);
ya = triangInf(La,Pa,b,n);
xa = triangSup(Ua,ya,n);
dete = dTriang(Ua,n);
dete2 = det(A);
disp(norm(b-(A*xa))/norm(xa));
disp(norm(ones(n,1)-xa)/norm(xa));
disp(dete);
disp(dete2);