total = 0 ;
for n = 1:5
    total = total +n;
end

fprintf('total es %d\n', total)



list = rand(1,5)
for x = list
    if x>0.5
        fprintf('Random number %f is large.\n', x)
    else
        fprintf('Random number %f is small.\n', x)
    end
end



fibo(12)