function res = newton_loop(x,f,f_linha,erro)
  k = 0;
  while(abs(f(x)) > erro)
    x = passo_newton(x,f,f_linha);
    k++;
    disp("Aproximação atual:");
    disp(x);
  endwhile
  res = x;
  disp("Número de passos:");
  disp(k);
endfunction
