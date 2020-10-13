function x_res = passo_newton(x,A,f_linha)
  x_res = x - f(x,A)/f_linha(x);
endfunction

