function d = rgdc(x,y)

if (~isscalar(x) || ~isscalar(y) || ...
        x ~= fix(x) || y~= fix(y) || ...
        x<0 || y<0)
    error('x,y tienen que ser enteros pos')
end
a = max([x,y]);
b = min([x,y]);

if b == 0
    d =a;
else
    d = rgdc(b,rem(a,b));
end
end


