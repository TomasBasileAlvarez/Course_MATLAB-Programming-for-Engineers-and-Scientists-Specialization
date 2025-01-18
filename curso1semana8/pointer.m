% Cells


page{1} = 'adkjafsndf a;lsdkfna;sdkf';
page{2} = 'adfadsfasdfasdfasd fasdfa';
page{3} = 'dsafasdfasdfasd adsfasdf';
page{4} = 'asdfasdfasdfasdfasdfasdfasdf';
page{5} = 'asdfasdfasdfasdfasdfasdfasdfasdf';


fprintf('\n');
for ii = 1:length(page)
    fprintf('%s\n', page{ii});
end





p = cell(2,3);
p{2,1} = pi;
p{1,1} = int8(-17);
p{1,2} = 'pitote';
p{2,2} = 8;
p{2,3} = [2 4 ; 6 8 ; 10 12];
p{1,3} = sum(p{2,3});


%el cell solo guarda direcciones en la memoria
%pero en cada uno de estos lugares de la memoria
%guardamos lo que sea
%as'i, podemos guardar elementos de distintos
%tipos en un solo lugar p
%sin romper la reggla de que los arrays
%tienen que ser hoomogeneos.



