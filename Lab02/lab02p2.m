# Jesus quer transformar sua vida
# arquivo: lab02p2.m
format long;
A = input("Digite um número inteiro:\n");
g = @(x1,x2) (f(x2,A) - f(x1,A))/(x2-x1);
x1 = input("Digite o valor inicial:\n");
x2 = input("Digite o segundo valor inicial: \n");
erro = input("Digite o valor de erro: \n"); 
x2 = sec_loop(x1,x2,A,g,erro);
disp("x final:");
disp(x2);
disp("f(x) final: ");
disp(f(x2,A));