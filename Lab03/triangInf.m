function Y = triangInf(L,P,B,n)
  Y = zeros(n,1);
  b = P*B;
  Y(1,1) = b(1,1)/L(1,1);
  for k = 2:n
    soma = b(k,1);
    j = k-1;
   while (j > 0) 
     soma = soma - L(k,j)*Y(j,1);
     j = j -1;
   endwhile
   Y(k,1) = soma/L(k,k);
  endfor
endfunction
