function x = recursive_max(v)
% calcular el maximo de v

%si v tiene un solo elemento, este es el max
if numel(v)<=1
    x = v;
else
    %sino, sea x el max de v(2:end)
    x = recursive_max(v(2:end));
    
    %si v(1) > x, el maximo es v(1)
    if v(1)>x
        x = v(1);
    end
end
end
