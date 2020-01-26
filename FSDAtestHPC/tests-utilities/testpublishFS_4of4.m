load tempfileWS
% please note that C:\rosa, C:\rosa\tmp and C:\rosa\images should be
% created manually by the user
out=publishFS('FSR','evalCode',true,'Display','iter-detailed','webhelp',true,'outputDir','c:\rosa','imagesDir','c:\rosa\images')
close all
save tempfileWS