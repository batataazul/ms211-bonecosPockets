x = [4;-4;4];
f = @(x) [x(1)^2 + x(2)^2 - x(3) ; x(1) + x(2);  x(1)^2/4 + x(2)^2/9 + x(3)^2-1];
k = 0;
while (norm(f(x),inf) > 10^-14)
  f1 = @(x1) x1^2 + x(2)^2 - x(3); 
  x(1) = fsolve(f1,x(1));
  f2 = @(x2) x(1) + x2;
  x(2) = fsolve(f2,x(2));
  f3 = @(x3) (x(1)^2)/4 + (x(2)^2)/9 + x3^2 - 1;
  x(3) = fsolve(f3,x(3));
  k++;
endwhile
disp(x);
disp(f(x));
disp(norm(f(x),inf));
disp(k);