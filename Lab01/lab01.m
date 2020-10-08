# Sou um lab feliz
# Jesus, nosso Senhor, te ama.
format long
S1 = single(1.0);
S2 = single(0.0);
k = single(1);
while(k < 1000)
  S2 = S1;
  S1 += 1/((k^2)*(k+1));
  k++;
  if (S1 == S2)
    break
   endif
endwhile
disp("Somatorio:");
disp(S1);
disp("Numero de iteracoes ate ficar igual:");
disp(k);
disp("pi^2/6:");
disp(pi^2/6);
#GO POCKETS!!!