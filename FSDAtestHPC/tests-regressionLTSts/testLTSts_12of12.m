load tempfileWS
%% Examples 4 and 5 used in the paper RPRH: trade data.
close all; clear all;
% the datasets
load('P12119085');
load('P17049075');
Y4 = P12119085.data;
Y5 = P17049075.data;
% the model
model           = struct;
model.trend     = 1;
model.seasonal  = 102;
model.s         = 12;
model.lshift    = 13;
% LTSts
out4 = LTSts(Y4,'model',model,'plots',0,'dispresults',true);
out5 = LTSts(Y5,'model',model,'plots',0,'dispresults',true);
% the wedgeplot with the time series and the detected outliers and
% level shift
wedgeplot(out4,'extradata',Y4,'titl','P12119085, imports of plants from KN to UK');
wedgeplot(out5,'extradata',Y5,'titl','P17049075, imports of sugars from UA to LT');
% Forecasts with a 99.9 per cent confidence level
nfore=10;
outfore4 = forecastTS(out4,'model',model,'nfore',nfore,'conflev',0.999,'titl','LTSts forecast for P12119085, imports of plants from KN to UK');
outfore5 = forecastTS(out5,'model',model,'nfore',nfore,'conflev',0.999,'titl','LTSts forecast for P17049075, imports of sugars from UA to LT');
% Comparing with FS (needs conflev option)
outLTS4 = LTSts(Y4,'model',model,'plots',1,'conflev',0.99);
title(findobj(gcf,'Tag','LTSts:ts'),'P12119085, LTS with conflev=0.99');
outFRS4 = FSRts(Y4,'model',model,'plots',1);
title(findobj(gcf,'Tag','FSRts:ts'),'P12119085, FS with default conflev');
outLTS5 = LTSts(Y5,'model',model,'plots',1,'conflev',0.99);
title(findobj(gcf,'Tag','LTSts:ts'),'P17049075, LTS with conflev=0.99');
outFRS5 = FSRts(Y5,'model',model,'plots',1);
title(findobj(gcf,'Tag','FSRts:ts'),'P17049075, FS with default conflev');
close all
save tempfileWS