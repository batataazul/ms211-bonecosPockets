f = @(x,y) x + 1 -2*y;
N1 = 11;
N2 = 101;
ini = 1;
y1 = resolveEuler(N1,ini,f);
y2 = resolveEuler(N2,ini,f);
x1 = linspace(0,1,N1);
x2 = linspace(0,1,N2);
y3 = rugeKutaQ(N1,ini,f);
y4 = rugeKutaQ(N2,ini,f);
Y = @(x) (1/4)*(3 * exp(-2 * x) + 2 * x + 1);
X = linspace(0,1,201);
plot(X,Y(X),'k;Referência;',x1,y1,'x--;Euler h = 0,1;',
x2,y2,'o--;Euler h = 0,01;',x1,y3,'h--;Runge Kutta h = 0,1;'
,x2,y4,'s--;Runge Kutta h = 0,01;');

