% Selection:
% Es una forma de cambiar el orden en que 
% matlab hace las operaciones.

%if:
x = 20;
if x == 2
    fprintf('congrats')
elseif x>5
    fprintf('nel perro, muy alto')
else
    fprintf('nel')
end


5==5
%los logicos siempre dan 1 (true)
%o 0 (false) y podemos operar con estos 1,0
%sin ningun problema
% 0 es false y todo valor distinto de 0
% es true

[4 5 6 7] .* [4 -1 5 5]
[4 5 6 7] > [4 -1 5 5]
[8 9 0 0] >= 4

sum([4 4 5 4 9 0] == 4)

%operadores 
1 && 1
0 || 1
~5


%operadores entre vectores
[1 3 0 9] & [0 1 0 1]
