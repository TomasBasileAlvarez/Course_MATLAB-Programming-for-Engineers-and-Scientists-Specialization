function [a, b] = lin_reg(x,y)
    M = [x; ones(1,length(x))]';
    sol = M \ y';
    a = sol(1);
    b = sol(2);
end
%% plotarlo
v = rand(1,200) * 10 - 5;
x = v + randn(1,length(v)) / 2;
y = v + randn(1,length(v)) / 2;
[a b] = lin_reg(x,y)
plot(x,y,'.');
grid on
hold on
plot([-5 5],a*[-5 5]+b,'lineWidth',2);