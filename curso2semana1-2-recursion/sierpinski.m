function sierpinski(depth)
s=1; c=[0;0]; % s= length side, c = center
%clf limpia el frame para poder graficar
%axis da las dimensiones del lugar donde graficaremos
clf; axis([c(1)-s/2,c(1)+s/2,c(2)-s/2,c(2)+s/2],'equal');
title(sprintf('Sierpinski con depth = %d',depth))
%hold on para dibujar varias veces en el mismo canvas
hold on;
sier(depth,s,c);
hold off;
end

function sier(d,s,c)
if d ==0 %base case
    plot(c(1)-[s,0,-s,s]/2,c(2)-[s,-s,s,s]*sqrt(3)/4,'k');
else %recursive case
    s = s/2; % corta el tamano en 2
    h = s*sqrt(3)/2; % da la altura
    sier( d-1, s, c-[s;h]/2 ); %bottom left
    sier( d-1, s, c+[0;h]/2 ); %top middle
    sier( d-1, s, c+[s;-h]/2 ); %bottom right
end
end

    
