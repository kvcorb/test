load tempfileWS
state=1000;
mtstream = RandStream('shr3cong','Seed',state);
%RandStream.setDefaultStream(mtstream);
RandStream.setGlobalStream(mtstream);
%defaultStream = RandStream.getDefaultStream();
defaultStream = RandStream.getGlobalStream();
reset(defaultStream)
% If you run this example in a version older than 7.9 replace the previous four lines with
% randn('state', 1000);
n=200;
p=3;
X=randn(n,p);
init=20;
nsimul=1000;
mdrStore=zeros(n-init,nsimul);
for j=1:nsimul
y=randn(n,1);
[out]=LXS(y,X,'nsamp',1000','msg',0);
mdr = FSRmdr(y,X,out.bs,'init',init);
mdrStore(:,j)=mdr(:,2);
end
% Sort rows of matrix mdrStore
mdrStore=sort(mdrStore,2);
% Create figure which compares empirical and theoretical forward envelopes
% for minimum deletion residual
figure;
hold('on');
quant=[0.01 0.5 0.99];
sel=round(nsimul*quant);
% Plot lines of empirical quantiles
line(mdr(:,1),mdrStore(:,sel),'LineStyle','--','Color','g');
% Plots lines of theoretical quantiles using order statistics
mdrT=FSRenvmdr(n,p+1,'init',init);
line(mdrT(:,1),mdrT(:,2:4),'LineStyle','-','Color','r');
xlabel('Subset size m');
close all
save tempfileWS