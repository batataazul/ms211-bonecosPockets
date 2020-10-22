A = [2,3,1,1;4,7,4,3;4,7,6,4;6,9,9,8];
b = [3;6;4;3];
n = 4;
[L,U,P] = lu(A);
y = triangInf(L,P,b,n);
x = triangSup(U,y,n);
for i = 1:n 
  disp(x(i,1));
endfor
