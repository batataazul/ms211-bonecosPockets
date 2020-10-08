# Jesus quer transformar sua vida
format long;
A = input("Digite um número inteiro:\n");
f = @(x) x^2 - A;
f_linha = @(x) 2*x;
x = input("Digite o valor inicial:\n");
erro = input("Digite o valor de erro: \n"); 
x = newton_loop(x,f,f_linha,erro);
disp("x final:");
disp(x);
disp("f(x) final: ");
disp(f(x));