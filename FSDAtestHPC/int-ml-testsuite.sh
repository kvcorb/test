#!/bin/sh

# Lancio MATLAB
module load matlab/R2019b

# esporto la variabile globale
export CATEGORY_TO_TEST=regression
# Lancio il file BATCH
matlab -batch "run runAllMyTestsFS.m" 

export CATEGORY_TO_TEST=regressionTS
matlab -batch "run runAllMyTestsFS.m" 

export CATEGORY_TO_TEST=regressionLTSts
matlab -batch "run runAllMyTestsFS.m" 

export CATEGORY_TO_TEST=multivariate-clustering
matlab -batch "run runAllMyTestsFS.m" 

export CATEGORY_TO_TEST=regression-clustering
matlab -batch "run runAllMyTestsFS.m" 

export CATEGORY_TO_TEST=mixsim
matlab -batch "run runAllMyTestsFS.m" 

export CATEGORY_TO_TEST=utilities
matlab -batch "run runAllMyTestsFS.m" 

export CATEGORY_TO_TEST=graphics
matlab -batch "run runAllMyTestsFS.m" 





