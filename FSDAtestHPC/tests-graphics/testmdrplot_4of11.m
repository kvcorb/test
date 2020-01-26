load tempfileWS
clear tooltip
tooltip.SnapToDataVertex='on'
tooltip.DisplayStyle='datatip'
mdrplot(out,'datatooltip',tooltip);
close all
save tempfileWS