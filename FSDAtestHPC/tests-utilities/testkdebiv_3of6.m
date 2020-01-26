load tempfileWS
close all;
figure;
F4 = kdebiv(X,'contourtype','surf');
figure;
F5 = kdebiv(X,'cmap',summer,'contourtype','surf');
figure;
F6 = kdebiv(X,'contourtype','mesh');
figure;
F7 = kdebiv(X,'cmap',summer,'contourtype','mesh');
cascade;
close all
save tempfileWS