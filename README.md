FPEvaOSS
---------------------------
Introduction

Soplex : the open source linear solver

Precimonious: the dynamic precision tool

Results: 

  1) the configuration files we produced for Soplex using Precimonious which contains: 286 Failed configuration files and 65 Valid configuration files;
  2) the final recommended configuration file for Soplex is "dd2_valid_soplex-2.0.1.linux.x86_64.gnu.opt.bc.json" which has 64 double precision types and 1 float precision type.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Steps to run FPEvaOSS and reproduce the results:

1. go to https://github.com/HGuo15/vagrant_precimonious and configure the "vagrant_precimonious" virtual machine following the instructions in Github

2. run the virtual machine using "vagrant up; vagrant ssh" 

3. delete the "precimonious" directory in your home directory using "rm -rf precimonious" 

4. Dowanload precimonious and soplex from this repository to your home directory

5. run the following commands to reproduce the results(this may take one hour to complete),
   
   "cd soplex/bin"
   "./run_preci.sh"
