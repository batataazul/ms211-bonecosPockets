function x_res = passo_sec(x1,x2,f,g)
  x_res = x2 - f(x2)/g(x1,x2);
endfunction
