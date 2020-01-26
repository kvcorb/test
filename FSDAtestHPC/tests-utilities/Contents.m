% TESTS-UTILITIES
%
% File names, description, category and date last modified
%
%   Name                            - Description                                                               - Category- Date last modified
%------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%   testbasicPower_1of2             - Transform all columns of matrix Y according to the values of la using     - - 2020 Jan 26
%   testbasicPower_2of2             - Transform all columns of matrix Y according to the values of la           - - 2020 Jan 26
%   testbc_1of1                     -                                                                           - - 2020 Jan 26
%   testbwe_1of3                    - The normal probability density function                                   - - 2020 Jan 26
%   testbwe_2of3                    - The normal probability density function                                   - - 2020 Jan 26
%   testbwe_3of3                    - Some jittering to avoid dplicate points                                   - - 2020 Jan 26
%   testcabc_1of2                   - Now highlight a figure and then digit                                     - - 2020 Jan 26
%   testcabc_2of2                   -                                                                           - - 2020 Jan 26
%   testcascade_1of1                -                                                                           - - 2020 Jan 26
%   testclickableMultiLegend_1of2   - Legend(hlegend,'off');                                                    - - 2020 Jan 26
%   testclickableMultiLegend_2of2   - Simulate X                                                                - - 2020 Jan 26
%   testClusterRelabel_1of2         - A small number of subsamples just to show whow the procedure works        - - 2020 Jan 26
%   testClusterRelabel_2of2         - Make sure that group which contains                                       - - 2020 Jan 26
%   testcombsFS_1of1                -                                                                           - - 2020 Jan 26
%   testctsub_1of3                  - Y(50:70)=-5;                                                              - - 2020 Jan 26
%   testctsub_2of3                  - If the third argument of ctsub is equal to the first                      - - 2020 Jan 26
%   testctsub_3of3                  - The variance of y depends on x                                            - - 2020 Jan 26
%   testellipse_1of5                -                                                                           - - 2020 Jan 26
%   testellipse_2of5                -                                                                           - - 2020 Jan 26
%   testellipse_3of5                -                                                                           - - 2020 Jan 26
%   testellipse_4of5                - For reproducibility                                                       - - 2020 Jan 26
%   testellipse_5of5                - Generate 1000 bivariate normal data and add the ellipse which             - - 2020 Jan 26
%   testexactcdf_1of3               -                                                                           - - 2020 Jan 26
%   testexactcdf_2of3               - Compute empirical cdf for each element of vector x                        - - 2020 Jan 26
%   testexactcdf_3of3               - Compute empirical cdf for each of element of vector x                     - - 2020 Jan 26
%   testexistFS_1of1                -                                                                           - - 2020 Jan 26
%   testfindDir_1of4                -                                                                           - - 2020 Jan 26
%   testfindDir_2of4                -                                                                           - - 2020 Jan 26
%   testfindDir_3of4                -                                                                           - - 2020 Jan 26
%   testfindDir_4of4                -                                                                           - - 2020 Jan 26
%   testfindFile_1of4               - Extract the directory containing findFile.m                               - - 2020 Jan 26
%   testfindFile_2of4               - Extract the root directory of FSDA                                        - - 2020 Jan 26
%   testfindFile_3of4               - Extract the root directory of FSDA                                        - - 2020 Jan 26
%   testfindFile_4of4               -                                                                           - - 2020 Jan 26
%   testFowlkesMallowsIndex_1of6    - FowlkesMallowsIndex (adjusted) with the two vectors as input              - - 2020 Jan 26
%   testFowlkesMallowsIndex_2of6    -                                                                           - - 2020 Jan 26
%   testFowlkesMallowsIndex_3of6    - First partition c1 is the true partition                                  - - 2020 Jan 26
%   testFowlkesMallowsIndex_4of6    - First partition c1 is the true partition                                  - - 2020 Jan 26
%   testFowlkesMallowsIndex_5of6    -                                                                           - - 2020 Jan 26
%   testFowlkesMallowsIndex_6of6    - Produce agglomerative hierarchical cluster tree                           - - 2020 Jan 26
%   testFSMbonfbound_1of3           -                                                                           - - 2020 Jan 26
%   testFSMbonfbound_2of3           -                                                                           - - 2020 Jan 26
%   testFSMbonfbound_3of3           -                                                                           - - 2020 Jan 26
%   testFSRbonfbound_1of2           -                                                                           - - 2020 Jan 26
%   testFSRbonfbound_2of2           -                                                                           - - 2020 Jan 26
%   testGYfilt_1of2                 -                                                                           - - 2020 Jan 26
%   testGYfilt_2of2                 -                                                                           - - 2020 Jan 26
%   testHAbdp_1of2                  -                                                                           - - 2020 Jan 26
%   testHAbdp_2of2                  -                                                                           - - 2020 Jan 26
%   testHAc_1of3                    - BDPEFF = matrix which will contain                                        - - 2020 Jan 26
%   testHAeff_1of2                  -                                                                           - - 2020 Jan 26
%   testHAeff_2of2                  -                                                                           - - 2020 Jan 26
%   testHApsi_1of1                  - Plot of psi function                                                      - - 2020 Jan 26
%   testHApsider_1of1               -                                                                           - - 2020 Jan 26
%   testHApsix_1of1                 -                                                                           - - 2020 Jan 26
%   testHArho_1of2                  -                                                                           - - 2020 Jan 26
%   testHArho_2of2                  - Hampel rho function using a redescending slope of -1/3                    - - 2020 Jan 26
%   testHAwei_1of1                  -                                                                           - - 2020 Jan 26
%   testhtmlwriteFS_1of3            - Note that this function uses routine strjoin and can be used just if      - - 2020 Jan 26
%   testhtmlwriteFS_2of3            - Note that this function uses routine strjoin and can be used just if      - - 2020 Jan 26
%   testHUeff_1of2                  -                                                                           - - 2020 Jan 26
%   testHUeff_2of2                  - Use exact formula for finding the value of c associated to a fixed        - - 2020 Jan 26
%   testHUpsi_1of1                  -                                                                           - - 2020 Jan 26
%   testHUpsider_1of1               -                                                                           - - 2020 Jan 26
%   testHUpsix_1of1                 - Plot of psi(x) function multiplied  by x                                  - - 2020 Jan 26
%   testHUrho_1of2                  -                                                                           - - 2020 Jan 26
%   testHUrho_2of2                  -                                                                           - - 2020 Jan 26
%   testHUwei_1of1                  -                                                                           - - 2020 Jan 26
%   testHYPbdp_1of6                 - In this case                                                              - - 2020 Jan 26
%   testHYPbdp_2of6                 -                                                                           - - 2020 Jan 26
%   testHYPc_1of6                   - BDPEFF = matrix which will contain                                        - - 2020 Jan 26
%   testHYPck_1of6                  -                                                                           - - 2020 Jan 26
%   testHYPeff_1of6                 - In this case                                                              - - 2020 Jan 26
%   testHYPk_1of6                   -                                                                           - - 2020 Jan 26
%   testHYPk_2of6                   -                                                                           - - 2020 Jan 26
%   testHYPk_3of6                   -                                                                           - - 2020 Jan 26
%   testHYPk_4of6                   -                                                                           - - 2020 Jan 26
%   testHYPk_5of6                   - BDPEFF = matrix which will contain                                        - - 2020 Jan 26
%   testHYPpsi_1of3                 - Plot of hyperbolic psi function                                           - - 2020 Jan 26
%   testHYPpsi_2of3                 -                                                                           - - 2020 Jan 26
%   testHYPpsi_3of3                 -                                                                           - - 2020 Jan 26
%   testHYPpsider_1of2              - Plot of derivative of hyperbolic psi function                             - - 2020 Jan 26
%   testHYPpsider_2of2              - 1st panel is Tukey biweight                                               - - 2020 Jan 26
%   testHYPpsix_1of1                - Plot of psi(x)*x for Hyperbolic estimator                                 - - 2020 Jan 26
%   testHYPrho_1of2                 - Plot of rho function for hyperbolic tangent estimator                     - - 2020 Jan 26
%   testHYPrho_2of2                 -                                                                           - - 2020 Jan 26
%   testHYPwei_1of1                 -                                                                           - - 2020 Jan 26
%   testinversegamcdf_1of2          -                                                                           - - 2020 Jan 26
%   testinversegamcdf_2of2          -                                                                           - - 2020 Jan 26
%   testinversegaminv_1of3          -                                                                           - - 2020 Jan 26
%   testinversegaminv_2of3          -                                                                           - - 2020 Jan 26
%   testinversegaminv_3of3          -                                                                           - - 2020 Jan 26
%   testinversegampdf_1of3          -                                                                           - - 2020 Jan 26
%   testinversegampdf_2of3          -                                                                           - - 2020 Jan 26
%   testinversegampdf_3of3          - A set of values for $\sigma^2$                                            - - 2020 Jan 26
%   testisfunction_1of2             -                                                                           - - 2020 Jan 26
%   testisfunction_2of2             -                                                                           - - 2020 Jan 26
%   testkdebiv_1of6                 - A filled contour plot obtained using colormap 'cmap' = 'summer'           - - 2020 Jan 26
%   testkdebiv_2of6                 - A filled contour plot with personalized colormap: note the last           - - 2020 Jan 26
%   testkdebiv_3of6                 -                                                                           - - 2020 Jan 26
%   testkdebiv_4of6                 -                                                                           - - 2020 Jan 26
%   testkdebiv_5of6                 -                                                                           - - 2020 Jan 26
%   testkdebiv_6of6                 -                                                                           - - 2020 Jan 26
%   testlexunrank_1of6              -                                                                           - - 2020 Jan 26
%   testlexunrank_2of6              -                                                                           - - 2020 Jan 26
%   testlexunrank_3of6              -                                                                           - - 2020 Jan 26
%   testlexunrank_4of6              - Number of p-combinations out of n                                         - - 2020 Jan 26
%   testlexunrank_5of6              - And to change from colex to lex, it is sufficient this                    - - 2020 Jan 26
%   testlexunrank_6of6              - This is without Pascal matrix                                             - - 2020 Jan 26
%   testlogmvnpdfFS_1of8            - 2.842e-14                                                                 - - 2020 Jan 26
%   testlogmvnpdfFS_6of8            - Enables to control the display of the error message on the cov matrix     - - 2020 Jan 26
%   testlogmvnpdfFS_7of8            - In this code computation time is based on tic toc combined with a series  - - 2020 Jan 26
%   testlogmvnpdfFS_8of8            - Nn = sample size                                                          - - 2020 Jan 26
%   testmahalFS_1of1                - Compute MD using as centroid the medians and shape matrix SIGMA           - - 2020 Jan 26
%   testmakecontentsfileFS_1of4     -                                                                           - - 2020 Jan 26
%   testmakecontentsfileFS_2of4     -                                                                           - - 2020 Jan 26
%   testmakecontentsfileFS_3of4     - Note that force is false and therefore just output cell is created        - - 2020 Jan 26
%   testmakecontentsfileFS_4of4     - Find full path of the main root where FSDA is installed                   - - 2020 Jan 26
%   testmpdp_1of4                   -                                                                           - - 2020 Jan 26
%   testmpdp_2of4                   -                                                                           - - 2020 Jan 26
%   testmpdp_3of4                   - Generate 10 numbers from Uniform                                          - - 2020 Jan 26
%   testmpdp_4of4                   - Generate 10 numbers from Uniform                                          - - 2020 Jan 26
%   testmreadFS_1of2                -                                                                           - - 2020 Jan 26
%   testmreadFS_2of2                -                                                                           - - 2020 Jan 26
%   testMscale_1of4                 - Kc = E(rho) = sup(rho)*bdp                                                - - 2020 Jan 26
%   testMscale_2of4                 - Kc = E(rho) = sup(rho)*bdp                                                - - 2020 Jan 26
%   testmtR_10of12                  - MATLAB SIDE:                                                              - - 2020 Jan 26
%   testmtR_11of12                  - MATLAB SIDE:                                                              - - 2020 Jan 26
%   testmtR_12of12                  - MATLAB SIDE:                                                              - - 2020 Jan 26
%   testmtR_1of12                   - R SIDE: display in the MATLAB command window                              - - 2020 Jan 26
%   testmtR_2of12                   - S %0.7f  ',m,rn)                                                          - - 2020 Jan 26
%   testmtR_3of12                   - S %0.7f  ',m,rn)                                                          - - 2020 Jan 26
%   testmtR_4of12                   - S %0.7f  ',m,rn)                                                          - - 2020 Jan 26
%   testmtR_5of12                   - S %0.7f   ',m,rn)                                                         - - 2020 Jan 26
%   testmtR_6of12                   - (runif(numRandomNumbers,3,7))                                             - - 2020 Jan 26
%   testmtR_7of12                   - Rnorm(numRandomNumbers,2,15)                                              - - 2020 Jan 26
%   testmtR_8of12                   - R SIDE: display in the MATLAB command window the command strings to       - - 2020 Jan 26
%   testmtR_9of12                   -                                                                           - - 2020 Jan 26
%   testnchoosekFS_1of1             - 5.2f times faster than nchoosek\n\n\n', t_nchoosek/t_nchoosekFS);         - - 2020 Jan 26
%   testncpci_1of5                  -                                                                           - - 2020 Jan 26
%   testncpci_2of5                  -                                                                           - - 2020 Jan 26
%   testncpci_3of5                  -                                                                           - - 2020 Jan 26
%   testncpci_4of5                  -                                                                           - - 2020 Jan 26
%   testncpci_5of5                  -                                                                           - - 2020 Jan 26
%   testncx2mixtcdf_1of3            -                                                                           - - 2020 Jan 26
%   testncx2mixtcdf_2of3            -                                                                           - - 2020 Jan 26
%   testncx2mixtcdf_3of3            -                                                                           - - 2020 Jan 26
%   testnormBoxCox_1of3             -                                                                           - - 2020 Jan 26
%   testnormBoxCox_2of3             - Transform all columns of matrix Y according to the values of la           - - 2020 Jan 26
%   testnormBoxCox_3of3             - Transform all columns of matrix Y according to the values of la           - - 2020 Jan 26
%   testnormYJ_1of3                 -                                                                           - - 2020 Jan 26
%   testnormYJ_2of3                 -                                                                           - - 2020 Jan 26
%   testnormYJ_3of3                 - Transform all columns of matrix Y according to the values of la           - - 2020 Jan 26
%   testopenMatlabFileFromHTML_1of2 - OpenMatlabFileFromHTML with all default options                           - - 2020 Jan 26
%   testopenMatlabFileFromHTML_2of2 -                                                                           - - 2020 Jan 26
%   testOPTbdp_1of1                 -                                                                           - - 2020 Jan 26
%   testOPTc_1of4                   - Breakdown vs efficiency                                                   - - 2020 Jan 26
%   testOPTeff_1of2                 -                                                                           - - 2020 Jan 26
%   testOPTeff_2of2                 -                                                                           - - 2020 Jan 26
%   testOPTpsi_1of1                 -                                                                           - - 2020 Jan 26
%   testOPTpsider_1of1              -                                                                           - - 2020 Jan 26
%   testOPTpsix_1of1                -                                                                           - - 2020 Jan 26
%   testOPTrho_1of1                 -                                                                           - - 2020 Jan 26
%   testOPTwei_1of1                 -                                                                           - - 2020 Jan 26
%   testPoolClose_1of1              - Sequential run                                                            - - 2020 Jan 26
%   testPoolPrepare_1of5            - Sequential run                                                            - - 2020 Jan 26
%   testPoolPrepare_2of5            - Sequential run                                                            - - 2020 Jan 26
%   testPoolPrepare_3of5            - Sequential run                                                            - - 2020 Jan 26
%   testPoolPrepare_4of5            - Sequential run                                                            - - 2020 Jan 26
%   testPoolPrepare_5of5            - Sequential run                                                            - - 2020 Jan 26
%   testposition_1of2               -                                                                           - - 2020 Jan 26
%   testposition_2of2               -                                                                           - - 2020 Jan 26
%   testPowertra_1of4               -                                                                           - - 2020 Jan 26
%   testPowertra_2of4               -                                                                           - - 2020 Jan 26
%   testPowertra_3of4               - Transform all columns of matrix Y according to the values of la using     - - 2020 Jan 26
%   testPowertra_4of4               - Transform all columns of matrix Y according to the values of la           - - 2020 Jan 26
%   testpublishBibliography_1of3    - Create the requested input arguments                                      - - 2020 Jan 26
%   testpublishBibliography_2of3    - We assume that path outputPath exist and that inside this path there      - - 2020 Jan 26
%   testpublishBibliography_3of3    - In this case output Citations contains the list of the citations          - - 2020 Jan 26
%   testpublishFS_1of4              -                                                                           - - 2020 Jan 26
%   testpublishFS_2of4              -                                                                           - - 2020 Jan 26
%   testpublishFS_3of4              -                                                                           - - 2020 Jan 26
%   testpublishFS_4of4              - Please note that C:\rosa, C:\rosa\tmp and C:\rosa\images should be        - - 2020 Jan 26
%   testpublishFunctionAlpha_1of2   - FScategory','force',false);                                               - - 2020 Jan 26
%   testpublishFunctionAlpha_2of2   - Create contents file for each .m file                                     - - 2020 Jan 26
%   testQn_1of1                     -                                                                           - - 2020 Jan 26
%   testquickselectFS_1of3          - Check the result                                                          - - 2020 Jan 26
%   testquickselectFS_2of3          - Kiniindex is supplied                                                     - - 2020 Jan 26
%   testquickselectFS_3of3          - Kiniindex is supplied                                                     - - 2020 Jan 26
%   testRandIndexFS_1of5            -                                                                           - - 2020 Jan 26
%   testRandIndexFS_2of5            - RandindexFS with the two vectors as input                                 - - 2020 Jan 26
%   testRandIndexFS_3of5            -                                                                           - - 2020 Jan 26
%   testRandIndexFS_4of5            - First partition c1 is the true partition                                  - - 2020 Jan 26
%   testRandIndexFS_5of5            - First partition c1 is the true partition                                  - - 2020 Jan 26
%   testrandsampleFS_1of4           -                                                                           - - 2020 Jan 26
%   testrandsampleFS_2of4           -                                                                           - - 2020 Jan 26
%   testrandsampleFS_3of4           - Here, being nsel so big wrt nsamp, it is likely to obtain repetitions     - - 2020 Jan 26
%   testrandsampleFS_4of4           -                                                                           - - 2020 Jan 26
%   testremoveExtraSpacesLF_1of2    - The input string is extracted from the head of the FSDA function tclust.m - - 2020 Jan 26
%   testremoveExtraSpacesLF_2of2    - Insert the file into fstring                                              - - 2020 Jan 26
%   testrepDupValWithMean_1of4      - Y is a vector containing any real number                                  - - 2020 Jan 26
%   testrepDupValWithMean_2of4      - Y is a vector containing any real number                                  - - 2020 Jan 26
%   testrepDupValWithMean_3of4      - Y is a vector containing any real number                                  - - 2020 Jan 26
%   testrepDupValWithMean_4of4      - At the end this file will be deleted                                      - - 2020 Jan 26
%   testRKbdp_1of3                  - Suppose the dimension is 3                                                - - 2020 Jan 26
%   testRKbdp_2of3                  -                                                                           - - 2020 Jan 26
%   testRKbdp_3of3                  -                                                                           - - 2020 Jan 26
%   testRKeff_1of3                  -                                                                           - - 2020 Jan 26
%   testRKeff_2of3                  -                                                                           - - 2020 Jan 26
%   testRKpsi_1of2                  - Find the values of c and M given bdp=0.4 and v=5 for ARP=0.01             - - 2020 Jan 26
%   testRKpsi_2of2                  - Number of variables v is fixed to 5                                       - - 2020 Jan 26
%   testRKpsider_1of2               - Find the values of c and M given bdp=0.4 and v=5 for ARP=0.01             - - 2020 Jan 26
%   testRKpsider_2of2               - Number of variables v is fixed to 5                                       - - 2020 Jan 26
%   testRKpsix_1of2                 - Find the values of c and M given bdp=0.4 and v=5 for ARP=0.01             - - 2020 Jan 26
%   testRKpsix_2of2                 - Number of variables v is fixed to 5                                       - - 2020 Jan 26
%   testRKrho_1of2                  - Find the values of c and M given bdp=0.4 and v=5 for ARP=0.01             - - 2020 Jan 26
%   testRKrho_2of2                  - Number of variables v is fixed to 5                                       - - 2020 Jan 26
%   testRKwei_1of2                  - Find the values of c and M given bdp=0.4 and v=5 for ARP=0.01             - - 2020 Jan 26
%   testRKwei_2of2                  - Number of variables v is fixed to 5                                       - - 2020 Jan 26
%   testrthin_1of2                  - Data density                                                              - - 2020 Jan 26
%   testrthin_2of2                  - Data density                                                              - - 2020 Jan 26
%   testshuffling_1of5              -                                                                           - - 2020 Jan 26
%   testshuffling_2of5              -                                                                           - - 2020 Jan 26
%   testshuffling_3of5              -                                                                           - - 2020 Jan 26
%   testshuffling_4of5              - REMARK: shuffling code is interpreted whereas randperm is compiled;       - - 2020 Jan 26
%   testshuffling_5of5              - Note that results can differ between MATLAB releases. See below           - - 2020 Jan 26
%   testSn_1of1                     -                                                                           - - 2020 Jan 26
%   testsubsets_1of9                -                                                                           - - 2020 Jan 26
%   testsubsets_2of9                -                                                                           - - 2020 Jan 26
%   testsubsets_3of9                -                                                                           - - 2020 Jan 26
%   testsubsets_4of9                -                                                                           - - 2020 Jan 26
%   testsubsets_5of9                -                                                                           - - 2020 Jan 26
%   testsubsets_6of9                - Parameters                                                                - - 2020 Jan 26
%   testsubsets_7of9                - Parameters                                                                - - 2020 Jan 26
%   testsubsets_8of9                -                                                                           - - 2020 Jan 26
%   testsubsets_9of9                - Parameters                                                                - - 2020 Jan 26
%   testsuplabel_1of5               - Add a common label on the x axis                                          - - 2020 Jan 26
%   testsuplabel_2of5               -                                                                           - - 2020 Jan 26
%   testsuplabel_3of5               - The three panels of the right have a common xlabel, ylabel and            - - 2020 Jan 26
%   testsuplabel_4of5               - Insert text 'any string' as x label                                       - - 2020 Jan 26
%   testsuplabel_5of5               -                                                                           - - 2020 Jan 26
%   testtabulateFS_1of2             -                                                                           - - 2020 Jan 26
%   testtabulateFS_2of2             - Reinitialize the random number generator to its startup                   - - 2020 Jan 26
%   testTBbdp_1of1                  -                                                                           - - 2020 Jan 26
%   testTBc_1of4                    -                                                                           - - 2020 Jan 26
%   testTBc_2of4                    -                                                                           - - 2020 Jan 26
%   testTBc_3of4                    -                                                                           - - 2020 Jan 26
%   testTBc_4of4                    -                                                                           - - 2020 Jan 26
%   testTBeff_1of3                  - For a fixed shape efficiency we have                                      - - 2020 Jan 26
%   testTBeff_2of3                  - Initialize the matrix which stores the values of c for the two            - - 2020 Jan 26
%   testTBpsi_1of1                  -                                                                           - - 2020 Jan 26
%   testTBpsider_1of1               -                                                                           - - 2020 Jan 26
%   testTBpsix_1of1                 -                                                                           - - 2020 Jan 26
%   testTBrho_1of2                  -                                                                           - - 2020 Jan 26
%   testTBrho_2of2                  -                                                                           - - 2020 Jan 26
%   testTBwei_1of3                  -                                                                           - - 2020 Jan 26
%   testTBwei_2of3                  -                                                                           - - 2020 Jan 26
%   testTBwei_3of3                  -                                                                           - - 2020 Jan 26
%   testtriu2vec_1of3               -                                                                           - - 2020 Jan 26
%   testtriu2vec_2of3               -                                                                           - - 2020 Jan 26
%   testtriu2vec_3of3               -                                                                           - - 2020 Jan 26
%   testupperfracpos_1of1           - Create two figures, rescale and position them                             - - 2020 Jan 26
%   testverLessThanFS_1of1          -                                                                           - - 2020 Jan 26
%   testvervaatrnd_1of5             -                                                                           - - 2020 Jan 26
%   testvervaatrnd_2of5             -                                                                           - - 2020 Jan 26
%   testvervaatrnd_3of5             - The superimposed normal kernel density is just for illustration:          - - 2020 Jan 26
%   testvervaatrnd_4of5             -                                                                           - - 2020 Jan 26
%   testvervaatrnd_5of5             - The superimposed normal kernel density is for illustration:               - - 2020 Jan 26
%   testvervaatsim_1of6             -                                                                           - - 2020 Jan 26
%   testvervaatsim_2of6             -                                                                           - - 2020 Jan 26
%   testvervaatsim_3of6             -                                                                           - - 2020 Jan 26
%   testvervaatsim_4of6             - The superimposed normal kernel density is just for illustration           - - 2020 Jan 26
%   testvervaatsim_5of6             -                                                                           - - 2020 Jan 26
%   testvervaatsim_6of6             - Set common parameters                                                     - - 2020 Jan 26
%   testvervaatxdf_1of5             -                                                                           - - 2020 Jan 26
%   testvervaatxdf_2of5             -                                                                           - - 2020 Jan 26
%   testvervaatxdf_3of5             -                                                                           - - 2020 Jan 26
%   testvervaatxdf_4of5             - Remove inf and nan                                                        - - 2020 Jan 26
%   testvervaatxdf_5of5             -                                                                           - - 2020 Jan 26
%   testwinsor_1of2                 - Contaminate 5th and 10th row of matrix X                                  - - 2020 Jan 26
%   testwinsor_2of2                 -                                                                           - - 2020 Jan 26
%   testWNChygepdf_1of1             - We have 500 balls in the urn                                              - - 2020 Jan 26
%   testwraptextFS_1of7             -                                                                           - - 2020 Jan 26
%   testwraptextFS_2of7             -                                                                           - - 2020 Jan 26
%   testwraptextFS_3of7             -                                                                           - - 2020 Jan 26
%   testwraptextFS_4of7             -                                                                           - - 2020 Jan 26
%   testwraptextFS_5of7             -                                                                           - - 2020 Jan 26
%   testwraptextFS_6of7             - The width of the text is 60 and starts in column 12                       - - 2020 Jan 26
%   testwraptextFS_7of7             - ';                                                                        - - 2020 Jan 26
%   testwthin_1of6                  - The dataset is bi-dimensional and contain two collinear groups with       - - 2020 Jan 26
%   testwthin_2of6                  - Thinning over the original bi-variate data                                - - 2020 Jan 26
%   testwthin_3of6                  - Thinning over the original bi-variate data                                - - 2020 Jan 26
%   testwthin_4of6                  - Thinning over the original bi-variate data                                - - 2020 Jan 26
%   testwthin_5of6                  - Some jittering is necessary because duplicated units are not treated      - - 2020 Jan 26
%   testwthin_6of6                  - Thinning over the predicted values                                        - - 2020 Jan 26
%   testxmlcreateFS_1of3            -                                                                           - - 2020 Jan 26
%   testzscoreFS_1of7               - Contaminated data                                                         - - 2020 Jan 26
%   testzscoreFS_2of7               -                                                                           - - 2020 Jan 26
%   testzscoreFS_3of7               - Contaminated data                                                         - - 2020 Jan 26
%   testzscoreFS_4of7               - Contaminated data                                                         - - 2020 Jan 26
%   testzscoreFS_5of7               -                                                                           - - 2020 Jan 26
%   testzscoreFS_6of7               - Contaminated data                                                         - - 2020 Jan 26
%   testzscoreFS_7of7               - Project the data using v vectors                                          - - 2020 Jan 26
