function sierpinskiE(depth)
% sierpinski eficiente
s=1; c=[0;0]; % s= length side, c = center
%clf limpia el frame para poder graficar
%axis da las dimensiones del lugar donde graficaremos
clf; axis([c(1)-s/2,c(1)+s/2,c(2)-s/2,c(2)+s/2],'equal');
title(sprintf('Sierpinski con depth = %d',depth))
%hold on para dibujar varias veces en el mismo canvas
hold on;
plot(1/2*[-1,0,1,-1], sqrt(3)/4*[-1,1,-1,-1],'r--');
pts = sier(depth, s, c, []);
plot(pts(1,:), pts(2,:), 'k-');
hold off;
end

function pts = sier(d, s, c, pts)
if d ==0 %base case
    pts = [pts, c+[[-s,0,s,-s,nan]/2;sqrt(3)*[-s,s,-s,-s,nan]/4]];
else %recursive case
    s = s/2; % corta el tamano en 2
    h = s*sqrt(3)/2; % da la altura
    sier( d-1, s, c-[s;h]/2,pts ); %bottom left
    sier( d-1, s, c+[0;h]/2,pts ); %top middle
    sier( d-1, s, c+[s;-h]/2,pts ); %bottom right
end
end
