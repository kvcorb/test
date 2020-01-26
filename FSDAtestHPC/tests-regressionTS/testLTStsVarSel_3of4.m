load tempfileWS
overmodel.ARp=3;
[out_model_2, out_reduced_2] = LTStsVarSel(out_sim.y,'model',overmodel,'thPval',thPval);
close all
save tempfileWS