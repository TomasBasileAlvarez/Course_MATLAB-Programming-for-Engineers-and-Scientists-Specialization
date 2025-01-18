function w=reversal(v)
%dado un array, devuelve su inverso

%sea s la longitud de v
s=length(v);

%si v tiene longitud 1, el resultado es el propio v
if s==1
    w=v;
else
    %sino, ponemos en el primer elemento de w a v(end)
    
    w(1,1)=v(end);
    
    % y luego, le quitamos el ultimo elemento de v
    v=v(1:end-1);
    
    %y hacemos w = w(1) + reversal(v)
    w=[w(1,1),reversal(v)];
end

