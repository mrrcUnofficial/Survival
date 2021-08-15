Unix and MacOS X
=================

The *run_example.sh* file, in the run\_example folder, contains a script to perform an examplifying simulation, using the approximate implementation of the MKM model.

In the *command line*, cd to the run\_example folder and type:  
`> ./run_example.sh` 

Two files will be created with the simulation results.

The script can be changed and modified to perform any kind of simulation supported, see the [User's Manual](https://github.com/batuff/Survival/tree/master/Documentation/Survival_USERS_MANUAL.pdf) for a full description of the software.


Windows
=================

USAGE: 

Model and Calculus settings:
     survival -model [string]
          Supported: "LEMI" - "LEMII" - "LEMIII" - "MKM" - "tMKM_Manganaro2017"
     survival -calculusType [string]
          Supported:
             "rapidLEM_Scholz2006" (compatible with LEMI, LEMII and LEMIII)
             "rapidLEM_Russo2011"  (compatible with LEMI, LEMII and LEMIII)
             "rapidMKM_Kase2008"    (compatible with MKM)
             "rapidMKM_Attili2013"    (compatible with MKM)
             "rapidMKM_Kase2008_corrected_beta"    (compatible with MKM)
             "rapidMKM_Attili2013_corrected_beta"    (compatible with MKM)
             "MonteCarlo"  (compatible with LEMI, LEMII, LEMIII, MKM and tMKM_Manganaro2017)
     survival -precision [double]
     survival -parallelismType [int]
          Supported:
             0: number of threads equal to the number of core
             1: parallelism disabled
             n: n threads
     survival -doses [double] ... [double]

Model Parameters:
   (MKM and tMKM)
     survival -MKM_alpha0 [double]
     survival -MKM_beta0  [double]
     survival -MKM_rNucleus [double]
     survival -MKM_rDomain  [double]
   (tMKM)
     survival -tMKM_timeConst [double]
   (LEMI, LEMII and LEMIII)
     survival -LEM_alpha0 [double]
     survival -LEM_beta0  [double]
     survival -LEM_rNucleus [double]
     survival -LEM_Dt       [double]

Cell and Radiation settings:
     survival -cellType [string]
     survival -trackMode  string]
          Supported: "histogram" - "random" 
   (Monoenergetic radiation)
     survival -ion  [string]
          Supported: from Z=1 to Z=10 (H, He, ..., Ne)
     survival -energies [double] ... [double]
          => Kinetic energies expressed in MeV. NOT compatible with "-lets" option.
     survival -lets [double] ... [double] (values in keV/um). NOT compatible with "-energies" option.
   (Spectrum)
     survival -spectrum_file [string] (The name of the file containing the spectrum definition - With absolute or relative path)
Fractionation Scheme:
     survival -nFraction [int]
     survival -timeSpacing [double]
     survival -fracDeliveryTime [double]

Output:
     survival -projectName [string]
     survival -output [string] ... [string]
          Supported: "LQ_pars", "meanValues" and "cellValues"
                     Choose "all" to enable all output types.

Help:
     survival --help   ==>   Display this hint.

