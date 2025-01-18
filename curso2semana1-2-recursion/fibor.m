function f = fibor(n)
% calcular los primeros n fibos

%si n es menor a 2, los elemeos son (1,1)
    if n <= 2
        f = ones(1,n);
    else
%sino, llamamos u al fibor anterior
% y a f le apendamos u y la suma de los anteriores.
        u = fibor(n-1);
        f = [u,sum(u(end-1:end))];
    end
end

