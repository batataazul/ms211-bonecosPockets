function res = newton_loop(x,A,f_linha,erro)
  k = 0;
  while(abs(f(x,A)) > erro)
    x = passo_newton(x,A,f_linha);
    k++;
    disp("Aproximação atual:");
    disp(x);
  endwhile
  res = x;
  disp("Número de passos:");
  disp(k);
endfunction
