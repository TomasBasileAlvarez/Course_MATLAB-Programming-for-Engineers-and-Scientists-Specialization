% dada una matriz que representa a una imagen
%creamos una nueva matriz con los promedios
%en cuadrados de radio  w, para blurearla

function output = blur(img,w)
%B es la imagen como matriz
B=double(img);
%m,n es el tamano
[m,n] = size(B);
%k es la long de la matriz que vamos a promediar
k=2*w+1;
for i = 1:m
    for j = 1:n
        %vamos iterando
        % calculamos los extremos del cuadrado
        p=i-fix(k/2);
        q=i+fix(k/2);
        r=j-fix(k/2);
        s=j+fix(k/2);
        %hay que asegurarnos que no nos pasemos
        if p<1
            p=1;
        end
        if q>m
            q=m;
        end
        if r<1
            r=1;
        end
        if s>n
            s=n;
        end
        %sacamos la submatriz 
        A=B([p:q],[r:s]);
        %el punto de la nueva matriz es el promedio
        C(i,j)=mean(A(:));
    end
end
output=uint8(C);
end