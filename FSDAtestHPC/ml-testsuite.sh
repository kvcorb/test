#!/bin/sh
#SBATCH --job-name=matlab_parallel
#SBATCH --output=%x.o%j
#SBATCH --error=%x.e%j
#SBATCH --nodes=1
#SBATCH --tasks-per-node=4
#SBATCH --partition=bdw
#SBATCH --mem=16G
#SBATCH --time=0-6:10:02
# imposto l’account su cui addebitare l’uso
#SBATCH --account=G_ECON
# manda email
#SBATCH--mail-user=aldo.corbellini@unipr.it   --mail-type=BEGIN,END

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





