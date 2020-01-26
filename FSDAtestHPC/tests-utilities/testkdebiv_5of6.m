load tempfileWS
close all;
figure
[F2,Xi2,bw2] = kdebiv(X,'cmap','gray','pdfmethod','fsda');
hold on
plot(X(:,1),X(:,2),'rx');
title('pdfmethod = fsda');
if ~verLessThan('matlab','9.0')
figure
[F3,Xi3,bw3] = kdebiv(X,'cmap','gray','pdfmethod','matlab');
hold on
plot(X(:,1),X(:,2),'rx')
title('pdfmethod = matalb');
figure
[F4,Xi4,bw4] = kdebiv(X,'cmap','gray','pdfmethod','histsmooth');
hold on
plot(X(:,1),X(:,2),'rx')
title('pdfmethod = histogram smoothing (remark: to be fixed)');
figure
[F5,Xi5,bw5] = kdebiv(X,'cmap','gray','pdfmethod','independence');
hold on
plot(X(:,1),X(:,2),'rx')
title('pdfmethod = independence');
else
disp('For this MATLAB release, only ''fsda'' option can be used' );
end
cascade;
close all
save tempfileWS