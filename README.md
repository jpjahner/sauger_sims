# README

This repo stores code and output for a simulation exercise evaluating the power for detecting offspring using genetic parentage in a stocking context

Contact: Josh Jahner, jpjahner@gmail.com


## Slim models

* [trial00.slim](slim_trials/trial00.slim): simple scenario to test slim

* [trial01.slim](slim_trials/trial01.slim): added in more realistic genome structure



### Example launching a single model:

```{bash}
sbatch trial01_slurm.sh
```

### Example launching several models using a Perl wrapper:

```{bash}
perl slim_wrapper.pl
```




## Summarizing model outputs

### Plot the folded site frequency spectrum

```{bash}
module load arcc/1.0 gcc/12.2.0 r/4.2.2
Rscript genos2sfsHist.R
```

### Export allele frequencies from the vcf to parameterize the SFS

```{bash}
module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf popN_500_gen_50000.vcf --freq2
grep -v "CHROM" out.frq > out_noHead.frq    ## removes header
Rscript sfs_beta_fit.R  ## currently need to hard code input file and maf 
```



## Acknowledgments

* Funding for this work was provided by Wyoming Game and Fish.

* JPJ was supported by the Modelscape Consortium with funding from the National Science Foundation (OIA-2019528).

* Analyses were performed using University of Wyoming's Advanced Research Computing Center and its Beartooth Computing Environment, Intel x86.64 cluster [https://doi.org/10.15786/M2FY47](https://doi.org/10.15786/M2FY47)



