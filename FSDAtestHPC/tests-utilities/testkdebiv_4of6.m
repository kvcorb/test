load tempfileWS
[F,Xi,bw]      = kdebiv(X,'pdfmethod','fsda');
disp(['fsda: estimated bandwidth over x axis is ' num2str(bw(1))]);
disp(['fsda: estimated bandwidth over y axis is ' num2str(bw(2))]);
if ~verLessThan('matlab','9.0')
[F2,Xi2,bw2] = kdebiv(X,'pdfmethod','matlab');
disp(['matlab (ksdensity): estimated bandwidth over x axis is ' num2str(bw2(1))]);
disp(['matlab (ksdensity): estimated bandwidth over y axis is ' num2str(bw2(2))]);
end
close all
save tempfileWS