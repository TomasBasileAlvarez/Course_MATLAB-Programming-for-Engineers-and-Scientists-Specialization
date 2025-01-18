function out = palindrome(v)
%checar si la palabra v es un palindromo

%si tiene longitud 1, es un palindromo y acabamos
    if length(v) <= 1
        out = true;
        return
    end
%sino, si el inicial es disitno al final, paramos y es false
    if v(1) ~= v(end)
        out = false;
        return
    end
%luego, aplicamos el palindromo a los numeros internos
    out = palindrome(v(2:end-1));
end
