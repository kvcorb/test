load tempfileWS
close all;
n=8;
Y = randn(n,3);
group = ones(n,1); 
group(1:5) = 2; 
[H,AX,BigAx] = spmplot(Y,group);
% Create cell containing the name of the rows.
label={'ddf1' 'ddf2' 'ddf3' 'ddf4' 'ddf5' 'ddf6' 'ddf7' 'ddf8'};
% Labels are added to the units which belong to group 2 (that is to the
% first 5 units). The labels are taken from cell label
add2spm(H,AX,BigAx,'labeladd','1','RowNamesLabels',label);
close all
save tempfileWS