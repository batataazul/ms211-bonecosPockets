function x_res = passo_sec(x1,x2,A,g)
  x_res = x2 - f(x2,A)/g(x1,x2);
endfunction
