x = [1,2,10];
X = [0 1 -1; 2.5 pi 100];
y = [1;2;3];

size(x);


%El operador de Colon
%ve de 1 hasta 7 en pasos de 3
% si no se pone nada en medio, se entiende 
%que son pasos de a 1
p = 1:3:7  ;

%Para indexar se usan parentesis y es base1
p(2);

%para indexar matrices, primero va por ren
% y luego por columnas

X(1)

%subarrays
X(2,[1 3])

X([2,1,2],[3,1,1,2])

%para acceder al ultimo elemento, tenemos
X(end,end)
%podemos usarlo para imprimir renglones comp
X(1,1:end)

%podemos resumir 1:end poniendo solo :
X(:,1)








% Combinar Matrices
A1 = [1 1 1; 1 1 1];
A2 = [2 2 2; 2 2 2];
A3 = [3 3 3 ; 3 3 3];

[A1 A2 A3]
[A1 ; A2 ; A3] 

%transponer
G = A1';

%Se suman, multiplican *, restan, invierten
% como es de esperar (invertir con A^(-1))
%Se puede hacer un producto punto a punto
% con .*
% tambien hay division por termino con ./

X = [1,2; 3,4];
X^(-1)