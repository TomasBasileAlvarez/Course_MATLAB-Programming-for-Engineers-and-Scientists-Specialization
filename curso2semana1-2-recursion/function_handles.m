%creamos un fucntion handle de sin
trig = @sin;

trig(pi/2)
fplot(@sin , [0,10])

%funcion anonima
poly = @(x) 2*x.^3 - x.^2 + x + 1;
poly(4)
xfn = @(x,y) x+y;
xfn(10,22)