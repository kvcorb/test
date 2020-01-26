load tempfileWS
NameRows={'AEG' 'BOSCH' 'IGNIS'};
Capacity=[380; 500; 310];
Price=[700; 1800; 480];
Alarm={'Yes'; 'Yes'; 'No'};
Dispenser={'No'; 'Yes'; 'No'};
Display={'No'; 'Yes'; 'No'};
Certificate={'World';'World';'Europe'};
% Binary variable for which the corresponding value is 'yes' or 'Yes'
% is coded as 1 (presence)
Xtable=table(Capacity,Price,Alarm,Dispenser,Display,Certificate,'RowNames',NameRows);
[S,Stable]=GowerIndex(Xtable,'l',[ 1 1 2 2 2 3]);
disp('Matrix of Gower similarity indexes')
disp(Stable)
close all
save tempfileWS