function res = sec_loop(x1,x2,f,g,erro)
  k = 0;
  while(abs(f(x2)) > erro)
    aux = x2;
    x2 = passo_sec(x1,x2,f,g);
    x1 = aux;
    k++;
    disp("Aproximação atual:");
    disp(x2);
  endwhile
  res = x2;
  disp("Número de passos:");
  disp(k);
endfunction
