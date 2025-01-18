function summa = halfsum(A)
[n,m] = size(A);
summa = 0;
for i = 1:n
    for j = i:m
        summa = summa + A(i,j);
    end
end
summa 
end

