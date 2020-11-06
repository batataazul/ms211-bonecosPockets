x = [4;-4;4];
f = @(x)  [x(1)^2 + x(2)^2 - x(3) ; x(1)^2/4 + x(2)^2/9 + x(3)^2-1 ; x(1) + x(2)];
k = 0;
f_aux = @(x) [2*x(1)^2 - x(3); (13*x(1)^2)/36 + x(3)^2-1];
while (norm(f(x),inf) > 10^-14)
  f1 = @(x1) 2*x1^2 - x(3);
  x(1) = fsolve(f1,x(1));
  f2 = @(x3) (13*x(1)^2)/36 + x3^2 - 1;
  x(3) = fsolve(f2,x(3));
  x(2) = -x(1);
  k++;
endwhile
disp(x);
disp(f(x));
disp(norm(f(x),inf));
disp(k);
