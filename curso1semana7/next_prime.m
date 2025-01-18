function k = next_prime(n)
i = n+1;
while isprime(i) == false
    i = i+1;
end
k=i;