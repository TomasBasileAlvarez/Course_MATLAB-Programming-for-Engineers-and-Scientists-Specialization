%dado un vector v, sacar solo los elementos
%positivos de v y ponerlos en w

% solucion 1
v = randi([-5,5],10,1);

w = [];
jj = 0;
for ii =1:length(v)
    if v(ii) >= 0
        %esto es un append
        w = [w v(ii)];
    end
end
w

%solucion 2
%con logical indexing
w = v(v>=0)



%ejemplos con matrices
A = [1 2 3; 4 5 6]
A > 2
%B ya no es una matriz
B = A(A>2)
%siempre se va a convertir el indexing 
%en un column vector