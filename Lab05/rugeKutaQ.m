function y = rugeKutaQ(N,ini,f)
  x = linspace(0,1,N);
  h = x(2) - x(1);
  y = zeros(N,1);
  y(1) = ini;
  for n = 1 : N-1
    #xm = (x(n) + x(n+1))/2;
    k1 = f(x(n),y(n));
    k2 = f(x(n) + h/2, y(n) + k1*(h/2));
    k3 = f(x(n) + h/2, y(n) + k2*(h/2));
    k4 = f(x(n) + h, y(n) + h*k3);
    y(n+1) = y(n) + (h/6)*(k1 + 2*k2 + 2*k3 + k3);
  endfor
endfunction
