load tempfileWS
if ~verLessThan('matlab','9.0')
tt = 0; tt2=0;
for i = 1 : 100
X1 = [0+.5*randn(150,1)   5+2.5*randn(150,1)];
X2 = [1.75+.25*randn(60,1) 8.75+1.25*randn(60,1)];
X = [X1 ; X2];
t = tic;
[F,Xi,bw] = kdebiv(X,'pdfmethod','fsda');
tt = tt+toc(t);
t2 = tic;
[F,Xi,bw] = ksdensity(X);
tt2 = tt2+toc(t2);
end
disp(['kdebiv    time = ' num2str(tt)] );
disp(['ksdensity time = ' num2str(tt2)] );
end
close all
save tempfileWS