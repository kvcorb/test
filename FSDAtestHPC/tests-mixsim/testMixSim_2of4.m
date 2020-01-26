load tempfileWS
k=4;
v=5;
BarOmega=0.05;
out=MixSim(4,5,'BarOmega',BarOmega, 'MaxOmega',0.15)
% Check a posteriori the average overlap
disp('Posterior average overlap')
disp((sum(sum(out.OmegaMap))-k)/(0.5*k*(k-1)))
% Check a posteriori the maximum overlap
% Extract elements above the diagonal and sum them with the transpose
% of the elements below the diagonal. The maximum of all these numbers
% must be very close to the required maximum overlap
cand=triu(out.OmegaMap,1)+(tril(out.OmegaMap,-1))'
disp('Posterior average overlap')
max(cand(:))
close all
save tempfileWS