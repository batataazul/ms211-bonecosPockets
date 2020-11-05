# Exercício 5 
n = 100;
A = rand(n,n);
I = eye(n);
[L,U,P] = lu(A);
B = (L*U\P*I);
D = inv(A);
disp(norm(B-D));