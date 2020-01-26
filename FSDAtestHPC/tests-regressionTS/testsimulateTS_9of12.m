load tempfileWS
StartDate=[2016 2];
% The x axis of the plots contains the dates using format mmm-yyyy
out=simulateTS(T,'model',model,'plots',1,'StartDate',StartDate);
close all
save tempfileWS