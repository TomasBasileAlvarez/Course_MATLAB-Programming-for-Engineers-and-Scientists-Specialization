zeros(5,6)
ones(4,2)
diag([7,3,9,1])
rand(3,4)

randi(10,5,4)
randi([5 10],2,7)

randn(5,2)
r = randn(1,1000000);
hist(r,100)

%rng es el seed de matlab para hacer random
rng(0)
rand(1,3)