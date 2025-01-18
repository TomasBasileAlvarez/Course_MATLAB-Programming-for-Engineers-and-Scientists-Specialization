%funcino de saddle
%da los indices de los puntos de la matriz
% que son max en su row y min en su col.

function indices = saddle(M)
    % sacamos el max de cada renglon de M
    % y el minimo de cada columna
    row_max = max(M,[],2);
    col_min = min(M,[],1);
    
    [row,col]=find((M == row_max).*(M == col_min));
    
    if isempty(col) || isempty(row)
    indices=[]
else
    for i=1:length(row)
        indices(i,:)=[row(i),col(i)];
       
    end
    end
end 

function ejemplo()
% create an interesting surface
[X,Y] = meshgrid(-15:0.5:10,-10:0.5:10);
Z = (X.^2-Y.^2)';
% find saddle points
indices = saddle(Z)
% plot surface
surf(Z);
hold on
% mark saddle points with red dots in the same figure
for ii = 1:size(indices,1)
    h = scatter3(indices(ii,2),indices(ii,1),Z(indices(ii,1),indices(ii,2)),'red','filled');
    h.SizeData = 120;
end
% adjust viewpoint
view(-115,14);
hold off
end