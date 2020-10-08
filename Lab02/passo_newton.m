function x_res = passo_newton(x,f,f_linha)
  x_res = x - f(x)/f_linha(x);
endfunction
