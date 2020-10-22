function X = triangSup(U,y,n)
  X = zeros(n,1);
  X(n,1) = y(n,1)/U(n,n);
  k = (n-1);
  while (k > 0)
    soma = y(k,1);
   for j = k+1:n 
     soma = soma - U(k,j)*X(j,1);
   endfor
   X(k,1) = soma/U(k,k);
   k = k - 1;
  endwhile
endfunction
