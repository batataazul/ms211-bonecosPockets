function y = resolveEuler(N,ini,f)
  x = linspace(0,1,N);
  h = x(2) - x(1);
  y = zeros(N,1);
  y(1) = ini;
  for n = 1 : N-1
    k1 = f(x(n),y(n));
    k2 = f(x(n) + h, y(n) + h * k1);
    y(n+1) = y(n)+ (h/2) * (k1 + k2);
  endfor
endfunction
