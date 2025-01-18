function suma = digit_sum(x)
%sumar todos los elementos de x
if x < 10
    % si x ya es un solo digito, el resultado es x
    suma = x;
else
    %sino, suma es la suma de la parte sin el ultimo
    %digito mas el ultimo digito.
    suma = digit_sum(fix(x/10)) + mod(x,10);
end
end

