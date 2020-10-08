# Jesus quer transformar sua vida
format long;
A = input("Digite um número inteiro:\n");
f = @(x) x^2 - A;
g = @(x1,x2) (f(x2) - f(x1))/(x2-x1);
x1 = input("Digite o valor inicial:\n");
x2 = input("Digite o segundo valor inicial: \n");
erro = input("Digite o valor de erro: \n"); 
x2 = sec_loop(x1,x2,f,g,erro);
disp("x final:");
disp(x2);
disp("f(x) final: ");
disp(f(x2));