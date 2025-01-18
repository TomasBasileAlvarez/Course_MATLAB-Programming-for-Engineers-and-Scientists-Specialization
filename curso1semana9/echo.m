%echo
% le crea un echo a una onda de sonido

%toma un sonido in, que es un column 
%vector con valores entre -1 y 1 (la intensidad)
%fs es el sampling rate, numero de samples por
% segundo. 
%el echo empieza tras delay seg
% y es amplificado por gain. 
function output = echo(in,fs,delay,gain)
samples = round(fs*delay) ;
ds = floor(samples);
signal = zeros(length(in)+ds,1);
signal(1:length(in))=in;
echo_signal =zeros(length(in)+ds,1);
echo_signal(ds+(1:length(in*gain)))=in*gain;
output= signal + echo_signal;
p= max(abs(output));
if p>1
output=output ./ p;
else
output = output;
end
end