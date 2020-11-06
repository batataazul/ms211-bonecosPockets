# exercício 1 e 2
f = @(x)  [x(1)^2 + x(2)^2 - x(3) ; x(1)^2/4 + x(2)^2/9 + x(3)^2-1 ; x(1) + x(2)];
J = @(x)  [2*x(1),2*x(2),-1;x(1)/2,(2*x(2))/9 ,2*x(3); 1,1,0];
x = [4;-4;4];
k = 0;
while (norm(f(x),inf) > 10^-14)
   s = J(x) \ (-f(x));
  x = s + x;
  k++;
endwhile
disp(x);
disp(norm(f(x),inf));
disp(k);
fsolve(f,x)