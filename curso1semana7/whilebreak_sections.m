%% Seccion 1

%% Ejemplo 1
% usar while
readings = randi(150,1,20);
ii = 1;
while ii < length(readings) && readings(ii) <= 100
    readings(ii) = 0;
    ii = ii+1;
end


%% Ejemplo 2
% usar break
readings = randi(105,1,20);
for ii = 1:length(readings)
    if readings(ii) > 100
        break;
    else
        readings(ii) = 0
    end
end


%% Ejemplo 3
readings = randi(105,1,20);
for ii = 1:length(readings)
    if readings(ii) > 100
        break;
    end
end
