load('fishery');
y=fishery.data(:,1);
bsbini=[97    77    12     2    26    95    10    60    94   135     7    61   114];
[Un,BB]=FSRtsbsb(y,bsbini);
close all
save tempfileWS