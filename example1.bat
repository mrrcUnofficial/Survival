set path=%path%;F:\dev\Survival\gsl_build\bin\Release\

set DATA=F:\dev\Survival\Survival\data\

Survival.exe -projectName C_let10_tmePars1 -model tMKM_Manganaro2017 -calculusType MonteCarlo -precision 0.001 -parallelismType 1 -MKM_alpha0 0.13303 -MKM_beta0 0.0205 -MKM_rNucleus 6.0 -MKM_rDomain 0.220 -tMKM_timeConst 1.0e2 -cellType B14_150 -output all -ion C -lets 10.0 -nFraction 2 -fracDeliveryTime 0.7 -timeSpacing 44 -doses 0.3 1.0 2.6 3.0 6.0 9.0 14.0 18.0 20.0 26.0 30. 36.0
Survival.exe -projectName C_let10_tmePars2 -model tMKM_Manganaro2017 -calculusType MonteCarlo -precision 0.001 -parallelismType 1 -MKM_alpha0 0.13303 -MKM_beta0 0.0205 -MKM_rNucleus 6.0 -MKM_rDomain 0.220 -tMKM_timeConst 1.0e2 -cellType B14_150 -output all -ion C -lets 10.0 -nFraction 2 -fracDeliveryTime 0.7 -timeSpacing 24 -doses 0.3 1.0 2.6 3.0 6.0 9.0 14.0 18.0 20.0 26.0 30. 36.0

Survival.exe -projectName C_let10_parallel -model tMKM_Manganaro2017 -calculusType MonteCarlo -precision 0.001 -parallelismType 7 -MKM_alpha0 0.13303 -MKM_beta0 0.0205 -MKM_rNucleus 6.0 -MKM_rDomain 0.220 -tMKM_timeConst 1.0e2 -cellType B14_150 -output all -ion C -lets 10.0 -nFraction 2 -fracDeliveryTime 0.7 -timeSpacing 44 -doses 0.3 1.0 2.6 3.0 6.0 9.0 14.0 18.0 20.0 26.0 30. 36.0