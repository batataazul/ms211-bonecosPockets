function dete = dTriang(A,n)
  dete = 1;
  for i = 1:n 
    dete = dete * A(i,i);
  endfor
endfunction
