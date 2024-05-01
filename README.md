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
module load r/4.2.2
Rscript sfs_beta_fit.R  ## currently need to hard code input file and maf 
```





## Parameterizing the SFS from Will's empirical data

### all individuals
```{bash}
module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --freq2 --out afreqs_0.5_0.01_nosex
    ## After filtering, kept 576 out of 576 Individuals
    ## After filtering, kept 12045 out of a possible 12045 Sites

grep -v "CHROM" afreqs_0.5_0.01_nosex.frq > afreqs_0.5_0.01_nosex_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```

### only the downstream individuals
```{bash}
grep "Bighorn" sauger_emu_meta_groups.csv | cut -f 1 -d "," > downstream_inds.txt

module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --keep downstream_inds.txt --freq2 --out afreqs_0.5_0.01_nosex_downstream
    ## After filtering, kept 484 out of 576 Individuals
    ## After filtering, kept 12045 out of a possible 12045 Sites

grep -v "CHROM" afreqs_0.5_0.01_nosex_downstream.frq > afreqs_0.5_0.01_nosex_downstream_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```

### only the upstream individuals
```{bash}
grep "Wind\|Boysen" sauger_emu_meta_groups.csv | cut -f 1 -d "," > upstream_inds.txt

module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --keep upstream_inds.txt --freq2 --out afreqs_0.5_0.01_nosex_upstream
    ## After filtering, kept 92 out of 576 Individuals
    ## After filtering, kept 12045 out of a possible 12045 Sites

grep -v "CHROM" afreqs_0.5_0.01_nosex_upstream.frq > afreqs_0.5_0.01_nosex_upstream_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```

### only Wind River individuals
```{bash}
grep "Wind" sauger_emu_meta_groups.csv | cut -f 1 -d "," > wind_inds.txt

module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --keep wind_inds.txt --freq2 --out afreqs_0.5_0.01_nosex_wind
    ## After filtering, kept 61 out of 576 Individuals
    ## After filtering, kept 12045 out of a possible 12045 Sites

grep -v "CHROM" afreqs_0.5_0.01_nosex_wind.frq > afreqs_0.5_0.01_nosex_wind_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```

### only Boysen individuals
```{bash}
grep "Boysen" sauger_emu_meta_groups.csv | cut -f 1 -d "," > boysen_inds.txt

module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --keep boysen_inds.txt --freq2 --out afreqs_0.5_0.01_nosex_boysen
    ## After filtering, kept 31 out of 576 Individuals
    ## After filtering, kept 12045 out of a possible 12045 Sites

grep -v "CHROM" afreqs_0.5_0.01_nosex_boysen.frq > afreqs_0.5_0.01_nosex_boysen_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```




## Acknowledgments

* Funding for this work was provided by Wyoming Game and Fish.

* JPJ was supported by the Modelscape Consortium with funding from the National Science Foundation (OIA-2019528).

* Analyses were performed using University of Wyoming's Advanced Research Computing Center and its Beartooth Computing Environment, Intel x86.64 cluster [https://doi.org/10.15786/M2FY47](https://doi.org/10.15786/M2FY47)



