%Bora KI� 09.10.2019 3.2. CWT of a fractal signal
clc
close all
clear all

load vonkoch 
vonkoch = vonkoch(1:510); % 1 ila 510 aras�nda �rnekleme say�s�
cwl = cwt(vonkoch,1:128,'coif3','plot');%1 ila 128 �rnekler aras� CWT analizi
title('Continuous Transform, absolute coefficients.') %S�rekli Transform ve Mutlak Katsay�lar
ylabel('Scale')
[cwl,sc] = cwt(vonkoch,1:128,'coif3','scal'); %1 ila 128 �rnekler aras� CWT analizi
title('Scalogram')
ylabel('Scale')