load tempfileWS
X=[380	700	    1	0	0 3
500	1800	1	1	1 3
310	480	    0	0	0 2];
NameRows={'AEG' 'BOSCH' 'IGNIS'};
NameCols={'Capacity' 'Price' 'Alarm' 'Dispenser' 'Display' 'Certificate'}; 
Xtable=array2table(X,'RowNames',NameRows,'VariableNames',NameCols);
S=GowerIndex(Xtable,'l',[ 1 1 2 2 2 3]);
close all
save tempfileWS