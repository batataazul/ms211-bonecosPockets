# Exercício 1
n = 1000;
A = rand(n,n);
H = hilb(n);
[La,Ua,Pa] = lu(A);
[Lh,Uh,Ph] = lu(H);

disp(norm(Pa*A - La*Ua));
disp(norm(Ph*H - Lh*Uh));
