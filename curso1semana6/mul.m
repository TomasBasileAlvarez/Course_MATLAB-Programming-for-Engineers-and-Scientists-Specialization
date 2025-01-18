function [table,summa] = mul(n,m)
%creamos una funcion multimorfa
%que cambia segun el numero de outputs o inp

%si le damos un input, hace el otro igual
%nargin cuenta el numero de inputs
if nargin < 2
    m=n;
end

table = (1:n)' * (1:m);

%nargout cuenta el numero de outputs
if nargout == 2
    summa = sum(table(:));
end

