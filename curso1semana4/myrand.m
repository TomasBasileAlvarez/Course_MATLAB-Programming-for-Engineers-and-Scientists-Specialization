function [a,s] = myrand(low,high)
a = low + rand(3,4)*(high-low);
s = sumallelements(a);


%sub funcion
%la usa la funcion principal del file
% pero no la pueden usar otros files por si sola

function suma = sumallelements(M)
global v
% convertimos en un vector con toda la matriz
v = M(:);
suma = sum(v);
