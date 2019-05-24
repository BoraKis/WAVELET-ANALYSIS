%Bora KIÞ 09.10.2019 3.2. CWT of a fractal signal
clc
close all
clear all

load vonkoch 
vonkoch = vonkoch(1:510); % 1 ila 510 arasýnda örnekleme sayýsý
cwl = cwt(vonkoch,1:128,'coif3','plot');%1 ila 128 örnekler arasý CWT analizi
title('Continuous Transform, absolute coefficients.') %Sürekli Transform ve Mutlak Katsayýlar
ylabel('Scale')
[cwl,sc] = cwt(vonkoch,1:128,'coif3','scal'); %1 ila 128 örnekler arasý CWT analizi
title('Scalogram')
ylabel('Scale')